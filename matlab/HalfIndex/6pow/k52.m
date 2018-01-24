%% �������� ���������� �������������
clc
clear all
close all

format long

k = 5/2;
x = -10:50;
y = log(1 + exp(x));

I_precesion = [0.00015087929518646441
0.00041012961856977674
0.001114826995969972
0.0030302596112063863
0.0082359596984179061
0.02237924835852682
0.060771189374500746
0.16474039373220511
0.44455445345876293
1.1859681754434674
3.0825860828374188
7.6265353550055952
17.52941918738426
36.932065413293266
71.348052323823353
127.48954491322324
213.0980059186241
336.81432492370277
508.08406202146932
737.08721103102755
1034.684254181534
1412.3731877136897
1882.2542014851488
2456.999915977809
3149.8298063470065
3974.4878819416563
4945.222963353388
6076.7710762168435
7384.3396000859311
8883.5928935993707
10590.639176614386
12522.018493776819
14694.691616966569
17126.029769358684
19833.805073576903
22836.181642033131
26151.707240059048
29799.305462574244
33798.268373331579
38168.249562631405
42929.257585099942
48101.649743910952
53706.126191870906
59763.724323221031
66295.813432946627
73324.089622906409
80870.570936275792
88957.592703689501
97607.803086119733
106844.15880096947
116689.92101913069
127168.65142187712
138304.20840745172
150120.74343808979
162642.69751900324
175894.79780155123
189902.05430345063
204689.75673944363
220283.47145634855
236709.03846687524
253992.56857700658
]';
c2 = 0.6:0.01:0.78;
max_d = approximate( c2, k, x, y, I_precesion);
hold on
plot([-10,0;30,0],[0,-0.06;0,0.06],'k','linewidth',1.5);
axis([-10 30 -0.05 0.05]),grid on
disp(max_d');