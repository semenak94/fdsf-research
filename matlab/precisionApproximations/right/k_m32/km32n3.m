%% � ���� ����� �������� z � I ��������� ����������������, �.� 
% z = (Ik/(k!*y))^(1/k)
%
clc 
clear all 
close all
format long

% ����������� k ������� �����-������
k = -3/2;

N = 3;
% x_star = 2;
x_star = 3;
y_star = log(1+exp(x_star));

a0 = 1; b0 = 1;
a = zeros(1,N+1); b = zeros(1,N);

% ������ ���-���� ����� 
j = 1:2*N;
alpha = 2/(2+pi);
y0 = 0.5*y_star*(2*alpha*j/(2*N)+(1-alpha)*(1 - cos(pi*j/(2*N))));
x0 = log(exp(y0)-1);

Y = [0.02931106723398783
0.05862213446797566
0.08793320170196349
0.11724426893595132
0.14655533616993915
0.17586640340392698
0.20517747063791480
0.23448853787190263
0.26379960510589046
0.29311067233987831
0.32242173957386616
0.37138048576234062
0.42033923195081513
0.46929797813928964
0.51825672432776415
0.56721547051623866
0.61617421670471317
0.66513296289318768
0.71409170908166220
0.76305045527013671
0.81200920145861122
0.86096794764708573
0.92127028656888443
0.98157262549068314
1.04187496441248184
1.10217730333428054
1.16247964225607925
1.22278198117787795
1.28308432009967666
1.34338665902147536
1.40368899794327406
1.46399133686507277
1.52429367578687147
1.58459601470867018
1.64489835363046888
1.70520069255226758
1.76550303147406629
1.82580537039586499
1.88610770931766369
1.94641004823946240
2.00671238716126110
2.06701472608305981
2.12731706500485851
2.18761940392665721
2.23657815011513161
2.28553689630360601
2.33449564249208041
2.38345438868055481
2.43241313486902921
2.48137188105750361
2.53033062724597801
2.57928937343445241
2.62824811962292681
2.67720686581140122
2.72616561199987562
2.75547667923386363
2.78478774646785165
2.81409881370183967
2.84340988093582769
2.87272094816981571
2.90203201540380373
2.93134308263779175
2.96065414987177977
2.98996521710576779
3.01927628433975581
3.04858735157374383
]';

X = log(exp(Y)-1); 

I_base = [-0.99087619250339028
-0.82087619250339028
-0.69709005132740798
-0.48305663797819037
-0.33463040448269138
-0.26367194549353357
]';

z = (I_base./(gamma(k+1)*y0)).^(1/k);

I_add = [-nan
-nan
-nan
-nan
nan
nan
nan
nan
nan
nan
nan
-0.61224649740609649
-0.65587940542100009
-0.69312768683718695
-0.72455814371791649
-0.75069395145169093
-0.77201783241528832
-0.78897500359383010
-0.80197591417661818
-0.81139878801168031
-0.81759198474666928
-0.82087619250339039
-0.82135803979960009
-0.81837503946699786
-0.81237970018202621
-0.80377929750122779
-0.79293998552062139
-0.78019054863302950
-0.76582582452313930
-0.75010982684590943
-0.73327859357339364
-0.71554278474793587
-0.69709005132740787
-0.67808719493387992
-0.65868213660535557
-0.63900571108687720
-0.61917330176948737
-0.59928633008151677
-0.57943361194561482
-0.55969259282710937
-0.54013047190565122
-0.52080522499448967
-0.50176653500268398
-0.48305663797819032
-0.46813284519036014
-0.45346543170238202
-0.43906812784025268
-0.42495250186095473
-0.41112815273113346
-0.39760288819681278
-0.38438288919999308
-0.37147286162368792
-0.35887617627791824
-0.34659499797498766
-0.33463040448269143
-0.32761891650067027
-0.32072082218491271
-0.31393588415774759
-0.30726376667877786
-0.30070404220174846
-0.29425619760727606
-0.28791964012587284
-0.28169370296508167
-0.27557765065395806
-0.26957068411755547
-0.26367194549353312
]';

I = (I_add./(gamma(k+1)*Y)).^(1/k);

% ������ ������� A � B
% B = z(1,:) - (gamma(k+1))*y0.*ones(1,2*N);
B = z(1,:) - ones(1,2*N);
A = zeros(2*N,2*N);
for i = 1:size(A,2)
    for j = 1:size(A,2)
        if (j>=1 && j<=N)
            A(i,j) = (y0(i))^(j);
        elseif (j >= N+1 && j <=2*N-1)
            A(i,j) = -z(i)*y0(i)^(j-N);
        elseif (j == 2*N)
            A(i,j) = -z(i)*y0(i)^N + (gamma(k+2)^(-1/k))*(y0(i)^(N+1));
        end
    end
end
disp(A); 
disp(B');
E = A\B';
disp(E);

for j = 1:length(E)
    if (j>=1 && j<=N)
        a(j) = E(j);
    elseif (j >= N+1 && j <=2*N)
        b(j-N) = E(j);
    end
end
a(N+1) = b(N)*gamma(k+2)^(-1/k);
disp('lg(cond(A)):'); disp(log10(cond(A)));
disp('--------------------------------');
disp('������������ �:'); disp(a);
disp('----------------------------');
disp('������������ b:'); disp(b);
disp('----------------------------');

F_base = zeros(1,2*N);
delta_base = zeros(1,2*N);
for j = 1:2*N
    S1 = 0; S2 = 0; 
    for n = 1:N+1 
        S1 = S1 + a(n).*y0(j).^n;
    end
    for m = 1:N
        S2 = S2 + b(m).*y0(j).^m;
    end
    F_base(j) = (a0 + S1)/(b0 + S2);
    delta_base(j) = F_base(j)/z(j)-1;
end
%---------------------------------------
% ������� ��������������� �����

F = zeros(1,length(Y));
delta_additional = zeros(1,length(Y));
for j = 1:length(Y)
    S1 = 0; S2 = 0; 
    for n = 1:N+1 
        S1 = S1 + a(n).*Y(j).^n;
    end
    for m = 1:N
        S2 = S2 + b(m).*Y(j).^m;
    end
    F(j) = (a0 + S1)/(b0 + S2);
    delta_additional(j) = F(j)/I(j)-1;
end

disp('lg(dc):');disp(log10(max(abs(delta_additional))));

grid on, hold on
xlabel('y'); %ylabel('d*10^1^0');
plot(Y,delta_additional, 'k','linewidth', 2.5);
plot(y0,delta_base, 'k*','linewidth',5)
% axis([0 y_star -1.5*10^(-1) 1.5*10^(-1)])
line([0;y_star],[0; 0],'linewidth', 2, 'color', 'black');
line([0;log(1+exp(x_star))],[0; 0],'linewidth', 2, 'color', 'black');
% line([0;0],[-1.25; 1.35],'linewidth', 3, 'color', 'black');
% title({'�������-������������������ �����';['k = ', num2str(k), ', N = ', num2str(N), ', x_d_i_v = ', num2str(x_div)]})
% plot(log(1+exp(x_div)),2*10^-16,'b*');