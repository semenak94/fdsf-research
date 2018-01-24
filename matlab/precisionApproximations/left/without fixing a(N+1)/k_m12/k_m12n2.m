%% � ���� ����� �������� z � I ��������� ����������������, �.� 
% z = (Ik/(k!*y))^(1/k)
%
clc 
clear all 
close all
format long

% ����������� k ������� �����-������
k = -1/2;

N = 2;
% x_star = 2;
x_star = 3;
y_star = log(1+exp(x_star));

a0 = 1; b0 = 1;
a = zeros(1,N+1); b = zeros(1,N);

% ������ ���-���� ����� 
j = 1:2*N+1;
alpha = 2/(2+pi);
y0 = 0.5*y_star*(2*alpha*j/(2*N+1)+(1-alpha)*(1 - cos(pi*j/(2*N+1))));
x0 = log(exp(y0)-1);

Y = [0.03773144870055130
0.07546289740110260
0.11319434610165389
0.15092579480220519
0.18865724350275648
0.22638869220330776
0.26412014090385905
0.30185158960441033
0.33958303830496162
0.37731448700551290
0.41504593570606418
0.47894176952799561
0.54283760334992703
0.60673343717185846
0.67062927099378988
0.73452510481572131
0.79842093863765273
0.86231677245958416
0.92621260628151558
0.99010844010344701
1.05400427392537832
1.11790010774730963
1.19178984739086613
1.26567958703442263
1.33956932667797912
1.41345906632153562
1.48734880596509211
1.56123854560864861
1.63512828525220510
1.70901802489576160
1.78290776453931810
1.85679750418287459
1.93068724382643109
1.99458307764836240
2.05847891147029394
2.12237474529222547
2.18627057911415701
2.25016641293608854
2.31406224675802008
2.37795808057995162
2.44185391440188315
2.50574974822381469
2.56964558204574622
2.63354141586767776
2.67127286456822910
2.70900431326878044
2.74673576196933178
2.78446721066988312
2.82219865937043446
2.85993010807098580
2.89766155677153714
2.93539300547208848
2.97312445417263982
3.01085590287319116
3.04858735157374250
]';

X = log(exp(Y)-1); 

I_base = [0.67684953770307554
1.60212679585975715
2.42557819412070108
2.99399806973803262
3.28521678288771213
]';

z = (I_base./(gamma(k+1)*y0)).^(1/k);

I_add = [0.06635814045809597
0.13169191105638725
0.19602178736545545
0.25936784685880615
0.32174977604320221
0.38318687746518965
0.44369807659634364
0.50330192859973721
0.56201662498004379
0.61986000011965048
0.67684953770307532
0.77145844333628166
0.86374881013352556
0.95379897725397411
1.04168466908056567
1.12747907500384459
1.21125292696276654
1.29307457481444321
1.37301005960143740
1.45112318478219593
1.52747558548709983
1.60212679585975670
1.68640835922523169
1.76857740706608269
1.84871617959992363
1.92690364214672027
2.00321560494565398
2.07772483916839423
2.15050118924459133
2.22161168160957478
2.29112062997885024
2.35908973724910043
2.42557819412070019
2.48192377555007093
2.53723994732569569
2.59156076045344186
2.64491905156870599
2.69734648378504493
2.74887358636614509
2.79952979324781159
2.84934348043591745
2.89834200230558592
2.94655172682644872
2.99399806973803262
3.02166732531278059
3.04908384058722692
3.07625240796641597
3.10317771648251828
3.12986435396540008
3.15631680917329938
3.18253947388420366
3.20853664494844582
3.23431252630305410
3.25987123094840081
3.28521678288771257
]';

I = (I_add./(gamma(k+1)*Y)).^(1/k);

% ������ ������� A � B
% B = z(1,:) - (gamma(k+1))*y0.*ones(1,2*N);
B = z(1,:) - ones(1,2*N+1);
A = zeros(2*N+1,2*N+1);
for i = 1:size(A,2)
    for j = 1:size(A,2)
        if (j>=1 && j<=N+1)
            A(i,j) = y0(i)^j;
        elseif (j >= N+2 && j <=2*N+1)
            A(i,j) = -z(i)*y0(i)^(j-N-1);
        end
    end
end
disp(A); 
disp(B');
E = A\B';
disp(E);

for j = 1:length(E)
    if (j>=1 && j<=N+1)
        a(j) = E(j);
    elseif (j >= N+2 && j <=2*N+1)
        b(j-N-1) = E(j);
    end
end
% a(N+1) = b(N)*gamma(k+2)^(-1/k);
disp('lg(cond(A)):'); disp(log10(cond(A)));
disp('--------------------------------');
disp('������������ �:'); disp(a);
disp('----------------------------');
disp('������������ b:'); disp(b);
disp('----------------------------');

F_base = zeros(1,2*N+1);
delta_base = zeros(1,2*N+1);
for j = 1:2*N+1
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