clc
clear all
close all

format shortE

k = 1; N = 4;
n = 0:N+1; m = 0:N;

a = [1 ...
     0.3126028287472988...
     0.0673008212829461...
     0.0087798043423074...
     0.0007222414330882...
     0.0000295873218273];
b = [1 ...
     0.0626028287472659...
     0.0238723363198067...
     0.0010727527758408...
     0.0000687107172921];

x = 0:0.1:50;
y = log(1 + exp(x));

x_minus = 0:-0.1:-50;
y_minus = log(1 + exp(x_minus));

I_approximate = [0.82246703342411343
                0.89432340773506513
                0.97142947016952796
                1.05403366713302170
                1.14238198615843520
                1.23671678685334530
                1.33727570151111140
                1.44429062415627650
                1.55798680337702540
                1.67858205047288920
                1.80628607044477410
                1.94129991939799560
                2.08381558821218600
                2.23401570901132200
                2.39207337815399160
                2.55815208722278120
                2.73240575184288080
                2.91497882708643540
                3.10600649767437350
                3.30561493110438410
                3.51392158213380410
                3.73103553764661290
                3.95705789175397890
                4.19208214194340020
                4.43619459813790760
                4.68947479759976460
                4.95199591966992700
                5.22382519534297530
                5.50502430761462410
                5.79564977939114460
                6.09575334650940630
                6.40538231408078310
                6.72457989494359240
                7.05338552949212790
                7.39183518655188720
                7.73996164529857200
                8.09779475848057470
                8.46536169740968880
                8.84268717934021000
                9.22979367797033490
                9.62670161787825230
                10.03342955375480000
                10.44999433532075500
                10.87641125882350600
                11.31269420600054900
                11.75885577137737800
                12.21490737874009400
                12.68085938758833800
                13.15672119033625300
                13.64250130098787000
                14.13820743597069200
                14.64384658776861100
                15.15942509195224700
                15.68494868816345700
                16.22042257557005100
                16.76585146326832600
                17.32123961607402400
                17.88659089610757000
                18.46190880054657100
                19.04719649588815500
                19.64245684903475500
                20.24769245549055800
                20.86290566493142900
                21.48809860438768000
                22.12327319925893900
                22.76843119236028900
                23.42357416118142400
                24.08870353352444100
                24.76382060167067300
                25.44892653521332800
                26.14402239268057900
                26.84910913206205100
                27.56418762034115100
                28.28925864212688200
                29.02432290746914100
                29.76938105893478700
                30.52443367801369000
                31.28948129091805100
                32.06452437383220700
                32.84956335766470700
                33.64459863234981900
                34.44963055074093500
                35.26465943213448600
                36.08968556545946200
                36.92470921216401100
                37.76973060882800600
                38.62474996952745700
                39.48976748797430500
                40.36478333945272800
                41.24979768257180300
                42.14481066085129200
                43.04982240415675000
                43.96483302999835300
                44.88984264470609300
                45.82485134449324000
                46.76985921641882300
                47.72486633925832700
                48.68987278429187900
                49.66487861601731900
                50.64988389279533700
                51.64488866743355500
                52.64989298771467200
                53.66489689687473700
                54.68990043403560000
                55.72490363459654400
                56.76990653058823000
                57.82490915099345600
                58.88991152203713100
                59.96491366744859900
                61.04991560869916600
                62.14491736521694100
                63.24991895458123300
                64.36492039269865000
                65.48992169396196100
                66.62492287139443200
                67.76992393678000300
                68.92492490078119300
                70.08992577304594800
                71.26492656230406900
                72.44992727645467300
                73.64492792264502400
                74.84992850734236900
                76.06492903639856700
                77.28992951510861100
                78.52492994826340600
                79.76993034019818700
                81.02493069483549000
                82.28993101572463300
                83.56493130607717000
                84.84993156879907900
                86.14493180651973600
                87.44993202161826700
                88.76493221624744500
                90.08993239235530800
                91.42493255170424500
                92.76993269588913900
                94.12493282635311700
                95.48993294440173000
                96.86493305121656800
                98.24993314786661400
                99.64493323531922900
                101.04993331444960000
                102.46493338604974000
                103.88993345083617000
                105.32493350945745000
                106.76993356250010000
                108.22493361049510000
                109.68993365392284000
                111.16493369321786000
                112.64993372877338000
                114.14493376094534000
                115.64993379005583000
                117.16493381639600000
                118.68993384022964000
                120.22493386179517000
                121.76993388130846000
                123.32493389896491000
                124.88993391494098000
                126.46493392939681000
                128.04993394247697000
                129.64493395431242000
                131.24993396502157000
                132.86493397471159000
                134.48993398347949000
                136.12493399141309000
                137.76993399859154000
                139.42493400508704000
                141.08993401096441000
                142.76493401628241000
                144.44993402109429000
                146.14493402544841000
                147.84993402938809000
                149.56493403295289000
                151.28993403617838000
                153.02493403909702000
                154.76993404173780000
                156.52493404412741000
                158.28993404628960000
                160.06493404824599000
                161.84993405001620000
                163.64493405161804000
                165.44993405306735000
                167.26493405437870000
                169.08993405556532000
                170.92493405663922000
                172.76993405761053000
                174.62493405848977000
                176.48993405928516000
                178.36493406000491000
                180.24993406065613000
                182.14493406124546000
                184.04993406177863000
                185.96493406226102000
                187.88993406269773000
                189.82493406309263000
                191.76993406345017000
                193.72493406377345000
                195.68993406406619000
                197.66493406433091000
                199.64993406457054000
                201.64493406478729000
                203.64993406498351000
                205.66493406516105000
                207.68993406532158000
                209.72493406546695000
                211.76993406559853000
                213.82493406571757000
                215.88993406582514000
                217.96493406592259000
                220.04993406601085000
                222.14493406609063000
                224.24993406616269000
                226.36493406622810000
                228.48993406628719000
                230.62493406634067000
                232.76993406638917000
                234.92493406643283000
                237.08993406647244000
                239.26493406650832000
                241.44993406654086000
                243.64493406657019000
                245.84993406659689000
                248.06493406662091000
                250.28993406664250000
                252.52493406666241000
                254.76993406668018000
                257.02493406669629000
                259.28993406671100000
                261.56493406672428000
                263.84993406673601000
                266.14493406674694000
                268.44993406675667000
                270.76493406676559000
                273.08993406677365000
                275.42493406678079000
                277.76993406678747000
                280.12493406679340000
                282.48993406679881000
                284.86493406680370000
                287.24993406680812000
                289.64493406681231000
                292.04993406681569000
                294.46493406681907000
                296.88993406682204000
                299.32493406682482000
                301.76993406682732000
                304.22493406682946000
                306.68993406683154000
                309.16493406683327000
                311.64993406683482000
                314.14493406683636000
                316.64993406683794000
                319.16493406683890000
                321.68993406684018000
                324.22493406684106000
                326.76993406684210000
                329.32493406684296000
                331.88993406684364000
                334.46493406684442000
                337.04993406684468000
                339.64493406684579000
                342.24993406684609000
                344.86493406684644000
                347.48993406684718000
                350.12493406684769000
                352.76993406684761000
                355.42493406684827000
                358.08993406684846000
                360.76493406684892000
                363.44993406684881000
                366.14493406684909000
                368.84993406684924000
                371.56493406684950000
                374.28993406684987000
                377.02493406685005000
                379.76993406685000000
                382.52493406684994000
                385.28993406685021000
                388.06493406685024000
                390.84993406685038000
                393.64493406685045000
                396.44993406685029000
                399.26493406685063000
                402.08993406685045000
                404.92493406685020000
                407.76993406685045000
                410.62493406685047000
                413.48993406684997000
                416.36493406685014000
                419.24993406685024000
                422.14493406685011000
                425.04993406684980000
                427.96493406684971000
                430.88993406684978000
                433.82493406684938000
                436.76993406684898000
                439.72493406684896000
                442.68993406684842000
                445.66493406684799000
                448.64993406684772000
                451.64493406684699000
                454.64993406684670000
                457.66493406684589000
                460.68993406684535000
                463.72493406684464000
                466.76993406684380000
                469.82493406684290000
                472.88993406684176000
                475.96493406684061000
                479.04993406683934000
                482.14493406683806000
                485.24993406683626000
                488.36493406683456000
                491.48993406683252000
                494.62493406683052000
                497.76993406682845000
                500.92493406682564000
                504.08993406682276000
                507.26493406681959000
                510.44993406681584000
                513.64493406681220000
                516.84993406680758000
                520.06493406680318000
                523.28993406679751000
                526.52493406679150000
                529.76993406678537000
                533.02493406677775000
                536.28993406676977000
                539.56493406676088000
                542.84993406675096000
                546.14493406674023000
                549.44993406672825000
                552.76493406671500000
                556.08993406670015000
                559.42493406668382000
                562.76993406666634000
                566.12493406664646000
                569.48993406662464000
                572.86493406660009000
                576.24993406657359000
                579.64493406654412000
                583.04993406651147000
                586.46493406647528000
                589.88993406643510000
                593.32493406639071000
                596.76993406634199000
                600.22493406628780000
                603.68993406622849000
                607.16493406616269000
                610.64993406609005000
                614.14493406600934000
                617.64993406591975000
                621.16493406582208000
                624.68993406571326000
                628.22493406559249000
                631.76993406546001000
                635.32493406531296000
                638.88993406515056000
                642.46493406497177000
                646.04993406477331000
                649.64493406455438000
                653.24993406431213000
                656.86493406404452000
                660.48993406374882000
                664.12493406342242000
                667.76993406306076000
                671.42493406266146000
                675.08993406222044000
                678.76493406173267000
                682.44993406119374000
                686.14493406059819000
                689.84993405993964000
                693.56493405921231000
                697.28993405840811000
                701.02493405751989000
                704.76993405653752000
                708.52493405545226000
                712.28993405425263000
                716.06493405292701000
                719.84993405146179000
                723.64493404984262000
                727.44993404805348000
                731.26493404607606000
                735.08993404388957000
                738.92493404147410000
                742.76993403880476000
                746.62493403585404000
                750.48993403259362000
                754.36493402899021000
                758.24993402500729000
                762.14493402060589000
                766.04993401574131000
                769.96493401036537000
                773.88993400442371000
                777.82493399785767000
                781.76993399060052000
                785.72493398257996000
                789.68993397371742000
                793.66493396392059000
                797.64993395309455000
                801.64493394113003000
                805.64993392790666000
                809.66493391329288000
                813.68993389714240000
                817.72493387929285000
                821.76993385956644000
                825.82493383776477000
                829.88993381367118000
                833.96493378704270000
                838.04993375761421000
                842.14493372509105000
                846.24993368914693000
                850.36493364942169000
                854.48993360551947000
                858.62493355700030000
                862.76993350337716000
                866.92493344411491000
                871.08993337862046000
                875.26493330623759000
                879.44993322624214000
                883.64493313783316000
                887.84993304012664000
                892.06493293214442000
                896.28993281280452000
                900.52493268091428000
                904.76993253515320000
                909.02493237406202000
                913.28993219602842000
                917.56493199927195000
                921.84993178182037000
                926.14493154150091000
                930.44993127590658000
                934.76493098237916000
                939.08993065798143000
                943.42493029946615000
                947.76992990324584000
                952.12492946535406000
                956.48992898140887000
                960.86492844656743000
                965.24992785547636000
                969.64492720221892000
                974.04992648025836000
                978.46492568236761000
                982.88992480056254000
                987.32492382601708000
                991.76992274897771000
                996.22492155866598000
                1000.68992024316790000
                1005.16491878931720000
                1009.64991718256310000
                1014.14491540682600000
                1018.64991344433350000
                1023.16491127544350000
                1027.68990887844890000
                1032.22490622936080000
                1036.76990330166560000
                1041.32490006606210000
                1045.88989649016820000
                1050.46489253819350000
                1055.04988817058670000
                1059.64488334363520000
                1064.24987800902910000
                1068.86487211337730000
                1073.48986559767630000
                1078.12485839671290000
                1082.76985043841890000
                1087.42484164314560000
                1092.08983192286590000
                1096.76482118029710000
                1101.44980930792580000
                1106.14479618692760000
                1110.84978168598630000
                1115.56476565997100000
                1120.28974794849000000
                1125.02472837428190000
                1129.76970674144450000
                1134.52468283346960000
                1139.28965641108220000
                1144.06462720984180000
                1148.84959493749580000
                1153.64455927105630000
                1158.44951985356990000
                1163.26447629053880000
                1168.08942814598070000
                1172.92437493805800000
                1177.76931613426340000
                1182.62425114608480000
                1187.48917932312020000
                1192.36409994656540000
                1197.24901222202470000
                1202.14391527155910000
                1207.04880812490180000
                1211.96368970974940000
                1216.88855884103190000
                1221.82341420905550000
                1226.76825436639640000
                1231.72307771342160000
                1236.68788248228130000
                1241.66266671922360000
                1246.64742826504790000
                1251.64216473350280000];

for i = 1:length(y)
    I_precesion_minus(i) = gamma(k+1)*y_minus(i).*(sum(a.*(y_minus(i).^n))/sum(b.*(y_minus(i).^m))).^k;
    I_precesion(i) = x(i)^2/2 + 2*I_precesion_minus(1) - I_precesion_minus(i);
    
    % ��� ��������� ������� 10^-17
    delta(i) = log10(abs(I_approximate(i)/I_precesion(i)-1) + 10^-17);
end

disp('delta = ');
disp((delta)');
grid on, hold on
plot(x, delta, '*')