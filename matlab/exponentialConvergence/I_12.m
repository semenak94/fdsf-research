clc
clear all
close all

d = [ 0.214045199464487713706414942964388583982322843285498232074020209378527503
	  0.02947513554006007480493863858538041905182162078820867061085931791715202
	  0.014543984351493985900752826031408658808893158832399575476753920197293441
	  0.005201528865024631527774742851686462946199012893674098342199753519254244
	  0.000137790457506870807490331834954182263240472452078367295309785067431705
	  0.000739114451971329694743546380112671500236346089002274184387598186671639
	  0.000316370115531224247959421934536992568207691815962018696878898724071207
	  4.0921686083989717613293743043343590323100812497175366344006233281756e-05
	  3.4921908438102882082245322733726596230770831693613938362379219689873e-05
	  3.0470560952119066538782794539943589345714308692576000773044933561776e-05
	  1.3239223468433520015538997826741743190414760224418149219483526315789e-05
	  2.564337077195722616789105758321113149621011444671039066466129129232e-06
	  1.275972344230207370648350435958378111767842478938507539039252689073e-06
	  1.677855670651851834424207577242569130757811296592977767288520250194e-06
	  1.051357285999082455478459607173623070910291128002476397672591194069e-06
	  4.35197115083194413350428668205136829777527462501498090296084088543e-07
	  8.1074884547194291418673208125528214680493218009406359164039077882e-08
	  5.6735298488876405818203997135254679030885185106211938203876352683e-08
	  7.8329981368515988577424414267117734706732197793208256656230707591e-08
	  5.705755911717898786896559767934343235967238070397908016359882649e-08
	  3.0256249745320686647809216948274130696845220383356953816554738178e-08
	  1.1070758826423329980865789252365134735397166044395014301779699819e-08
	  8.58163552739116043124918246893310658322763125770691125819265221e-10
	  3.009715063512392606747808355182272460361167191036023290901715911e-09
	  3.478981302275250819504411729416136286449941541287261792121673292e-09
	  2.615989378757877934972657960124951074207004351178916969383807654e-09
	  1.536707732858897316780979012526958204484354550787530184452919102e-09
	  6.93627131327788076769900516041229902754783161053733139955512646e-10
	  1.774347150433027175367247710470404383104902267793143079619219e-10
	  7.2765107978742525651555638628049649981286672359727639987713764e-11
	  1.53570066169245805800265783048048830968793629529766631370849501e-10
	  1.47179112306973279881193294045522059787884453948961514988256173e-10
	  1.07975953093355077152981733282953685845307524407245073778783181e-10
	  6.5456411926186661330836911230014251763693805486557891167417974e-11
	  3.2015948878742679109388976285932118074473481084036257000400428e-11
	  1.0332986218524210802962518272068032267831388111318411293224373e-11
	  1.360120061720546075642566132540227471828560889921894290175303e-12
	  6.151688979199235794343680372475199538807918227238480824500321e-12
	  6.919026610573422563923902439082209244200421550320721774276124e-12
	  5.780078399238524675456754474425211172107040518566757191042482e-12
	  4.055550356135705153518524730095123763512139846219310335033069e-12
	  2.438407617971822675748645679922292077190893806384411872237213e-12
	  1.205375245793898030148780286809164828854835295341224544679323e-12
	  3.96689645721929499853350015672571436657246635437491450496973e-13
	  5.7392914084467778727392085944590771369074872530200680848348e-14
	  2.59753760278889007979946522291445753403413607932577687128357e-13
	  3.06735210292847410865188373143277238358414178173586626376285e-13
	  2.72430457432083009807028046742941893269886710852202051037051e-13
	  2.06376890906106192440225476388469301790242933127759300747065e-13
	  1.37443069640871379493390474726550609675583626822190543771995e-13
	  7.9602284378708520028178216540915131378250644964948164053118e-14
	  3.7383437656012731939937475623652305310125765423331166984544e-14
	  1.0118262204682353975022899256716452326957554822380584801912e-14
	  5.158921934376390157526828657402477781064510222259267001253e-15
	  1.1960762903633130571327315192351489115515160919750647767831e-14
	];

N = 1:length(d);

xlabel('N'); ylabel('lg\delta');
title('x = 10, k = 1/2')
hold on
plot(N, log10(d), 'k*-');