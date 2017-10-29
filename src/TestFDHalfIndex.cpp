#include "TestCommon.h"
#include "Fdsf.h"

BmpVector calculate_series_part(bmp_real k, BmpVector& X) {
    using namespace fdsf;
    BmpVector coeff_A = { pow(PI, 2) / 6.0,
        pow(PI, 4) / 90.0,
        pow(PI, 6) / 945.0,
        pow(PI, 8) / 9450.0,
        pow(PI, 10) / 93555.0,
        691.0 * pow(PI, 12) / 638512875.0
    };

    BmpVector series_value;

    for (size_t i = 0; i < X.size(); i++) {
        bmp_real coeff_C = 1;
        bmp_real nom = k + 1;
        bmp_real series_sum = bmp_real(1.0);
        for (size_t j = 0; j < coeff_A.size(); j++) {
            coeff_C *= nom*(nom - 1); // �� ��������������� ������� ������ ���������� ����������, ������� ����� �������� 2
            series_sum += 2.0 * (1.0 - pow(2.0, 1.0 - 2 * (j + 1))) * pow(X[i], (-2.0)*(j + 1))*coeff_A[j] * coeff_C;
            //std::cout << "A(j) = " << coeff_A[j] << ": series_sum = " << series_sum << std::endl;
            std::cout << "C(" << j + 1 << ") = " << 2.0 * (1.0 - pow(2.0, 1.0 - 2 * (j + 1))) * coeff_A[j] * coeff_C << std::endl;
            nom -= 2;
        }
        series_sum *= pow(X[i], k + 1) / (k + 1);
        series_value.push_back(series_sum);
    }

    std::cout << PI*PI*PI*PI*PI*PI / 945.0 << std::endl;

    return series_value;
}

static bmp_real get_assympt_value(bmp_real x, bmp_real k) {
    BmpVector I_minus, I, series_part, X = { x };
    bmp_real t = 0, a = 0;
    series_part = calculate_series_part(k, X);
    I_minus.push_back(fdsf::richardson_method(-x, t, k, a));
    I.push_back(I_minus[0] + series_part[0]);
    //return I[0];
    return series_part[0];
}

static bmp_real get_series_value(bmp_real x, bmp_real k) {
    bmp_real series_value = 0;
    auto N = log(fdsf::epsilon) / (x);

    for (size_t n = 1; n < N; ++n) {
        series_value += pow(-1.0, n - 1) * exp(n*x) / pow(n, k + 1);
        //std::cout << series_value << std::endl;
    }

    return fdsf::factorial(k)*series_value;
}
// TODO: split this function
void SetLinearTrigonometricGridRight(BmpVector &y_base,
                                     BmpVector &x_base,
                                     BmpVector &Y,
                                     BmpVector &X, size_t N_base) {
    using namespace fdsf;
    size_t n_additional = 11;
    const bmp_real alpha = 2 / (2 + PI);
    const bmp_real one = bmp_real(1);
    const bmp_real num2 = bmp_real(2); //if integer
    const bmp_real x_star = bmp_real(10);
    const bmp_real y_star = bmp_real(log(1 + exp(x_star))); // if half-integer
    //bmp_real baseSize = bmp_real(2 * N_base + 1); // if integer || half-integer & !fixed a(N+1)
    //bmp_real baseSize = bmp_real(2 * N_base ); // if half-integer & fixed a(N+1)
    bmp_real baseSize = bmp_real(N_base); // if poly approximation

    const bmp_real y_star_inv = 1 / (y_star * y_star);
    //const bmp_real y_star_inv = 1 / y_star;
    //const bmp_real y_star_inv = 1 / pow(y_star, 0.5);
    //const bmp_real y_star_inv = 1 / pow(y_star, 0.25 );
    //const bmp_real y_star_inv = 1 / pow(y_star, 3.0 / 2);

    // �������� ������� ���� ������������
    for (size_t j = 1; j <= baseSize; j++) {
        y_base.push_back(y_star_inv / num2*(num2 * alpha*j / baseSize
            + (one - alpha)*(one - cos(PI*j / baseSize))));
    }

    // �������� �������������� �����
    Y.push_back(y_base[0] / n_additional);

    for (size_t i = 1; i < n_additional; i++) {
        Y.push_back(Y[i - 1] + y_base[0] / n_additional);
    }

    for (size_t index = 1; index < y_base.size(); index++) {
        for (size_t i = 0; i < n_additional; i++) {
            Y.push_back(Y.back() + (y_base[index] - y_base[index - 1]) / n_additional);
        }
    }

    // ������������� y
    std::reverse(y_base.begin(), y_base.end());
    for (size_t j = 0; j < baseSize; j++) {
        y_base[j] = 1.0 / pow(y_base[j], 0.5);
        //y_base[j] = 1.0 / y_base[j];
        //y_base[j] = 1.0 / (y_base[j] * y_base[j]);
        //y_base[j] = 1.0 / (pow(y_base[j], 4));
        //y_base[j] = 1.0 / (pow(y_base[j], 2.0 / 3));
        x_base.push_back(log(exp(y_base[j]) - one));
    }

    std::reverse(Y.begin(), Y.end());
    //std::cout << Y.size() << std::endl;
    for (size_t j = 0; j < Y.size(); j++) {
        Y[j] = 1.0 / pow(Y[j], 0.5);
        //Y[j] = 1.0 / Y[j]; 
        //Y[j] = 1.0 / (Y[j] * Y[j]);
        //Y[j] = 1.0 / pow(Y[j], 4);
        //Y[j] = 1.0 / pow(Y[j], 2.0 / 3);
        X.push_back(log(exp(Y[j]) - one));
    }
}

// *****************************************************************************
// ������� ������ � ������������� ���������������
// *****************************************************************************
BmpVector computeIntegral(BmpVector x, bmp_real k) {
    bmp_real t = 0, a = 0;
    BmpVector I;
    for (size_t i = 0; i < x.size(); ++i) {
        I.push_back(fdsf::richardson_method(x.at(i), t, k, a));
        //std::cout << "x0: " << x0.at(i) << " I_base: " << I_base.at(i) << std::endl;
    }
    return I;
}

TEST_CASE("comp_kostya_and_precise") {
    const bmp_real k = bmp_real(1.0 / 2.0);
    bmp_real x = bmp_real(-0.1), I, I_kostya, I_precise;
    bmp_real t = 0, a = 0;
#if 0
    I = fdsf::richardson_method(x, t, k, a);
    I_kostya = fdsf::fd_half(x);
    I_precise = get_series_value(x, k);
    std::cout << "x = -0.1" << std::endl;
    std::cout << "I_quadrature: " << I << std::endl;
    std::cout << "I_kostya: " << I_kostya << std::endl;
    std::cout << "I_precise: " << I_precise << std::endl;
    std::cout << "delta = " << I / I_precise - 1 << std::endl;
#endif

    x = 30.0;// +10E-8;
    std::cout << "x = " << x << std::endl;
    I = fdsf::richardson_method(x, t, k, a);
    //I_kostya = fdsf::fd_half(x);
    I_precise = get_assympt_value(x, k);
    std::cout << "I_quadrature: " << I << std::endl;
    //std::cout << "I_kostya: " << I_kostya << std::endl;
    std::cout << "I_precise: " << I_precise << std::endl;
    std::cout << "delta = " << I / I_precise - 1 << std::endl;
}

TEST_CASE("check_negative_quadrature_values") {
    std::cout.precision(std::numeric_limits<bmp_real>::max_digits10);
    const bmp_real k = bmp_real(1.0 / 2.0);
    bmp_real x = bmp_real(-0.1), I, I_precise;
    bmp_real t = 0, a = 0;
    I = fdsf::richardson_method(x, t, k, a);
    I_precise = get_series_value(x, k);
    std::cout << "I_quadrature: " << I << std::endl;
    std::cout << "I_precise: " << I_precise << std::endl;
    REQUIRE(abs(I - I_precise) < 1e-17);
}

TEST_CASE("calculate_asimpt_value") {
    BmpVector X, Y;
    const bmp_real k = bmp_real(1.0 / 2.0);
    bmp_real t = 0, a = 0, h = 0.1;
    BmpVector I, I_minus, series_part;

    //�������� �� ������ ��� � = 30
    X.push_back(30.0);
    //X.push_back(log(exp(Y[0]) - 1));
    series_part = calculate_series_part(k, X);
    I_minus.push_back(fdsf::richardson_method(-X[0], t, k, a));
    I.push_back(I_minus[0] + series_part[0]);
    I.push_back(series_part[0]);
#if 0
    Y.push_back(3.0);
    X.push_back(log(exp(Y[0]) - 1));
    size_t i = 1;
    while (true)
    {
        Y.push_back(Y[0] + i*h);
        X.push_back(log(exp(Y[i]) - 1));

        if (Y[i] > 30.0) {
            break;
        }

        i++;
    }

    series_part = calculate_series_part(k, X);
    for (size_t i = 0; i < X.size(); i++) {
        I_minus.push_back(fdsf::richardson_method(-X[i], t, k, a));
        I.push_back(I_minus[i] + series_part[i]);
    }
#endif
    //printResultToFile(I, k, "Asimpt_check");
}

TEST_CASE("calculate_k_half_integer") {
    BmpVector x0, X, y0, Y;
    const bmp_real k = bmp_real(7.0 / 2.0);
    const size_t N_base = 5;
    // ������ �������� ��������� � ������� �����
    fdsf::SetLinearTrigonometricGrid(y0, x0, Y, X, N_base);
    //SetLinearTrigonometricGridRight(y0, x0, Y, X, N_base);
    // ������ ���������
    BmpVector I_base = computeIntegral(x0, k);
    BmpVector I_additional = computeIntegral(X, k);

    //printResultToFile(I_base, k, "I_base");
    //printResultToFile(I_additional, k, "I_add");
    //printResultToFile(y0, k, "y0");
    //printResultToFile(Y, k, "Y");
}

void chebyshevBaseNodes(BmpVector &y_base,
                        BmpVector &x_base,
                        BmpVector &Y,
                        BmpVector &X, int N_base) {
    using namespace fdsf;
    const size_t n_additional = 11;
    const bmp_real one = bmp_real(1);
    const bmp_real num2 = bmp_real(2); //if integer
    const bmp_real x_star = bmp_real(3);
    const bmp_real y_star = bmp_real(log(1 + exp(x_star))); // if half-integer
    bmp_real baseSize = bmp_real(N_base); // if poly approximation

    const bmp_real y_star_inv = 1 / (y_star * y_star);

    // �������� ������� ���� ������������
    for (size_t j = 1; j <= baseSize; j++) {
        y_base.push_back(y_star_inv*pow(sin(PI*j / (2 * baseSize)), 2));
        std::cout << y_base[j - 1] << " ";
    }

    // �������� �������������� �����
    Y.push_back(y_base[0] / n_additional);

    for (size_t i = 1; i < n_additional; i++) {
        Y.push_back(Y[i - 1] + y_base[0] / n_additional);
    }

    for (size_t index = 1; index < y_base.size(); index++) {
        for (size_t i = 0; i < n_additional; i++) {
            Y.push_back(Y.back() + (y_base[index] - y_base[index - 1]) / n_additional);
        }
    }

    // ������������� y
    std::reverse(y_base.begin(), y_base.end());
    for (size_t j = 0; j < baseSize; j++) {
        y_base[j] = 1.0 / pow(y_base[j], 0.5);
        x_base.push_back(log(exp(y_base[j]) - one));
    }

    std::reverse(Y.begin(), Y.end());
    //std::cout << Y.size() << std::endl;
    for (size_t j = 0; j < Y.size(); j++) {
        Y[j] = 1.0 / pow(Y[j], 0.5);
        X.push_back(log(exp(Y[j]) - one));
    }
}


TEST_CASE("test_chebyshev_base_nodes") {
    bmp_real k = 0.5;
    BmpVector x0, X, y0, Y;
    const size_t N_base = 1;
    // ������ �������� ��������� � ������� �����
    chebyshevBaseNodes(y0, x0, Y, X, N_base);
    // ������ ���������
    BmpVector I_base = computeIntegral(x0, k);
    BmpVector I_additional = computeIntegral(X, k);

    //printResultToFile(I_base, k, "I_base");
    //printResultToFile(I_additional, k, "I_add");
    //printResultToFile(y0, k, "y0");
    //printResultToFile(Y, k, "Y");
}

TEST_CASE("calculate_all_k") {
    BmpVector k = { -0.5, 0.5, 1.5, 2.5, 3.5 };
    bmp_real left_start = -5.0, right_start = 3;
    bmp_real left_end = 5.0, right_end = 30;
    bmp_real span = 0.1;
    BmpVector x_left, x_right;
    for (auto i = left_start; i < left_end; i += span) {
        x_left.push_back(i);
    }
    for (auto i = right_start; i < right_end; i += span) {
        x_right.push_back(i);
    }
    //std::cout << x_left.size() << std::endl;
    for (auto index : k) {
        BmpVector I_left;
        for (auto item : x_left) {
            bmp_real t = 0, a;
            I_left.push_back(fdsf::richardson_method(item, t, index, a));
            //printResultToFile(I_left, index, "I");
        }
        BmpVector I_right;
        for (auto item : x_right) {
            bmp_real t = 0, a;
            I_right.push_back(fdsf::richardson_method(item, t, index, a));
            //printResultToFile(I_right, index, "I_right");
        }
        //std::cout << I.size() << std::endl;
    }

    BmpVector I_m32;
    for (auto item : x_left) {
        //I_m32.push_back(fdsf::fd_3mhalf(item));
    }
    //printResultToFile(I_m32, -1.5, "I");

    BmpVector I_m32_right;
    for (auto item : x_right) {
        //I_m32_right.push_back(fdsf::fd_3mhalf(item));
    }
    //printResultToFile(I_m32_right, -1.5, "I_right");
}