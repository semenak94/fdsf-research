clear all
close all
clc

d = [0.33333333333333333333333333333333333333333333333333333333333333325431819
0.079365079365079365079365079365079365079365079365079365079365079347757512
0.019607843137254901960784313725490196078431372549019607843137252874431614
0.004887585532746823069403714565004887585532746823069403714564981196625423
0.001221001221001221001221001221001221001221001221001221001219826344680295
0.000305194408838430079960935115668680949765000305194408838431159057925076
7.6295109483482108796826123445487144274052033264667734798555022503243e-05
1.9073559087978698649210545389348561662909175526334863032987381773342e-05
4.768376129509095677467038600004768376129509095677467039716774068463e-06
1.192093179724974566692010567667619625954538811335280260578411137834e-06
2.98023241640522577793751823529709787947522875518970221844926921135e-07
7.4505807079461322418769038003221720505084402934974475203470503521e-08
1.8626451561698509610066226162263103433933494366457665459701800409e-08
4.65661287741420127210598557452297357332238328952564212481687971e-09
1.16415321854039868771573498093423782403912344575839209138737697e-09
2.91038304584277695078884582912950111955459585410743422783497764e-10
7.275957614289305021728640786339072522042829550948816171554263e-11
1.8189894035524739207305264205232761975658769231734884503827775e-11
4.547473508868777092637964212456279678201514143146877243500158e-12
1.136868377216418791335221708048114856344011085379567959728229e-12
2.84217094304056230219788634271379793780981309498727743333269e-13
7.1054273576011028329071109667272723287249892688768052908212e-14
1.7763568394002567755650524370621765692577194150572051807821e-14
4.440892098500630105999052777425811554803638459584916512972e-15
1.110223024625156786942664549657064241886439338805919824374e-15
2.77555756156289150513347472120592757857530770344104144514e-16
6.9388939039072284739441951449294209423062521575654854424e-17
1.7347234759768071004304555576020187999621553592725250429e-17
4.336808689942017739791393126111086874465734266010327454e-18
1.084202172485504434242551671034399213070505490134973653e-18
2.71050543121376108516556879602764021706676468800067883e-19
6.7762635780344027126384155015951269079652782376458694e-20
1.6940658945086006781423847198691583748222532541053899e-20
4.235164736271501695345199827466881341945470808112576e-21
1.058791184067875423835627333603844423311187707623329e-21
2.64697796016968855958864794447031361309301257769225e-22
6.6174449004242213989713571177137231299960526831063e-23
1.6543612251060553497428228579620519758424897632607e-23
4.135903062765138374357046881488643187007975961368e-24
1.033975765691284593589261078908630373951769843795e-24
2.58493941422821148397315229635695947027848005113e-25
6.4623485355705287099328804903209594924000130019e-26
1.6155871338926321774832201069196467517777675554e-26
4.038967834731580443708050257511919427974211101e-27
1.009741958682895110927012563766657553133535206e-27
2.52435489670723777731753140903670160944693527e-28
6.3108872417680944432938285223665458780633643e-29
1.5777218104420236108234571305847349638035002e-29
3.944304526105059027058642826499015917113455e-30
9.86076131526264756764660706651459997745976e-31
2.46519032881566189191165176679146239323626e-31
6.1629758220391547297791294179676888013534e-32
1.5407439555097886824447823550948854050181e-32
3.851859888774471706111955899992653038331e-33
9.62964972193617926527988975154358408925e-34
2.40741243048404481631997248557547329506e-34
6.0185310762101120407999312325958309387e-35
1.5046327690525280101999829673906340927e-35
3.761581922631320025499955634065819632e-36
9.40395480657830006374990785577580408e-37
2.35098870164457501593746817750109237e-37
5.8774717541114375398299717907112528e-38
1.4693679385278593849521652185951727e-38
3.673419846319648462346712123051594e-39
9.1835496157991211556461907513117e-40
2.29588740394978028876918037742547e-40
5.7397185098744507209716233965199e-41
1.4349296274686126796471148617141e-41
3.587324068671528677749802407287e-42
8.96831017167880803971848794609e-43
2.24207754291969246799938092659e-43
5.605193857299162325577440648e-44
1.4012984643247421600975197265e-44
3.503246160811503525204600067e-45
8.75811540202626456510015977e-46
];

N = 2:length(d)+1;

% title('a = 0.5');
xlabel('N'); ylabel('lg\delta');
grid on, hold on
plot(N, log10(d), 'k*-')
axis([0 50 -30 0])
figure
xlabel('lnN'); ylabel('lg\delta');
grid on, hold on
plot(log(N), log10(d), 'k*-')
axis([0.5 3.9 -30 0])