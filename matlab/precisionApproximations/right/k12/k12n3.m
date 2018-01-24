%% � ���� ����� �������� z � I ��������� ����������������, �.� 
% z = (Ik/(k!*y))^(1/k)
%
clc 
clear all 
close all
format long

% ����������� k ������� �����-������
k = 1/2;

N = 3;
% x_star = 2;
x_star = 3;
y_star = log(1+exp(x_star));

y_star_inv = 1/(y_star^2);

a_last = 1; b_last = 1;
a = zeros(1,N+1); b = zeros(1,N);

link_coefficient = (k+1)*(pi^2)/3;

% ������ ���-���� �����
baseSize = 2*N;
j = 1:baseSize;
alpha = 2/(2+pi);
% y0 = 0.5*y_star*(2*alpha*j/(baseSize)+(1-alpha)*(1 - cos(pi*j/(baseSize))));
y0_inv = 0.5*y_star_inv*(2*alpha*j/(baseSize)+(1-alpha)*(1 - cos(pi*j/(baseSize))));
y0 = 1./sqrt(y0_inv(end:-1:1));
x0 = log(exp(y0)-1);

Y = [3.04858735157374383
3.06334941986178944
3.07832803167305524
3.09352853341052692
3.10895645812305865
3.12461753396741315
3.14051769314397689
3.15666308133780493
3.17306006769913074
3.18971525540013978
3.20663549280775984
3.22382788531539566
3.25317180839742948
3.28333188319319724
3.31434665817738860
3.34625727996008715
3.37910772285540384
3.41294504373919549
3.44781966555554220
3.48378569335744803
3.52090126738820164
3.55922895844575837
3.59883621164772682
3.64948727062435641
3.70233898243140258
3.75755546062086943
3.81531848053134270
3.87583000074134842
3.93931513892254026
4.00602570215380638
4.07624439807403327
4.15028988769767260
4.22852288620647787
4.31135357867466062
4.39925069935656055
4.49275273436214651
4.59248186072577980
4.69916144857952034
4.81363825540862766
4.93691087531820916
5.07016663946711255
5.21483010445979112
5.37262769044987465
5.54567523674089635
5.73659874135033565
5.90700705919880509
6.09356344451193976
6.29899073808931664
6.52670118292486823
6.78103840914365907
7.06763204845108817
7.39393268303317797
7.77004660227837274
8.21009158875834899
8.73450756239548198
9.37423435716954323
9.83177993862005017
10.36360601986327445
10.99226414128657048
11.75122466331863080
12.69277332195054342
13.90423653146419092
15.54540902979491257
17.95029217602986549
21.98452828257314096
31.09081805958982514
]';

X = log(exp(Y)-1); 

I_base = [3.97698535404797671
4.28322529878643365
4.96547755273682245
6.35962395754328824
9.50752670221453400
19.40569864491534702
]';

% z = (I_base*(k+1)./y0).^(2/k);
C1 = (k*(k+1)*pi^2)/6;
z = ((I_base*(k+1)./(y0.^(k+1))).^(2/k) - 1)*k.*(y0.^2)/(2*C1);

I_add = [3.97698535404797981
4.00246979740233133
4.02838709740040279
4.05474905447206257
4.08156791273114106
4.10885638131011444
4.13662765694841106
4.16489544792161404
4.19367399940589802
4.22297812037976517
4.25282321217357229
4.28322529878643632
4.33529438754189389
4.38904637671968612
4.44456920964226754
4.50195722211141014
4.56131174212618262
4.62274175901640039
4.68636467160973869
4.75230712661195742
4.82070596023310483
4.89170925830026349
4.96547755273682245
5.06039730987656355
5.16013540363538237
5.26509036068381242
5.37570702581988780
5.49248358982331819
5.61597994929242716
5.74682770468289750
5.88574218640343627
6.03353700918330382
6.19114180188467955
6.35962395754328735
6.54021551693151970
6.73434666790421854
6.94368785595012206
7.17020322445731928
7.41621913658212062
7.68451303030690713
7.97843007150011729
8.30203839658506126
8.66033883919639891
9.05955303908206133
9.50752670221453400
9.91393043247701122
10.36584125925828914
10.87179696144304231
11.44267483400500574
12.09256699932484125
12.84008596309485917
13.71037189855126037
14.73829015009028609
15.97374287595026487
17.49094949740193528
19.40569864491534702
20.81692691956601493
22.49974090741302035
24.54622921463951357
27.09703878971623681
30.37912883031857092
34.78604112278246419
41.07065862657648125
50.89560335997177987
68.89594037457331410
115.72079047064163149
]';


% I = (I_add*(k+1)./Y).^(2/k);
I = ((I_add*(k+1)./(Y.^(k+1))).^(2/k) - 1)*k.*(Y.^2)/(2*C1);
grid on, hold on
plot(Y.^(-2), I, 'k*');

% ������ ������� A � B
B = (z(1,:) - ones(1,baseSize).*(y0.^2)).*y0.^(2*N) + link_coefficient*y0.^(2*N);
A = zeros(baseSize,baseSize);
for i = 1:size(A,2)
    for j = 1:size(A,2)
        if (j > 0 && j < N + 1)
            A(i,j) = (y0(i))^(2*(j-1));
        elseif (j >= N+1 && j <=baseSize-1)
            A(i,j) = -z(i)*y0(i)^(2*(j-N-1));
        elseif (j == baseSize)
            A(i,j) = -z(i)*y0(i)^(2*N-2) + (y0(i)^(2*N));
        end
    end
end
disp(A); 
disp(B');
E = A\B';
disp(E);

for j = 1:length(E)
    if (j > 0 && j <= N)
        a(j) = E(j);
    elseif (j >= N+1 && j <= baseSize)
        b(j-N) = E(j);
    end
end
a(N+1) = b(N) - link_coefficient;
% disp('lg(cond(A)):'); disp(log10(cond(A)));
disp('--------------------------------');
disp('������������ �:'); disp(a');
disp('----------------------------');
disp('������������ b:'); disp(b');
disp('----------------------------');

F_base = zeros(1,baseSize);
delta_base = zeros(1,baseSize);
for j = 1:baseSize
    S1 = 0; S2 = 0; 
    for n = 1:N+1 
        S1 = S1 + a(n).*y0(j).^(2*(n-1));
    end
    for m = 1:N
        S2 = S2 + b(m).*y0(j).^(2*(m-1));
    end
    F_base(j) = (y0(j).^(2*N+2) + S1)/(y0(j).^(2*N) + S2);
    delta_base(j) = F_base(j)/z(j)-1;
end
%---------------------------------------
% ������� ��������������� �����

F = zeros(1,length(Y));
delta_additional = zeros(1,length(Y));
for j = 1:length(Y)
    S1 = 0; S2 = 0; 
    for n = 1:N+1 
        S1 = S1 + a(n).*Y(j).^(2*(n-1));
    end
    for m = 1:N
        S2 = S2 + b(m).*Y(j).^(2*(m-1));
    end
    F(j) = (Y(j).^(2*N+2) + S1)/(Y(j).^(2*N) + S2);
    delta_additional(j) = F(j)/I(j)-1;
end

figure
grid on, hold on
xlabel('y'); %ylabel('d*10^1^0');
plot(Y,delta_additional, 'k','linewidth', 2.5);
plot(y0,delta_base, 'k*','linewidth',5)
% axis([0 y_star -1.5*10^(-1) 1.5*10^(-1)])
% line([0;y_star],[0; 0],'linewidth', 2, 'color', 'black');
% line([0;log(1+exp(x_star))],[0; 0],'linewidth', 2, 'color', 'black');
% line([0;0],[-1.25; 1.35],'linewidth', 3, 'color', 'black');
% title({'�������-������������������ �����';['k = ', num2str(k), ', N = ', num2str(N), ', x_d_i_v = ', num2str(x_div)]})
% plot(log(1+exp(x_div)),2*10^-16,'b*');