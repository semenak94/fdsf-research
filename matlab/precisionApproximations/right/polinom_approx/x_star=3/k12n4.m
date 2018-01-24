%% � ���� ����� �������� z � I ��������� ����������������, �.� 
% z = (Ik/(k!*y))^(1/k)
%
clc 
clear all 
close all
format long

% ����������� k ������� �����-������
k = 1/2;

N = 4;

x_star = 3;
y_star = log(1+exp(x_star));

y_star_inv = 1/y_star^2;

% ������ ���-���� �����
baseSize = N;
j = 1:baseSize;
alpha = 2/(2+pi);
% y0 = 0.5*y_star*(2*alpha*j/(baseSize)+(1-alpha)*(1 - cos(pi*j/(baseSize))));
y0_inv = 0.5*y_star_inv*(2*alpha*j/baseSize +(1-alpha)*(1 - cos(pi*j/baseSize)));
y0 = 1./sqrt(y0_inv(end:-1:1));
x0 = log(exp(y0)-1);

Y = [3.04858735157374205
3.07479671019848544
3.10169388648986155
3.12930950080036174
3.15767611653393754
3.18682840160238356
3.21680330658789781
3.24764026169393638
3.27938139487174229
3.31207177386697760
3.34575967534960261
3.38049688478286559
3.44128765495917532
3.50548053742811394
3.57340517899878751
3.64543775012581284
3.72200974222197356
3.80361888750701960
3.89084283443185841
3.98435644006400791
4.08495386724406817
4.19357714841679741
4.31135357867466062
4.43964535593686094
4.58011650982598972
4.73482471785545478
4.90634974138578261
5.09797709645792274
5.31396742295184055
5.55996320660494803
5.84362412175577539
6.17566024723253371
6.57159567822049873
7.05496335342402148
7.39930798858727812
7.79955545100499137
8.27267782446919497
8.84386459723604190
9.55246553775267593
10.46420170963571472
11.69933317650748705
13.50922631759143577
16.54535564893839350
23.39866635301497411
]';

X = log(exp(Y)-1); 

I_base = [3.97698535404797671
4.56382786245414884
6.35962395754328824
12.80670644827435112
]';

C1 = (k+1)*k*(pi^2)/6;
z = ((I_base*(k+1)./(y0.^(k+1))).^(2/k) - 1).*(y0.^2)*k/(2*C1);

I_add = [3.97698535404797671
4.02227154387730756
4.06893531302021660
4.11704445148663023
4.16667138729340802
4.21789359565540689
4.27079405266816270
4.32546173926628885
4.38199220212129337
4.44048817917635041
4.50106029873411728
4.56382786245414973
4.67442421930023499
4.79224475424694685
4.91806637185878159
5.05278454616186767
5.19743718664580268
5.35323457000052549
5.52159722945136267
5.70420440343608348
5.90305667116734334
6.12055790936386135
6.35962395754328735
6.62382881537103341
6.91760455085224013
7.24651964841044460
7.61767455035809871
8.04027685753944432
8.52650015142045170
9.09280593794999525
9.76205213489802048
10.56700078790642472
11.55645725405485891
12.80670644827435112
13.72487716702019434
14.82004130469486469
16.15227609512177409
17.81334704014247095
19.95134733327204302
22.82308657621433667
26.91990068762874699
33.32690509090113551
45.06943426729846180
75.62658315110454055
]';

I = (((I_add*(k+1)./(Y.^(k+1))).^(2/k) - 1).*(Y.^2))*k/(2*C1);

% ������ ������� A � B
B = z(1,:) - ones(1,baseSize);
A = zeros(baseSize,baseSize);
for i = 1:size(A,2)
    for j = 1:size(A,2)
        A(i,j) = y0(i)^(-2*j);
    end
end
disp('A matrix: ')
disp(A); 
disp('B matrix: ')
disp(B');
E = A\B';

a0 = 1;
a = zeros(1,baseSize);
for j = 1:length(E)
    a(j) = E(j);
end
disp('--------------------------------');
disp('������������ �:'); disp(a');
disp('----------------------------');

F_base = zeros(1,baseSize);
delta_base = zeros(1,baseSize);
for j = 1:baseSize
    F_base(j) = 1; 
    for n = 1:baseSize
        F_base(j) = F_base(j) + a(n).*y0(j).^(-2*n);
    end
    delta_base(j) = F_base(j)/z(j)-1;
end
%---------------------------------------
% ������� ��������������� �����

F = zeros(1,length(Y));
delta_additional = zeros(1,length(Y));
for j = 1:length(Y)
    F(j) = 1;
    for n = 1:baseSize
        F(j) = F(j) + a(n).*Y(j).^(-2*n);
    end
    delta_additional(j) = F(j)/I(j)-1;
end

disp('-------------------');
disp('����������:');
disp(max(abs(delta_additional(1:11))));
disp(max(abs(delta_additional(11:22))));
disp(max(abs(delta_additional(22:33))));
disp(max(abs(delta_additional(33:44))));
disp('-------------------');

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