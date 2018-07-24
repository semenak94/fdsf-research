%% � ���� ����� �������� z � I ��������� ����������������, �.� 
% z = (Ik/(k!*y))^(1/k)
%
clc 
clear all 
close all
format long

% ����������� k ������� �����-������
k = 1/2;

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

I_base = [0.14901074380494811
0.39051046429674352
0.72828172703164518
1.15849858665526195
1.66538357256125846
2.21870142682825966
2.77517083330143910
3.28433637513348575
3.69748061198613520
3.97698535404797671
]';

z = (I_base./(gamma(k+1)*y0)).^(1/k);

I_add = [0.01325543289996221
0.02656878048450782
0.03994013966889710
0.05336960641349724
0.06685727572011348
0.08040324162841682
0.09400759721247093
0.10767043457735556
0.12139184485589190
0.13517191820546512
0.14901074380494811
0.17027226765444756
0.19167150865432267
0.21320877171249195
0.23488435632433821
0.25669855655237861
0.27865166100723088
0.30074395282987509
0.32297570967522021
0.34534720369696620
0.36785870153377587
0.39051046429674335
0.42003039029391964
0.44978614744132334
0.47977826010941033
0.51000723705689666
0.54047357141230445
0.57117774066154336
0.60212020664150145
0.63330141553960773
0.66472179789931984
0.69638176863150447
0.72828172703164518
0.76575064026454365
0.80354641096421442
0.84166959069979685
0.88012070252828467
0.91890024109697133
0.95800867275939683
0.99744643570458114
1.03721394009925483
1.07731156824286378
1.11773967473503877
1.15849858665526284
1.20266254845271314
1.24720911537397194
1.29213858852546593
1.33745123349012229
1.38314728066815840
1.42922692563359965
1.47569032950594203
1.52253761933638221
1.56976888850802720
1.61738419714948778
1.66538357256125868
1.71376700965426543
1.76253447139998420
1.81168588929150798
1.86122116381495650
1.91114016493059813
1.96144273256308521
2.01212867710018672
2.06319777989939412
2.11464979380181228
2.16648444365273196
2.21870142682825922
2.26764174551618725
2.31691265404981639
2.36651384677911203
2.41644499900617182
2.46670576736772063
2.51729579021944039
2.56821468802174779
2.61946206372674872
2.67103750316603428
2.72294057543900481
2.77517083330144088
2.82026151477531695
2.86559259325568760
2.91116375841815467
2.95697469185038386
3.00302506723192364
3.04931455051348621
3.09584280009565349
3.14260946700686628
3.18961419508068955
3.23685662113220385
3.28433637513348575
3.32119101260259830
3.35818698528535720
3.39532411439101844
3.43260221890708772
3.47002111564633076
3.50758061929352660
3.54528054245191582
3.58312069568939506
3.62110088758437643
3.65922092477135141
3.69748061198613875
3.72259267876860811
3.74776440643083752
3.77299573898874829
3.79828662013711593
3.82363699325483752
3.84904680141016620
3.87451598736591452
3.90004449358463035
3.92563226223374251
3.95127923519068602
3.97698535404797804
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