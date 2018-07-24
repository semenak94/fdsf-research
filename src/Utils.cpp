#include "Constants.h"

// �������� �����
bool isOdd(int n) {
    return n % 2 != 0;
}

// ����� ��������
BmpReal bernulli(int n) {
    if (isOdd(n)) {
        return 0;
    }
    if (n > 24) {
        throw std::domain_error("Too large");
    }
    const std::array<BmpReal, 12> BERNULLI = {
        _1 / 6,
        -_1 / 30,
        _1 / 42,
        -_1 / 30,
        _5 / 66,
        -_691 / 2730,
        _7 / 6,
        -_3617 / 510,
        _43867 / 798,
        -_174611 / 330,
        _854513 / 138,
        -_236364091 / 2730
    };
    return BERNULLI.at(n / 2 - 1);
}

// �����-������� / pi^2n
BmpReal dzetaFunction(int n) {
    if (isOdd(n)) {
        return 0;
    }
    if (n > 24) {
        throw std::domain_error("Too large");
    }
    const std::array<BmpReal, 12> DZETA = {
        _1 / 6,
        _1 / 90,
        _1 / 945,
        _1 / 9450,
        _1 / 93550,
        _691 / 638512875,
        _2 / 18243225,
        _3617 / 325641566250,
        _43867 / 38979295480125,
        _174611 / 1531329465290625,
        _77683 / 13447856940643124,
        _236364091 / BmpReal(201919571963756511232.0)
    };

    return DZETA.at(n / 2 - 1)*pow(pi(), n);
}