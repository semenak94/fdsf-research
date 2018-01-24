%% � ���� ����� �������� z � I ��������� ����������������, �.� 
% z = (Ik/(k!*y))^(1/k)
%
clc 
clear all 
close all
format long

% ����������� k ������� �����-������
k = -3/2;

N = 5;
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

Y = [0.01492451619428359
0.02984903238856718
0.04477354858285077
0.05969806477713436
0.07462258097141795
0.08954709716570154
0.10447161335998513
0.11939612955426872
0.13432064574855232
0.14924516194283591
0.16416967813711950
0.18697661064338722
0.20978354314965492
0.23259047565592261
0.25539740816219031
0.27820434066845801
0.30101127317472570
0.32381820568099340
0.34662513818726109
0.36943207069352879
0.39223900319979649
0.41504593570606418
0.44455805201988852
0.47407016833371285
0.50358228464753718
0.53309440096136151
0.56260651727518585
0.59211863358901018
0.62163074990283451
0.65114286621665884
0.68065498253048318
0.71016709884430751
0.73967921515813184
0.77406293266623893
0.80844665017434603
0.84283036768245312
0.87721408519056021
0.91159780269866730
0.94598152020677440
0.98036523771488149
1.01474895522298869
1.04913267273109589
1.08351639023920310
1.11790010774731030
1.15484497756908855
1.19178984739086680
1.22873471721264504
1.26567958703442329
1.30262445685620154
1.33956932667797979
1.37651419649975804
1.41345906632153628
1.45040393614331453
1.48734880596509278
1.52429367578687103
1.56123854560864928
1.59818341543042752
1.63512828525220577
1.67207315507398402
1.70901802489576227
1.74596289471754051
1.78290776453931876
1.81985263436109701
1.85679750418287526
1.89374237400465351
1.93068724382643175
1.96507096133453873
1.99945467884264572
2.03383839635075292
2.06822211385886012
2.10260583136696733
2.13698954887507453
2.17137326638318173
2.20575698389128894
2.24014070139939614
2.27452441890750334
2.30890813641561055
2.33842025272943488
2.36793236904325921
2.39744448535708354
2.42695660167090788
2.45646871798473221
2.48598083429855654
2.51549295061238087
2.54500506692620521
2.57451718324002954
2.60402929955385387
2.63354141586767820
2.65634834837394607
2.67915528088021393
2.70196221338648179
2.72476914589274966
2.74757607839901752
2.77038301090528538
2.79318994341155324
2.81599687591782111
2.83880380842408897
2.86161074093035683
2.88441767343662470
2.89934218963090817
2.91426670582519165
2.92919122201947513
2.94411573821375860
2.95904025440804208
2.97396477060232556
2.98888928679660903
3.00381380299089251
3.01873831918517599
3.03366283537945947
3.04858735157374294
]';

X = log(exp(Y)-1); 

I_base = [-0.44880090759084294
-0.65148027713837864
-0.80732423923065066
-0.80115496251951046
-0.69709005132740798
-0.56482503622710245
-0.44655819514692729
-0.35753312641630908
-0.29811761462739539
-0.26367194549353357
]';

z = (I_base./(gamma(k+1)*y0)).^(1/k);

I_add = [-nan
-nan
-nan
-nan
-nan
-nan
-nan
-nan
nan
nan
-0.44880090759084294
-0.46880090759084294
-0.47880090759084294
-0.49880090759084294
-0.51880090759084294
-0.53880090759084294
-0.54880090759084294
-0.56880090759084294
-0.58880090759084294
-0.61036946498002354
-0.63165485597941273
-0.65148027713837842
-0.67506694610458495
-0.69643849241518774
-0.71571610165469834
-0.73301524487663328
-0.74844593290146400
-0.76211295953798697
-0.77411613420816017
-0.78455050443466889
-0.79350656863056179
-0.80107047961120548
-0.80732423923065066
-0.81306153978234808
-0.81724317990849082
-0.81997949920800661
-0.82137456912087192
-0.82152652111495739
-0.82052785822222962
-0.81846575076180772
-0.81542231704517265
-0.81147488981886329
-0.80669626916194737
-0.80115496251951046
-0.79442440329974173
-0.78696264902381297
-0.77883986297414642
-0.77012164878640987
-0.76086931256145340
-0.75114011061703645
-0.74098748365393174
-0.73046127806921080
-0.71960795511008324
-0.70847078852424827
-0.69709005132740809
-0.68550319227518708
-0.67374500259503645
-0.66184777350383261
-0.64984144500857743
-0.63775374646081384
-0.62561032931010907
-0.61343489247794603
-0.60124930075074667
-0.58907369656930941
-0.57692660557165487
-0.56482503622710234
-0.55361698814994431
-0.54247340421033441
-0.53140486490902650
-0.52042106385238707
-0.50953086033285511
-0.49874232912858824
-0.48806280766299398
-0.47749894065782733
-0.46705672240682611
-0.45674153679053586
-0.44655819514692702
-0.43792607268560363
-0.42939664413965156
-0.42097205786339681
-0.41265421865543817
-0.40444480138376315
-0.39634526397021724
-0.38835685976249384
-0.38048064932061776
-0.37271751164372668
-0.36506815486184940
-0.35753312641630902
-0.35178863641367114
-0.34611278953979452
-0.34050566223108220
-0.33496728514247398
-0.32949764539982807
-0.32409668876674957
-0.31876432172882035
-0.31350041349809493
-0.30830479794062904
-0.30317727542971323
-0.29811761462739500
-0.29484325785873378
-0.29159776961944700
-0.28838106503417754
-0.28519305440652792
-0.28203364340029036
-0.27890273321595410
-0.27580022076260619
-0.27272599882532644
-0.26967995622818436
-0.26666197799293784
-0.26367194549353340
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
%    F_base(j) = gamma(k+1)*y0(j)*((a0 + S1)/(b0 + S2))^k;
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
%     F(j) = gamma(k+1)*Y(j)*((a0 + S1)/(b0 + S2))^k;
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