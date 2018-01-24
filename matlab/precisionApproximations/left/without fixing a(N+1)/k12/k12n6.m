%% � ���� ����� �������� z � I ��������� ����������������, �.� 
% z = (Ik/(k!*y))^(1/k)
%
clc 
clear all 
close all
format long

% ����������� k ������� �����-������
k = 1/2;

N = 6;
% x_star = 2;
x_star = 3;
y_star = log(1+exp(x_star));

a0 = 1; b0 = 1;
a = zeros(1,N+1); b = zeros(1,N);

% ������ ���-���� �����
baseSize = 2*N+1;
j = 1:baseSize;
alpha = 2/(2+pi);
y0 = 0.5*y_star*(2*alpha*j/(baseSize)+(1-alpha)*(1 - cos(pi*j/(baseSize))));
x0 = log(exp(y0)-1);

Y = [0.01075302897795317855066793841637583408580972902734934515039030249251171954922790
0.02150605795590635710133587683275166817161945805469869030078060498502343909845580
0.03225908693385953565200381524912750225742918708204803545117090747753515864768370
0.04301211591181271420267175366550333634323891610939738060156120997004687819691160
0.05376514488976589275333969208187917042904864513674672575195151246255859774613950
0.06451817386771907130400763049825500451485837416409607090234181495507031729536740
0.07527120284567224985467556891463083860066810319144541605273211744758203684459530
0.08602423182362542840534350733100667268647783221879476120312241994009375639382320
0.09677726080157860695601144574738250677228756124614410635351272243260547594305110
0.10753028977953178550667938416375834085809729027349345150390302492511719549227900
0.11828331875748496405734732258013417494390701930084279665429332741762891504150690
0.13381405810552609953028312696630186122265573567932093546937317079497242283483208
0.14934479745356723500321893135246954750140445205779907428445301417231593062815726
0.16487553680160837047615473573863723378015316843627721309953285754965943842148244
0.18040627614964950594909054012480492005890188481475535191461270092700294621480762
0.19593701549769064142202634451097260633765060119323349072969254430434645400813280
0.21146775484573177689496214889714029261639931757171162954477238768168996180145798
0.22699849419377291236789795328330797889514803395018976835985223105903346959478316
0.24252923354181404784083375766947566517389675032866790717493207443637697738810834
0.25805997288985518331376956205564335145264546670714604599001191781372048518143352
0.27359071223789631878670536644181103773139418308562418480509176119106399297475870
0.28912145158593745425964117082797872401014289946410232362017160456840750076808388
0.30900925163534487395554469313230923013448357957522994715086100573480288942290162
0.32889705168475229365144821543663973625882425968635757068155040690119827807771936
0.34878485173415971334735173774097024238316493979748519421223980806759366673253710
0.36867265178356713304325526004530074850750561990861281774292920923398905538735484
0.38856045183297455273915878234963125463184630001974044127361861040038444404217258
0.40844825188238197243506230465396176075618698013086806480430801156677983269699032
0.42833605193178939213096582695829226688052766024199568833499741273317522135180806
0.44822385198119681182686934926262277300486834035312331186568681389957061000662580
0.46811165203060423152277287156695327912920902046425093539637621506596599866144354
0.48799945208001165121867639387128378525354970057537855892706561623236138731626128
0.50788725212941907091457991617561429137789038068650618245775501739875677597107902
0.53145824668077895154871524758477029507097153338716977734975319696244256338016992
0.55502924123213883218285057899392629876405268608783337224175137652612835078926082
0.57860023578349871281698591040308230245713383878849696713374955608981413819835172
0.60217123033485859345112124181223830615021499148916056202574773565349992560744262
0.62574222488621847408525657322139430984329614418982415691774591521718571301653352
0.64931321943757835471939190463055031353637729689048775180974409478087150042562442
0.67288421398893823535352723603970631722945844959115134670174227434455728783471532
0.69645520854029811598766256744886232092253960229181494159374045390824307524380622
0.72002620309165799662179789885801832461562075499247853648573863347192886265289712
0.74359719764301787725593323026717432830870190769314213137773681303561465006198802
0.76716819219437775789006856167633033200178306039380572626973499259930043747107892
0.79353446117169008421115340556083884139074066068245927014764210846461070938016982
0.81990073014900241053223824944534735077969826097111281402554922432992098128926072
0.84626699912631473685332309332985586016865586125976635790345634019523125319835162
0.87263326810362706317440793721436436955761346154841990178136345606054152510744252
0.89899953708093938949549278109887287894657106183707344565927057192585179701653342
0.92536580605825171581657762498338138833552866212572698953717768779116206892562432
0.95173207503556404213766246886788989772448626241438053341508480365647234083471522
0.97809834401287636845874731275239840711344386270303407729299191952178261274380612
1.00446461299018869477983215663690691650240146299168762117089903538709288400000000
1.03083088196750102110091700052141542589135906328034116504880615125240315500000000
1.05719715094481334742200184440592393528031666356899470892671326711771342600000000
1.08530832308285087661789024371134096057633068583302265421447760115513737000000000
1.11341949522088840581377864301675798587234470809705059950224193519256131400000000
1.14153066735892593500966704232217501116835873036107854479000626922998525800000000
1.16964183949696346420555544162759203646437275262510649007777060326740920200000000
1.19775301163500099340144384093300906176038677488913443536553493730483314600000000
1.22586418377303852259733224023842608705640079715316238065329927134225709000000000
1.25397535591107605179322063954384311235241481941719032594106360537968103400000000
1.28208652804911358098910903884926013764842884168121827122882793941710497800000000
1.31019770018715111018499743815467716294444286394524621651659227345452892200000000
1.33830887232518863938088583746009418824045688620927416180435660749195286600000000
1.36642004446322616857677423676551121353647090847330210709212094152937681000000000
1.39512434106752523417726309552220826543364725628070785994388628286604349200000000
1.42382863767182429977775195427890531733082360408811361279565162420271017400000000
1.45253293427612336537824081303560236922799995189551936564741696553937685600000000
1.48123723088042243097872967179229942112517629970292511849918230687604353800000000
1.50994152748472149657921853054899647302235264751033087135094764821271022000000000
1.53864582408902056217970738930569352491952899531773662420271298954937690200000000
1.56735012069331962778019624806239057681670534312514237705447833088604358400000000
1.59605441729761869338068510681908762871388169093254812990624367222271026600000000
1.62475871390191775898117396557578468061105803873995388275800901355937694800000000
1.65346301050621682458166282433248173250823438654735963560977435489604363000000000
1.68216730711051589018215168308917878440541073435476538846153969623271031200000000
1.71027847924855341937804008239459580970142475661879333374930403026741093000000000
1.73838965138659094857392848170001283499743877888282127903706836430211154800000000
1.76650082352462847776981688100542986029345280114684922432483269833681216600000000
1.79461199566266600696570528031084688558946682341087716961259703237151278400000000
1.82272316780070353616159367961626391088548084567490511490036136640621340200000000
1.85083433993874106535748207892168093618149486793893306018812570044091402000000000
1.87894551207677859455337047822709796147750889020296100547589003447561463800000000
1.90705668421481612374925887753251498677352291246698895076365436851031525600000000
1.93516785635285365294514727683793201206953693473101689605141870254501587400000000
1.96327902849089118214103567614334903736555095699504484133918303657971649200000000
1.99139020062892871133692407544876606266156497925907278662694737061441711000000000
2.01775646960624103765800891933327457205052257954772633050485448648133305700000000
2.04412273858355336397909376321778308143948017983637987438276160234824900400000000
2.07048900756086569030017860710229159082843778012503341826066871821516495100000000
2.09685527653817801662126345098680010021739538041368696213857583408208089800000000
2.12322154551549034294234829487130860960635298070234050601648294994899684500000000
2.14958781449280266926343313875581711899531058099099404989439006581591279200000000
2.17595408347011499558451798264032562838426818127964759377229718168282873900000000
2.20232035244742732190560282652483413777322578156830113765020429754974468600000000
2.22868662142473964822668767040934264716218338185695468152811141341666063300000000
2.25505289040205197454777251429385115655114098214560822540601852928357658000000000
2.28141915937936430086885735817835966594009858243426176928392564515049252700000000
2.30499015393072418150299268958751566963317973513492536417592382471223303100000000
2.32856114848208406213712802099667167332626088783558895906792200427397353500000000
2.35213214303344394277126335240582767701934204053625255395992018383571403900000000
2.37570313758480382340539868381498368071242319323691614885191836339745454300000000
2.39927413213616370403953401522413968440550434593757974374391654295919504700000000
2.42284512668752358467366934663329568809858549863824333863591472252093555100000000
2.44641612123888346530780467804245169179166665133890693352791290208267605500000000
2.46998711579024334594194000945160769548474780403957052841991108164441655900000000
2.49355811034160322657607534086076369917782895674023412331190926120615706300000000
2.51712910489296310721021067226991970287091010944089771820390744076789756700000000
2.54070009944432298784434600367907570656399126214156131309590562032963807100000000
2.56058789949373040754024952598340621268833194225268893662659502149928374300000000
2.58047569954313782723615304828773671881267262236381656015728442266892941500000000
2.60036349959254524693205657059206722493701330247494418368797382383857508700000000
2.62025129964195266662796009289639773106135398258607180721866322500822075900000000
2.64013909969136008632386361520072823718569466269719943074935262617786643100000000
2.66002689974076750601976713750505874331003534280832705428004202734751210300000000
2.67991469979017492571567065980938924943437602291945467781073142851715777500000000
2.69980249983958234541157418211371975555871670303058230134142082968680344700000000
2.71969029988898976510747770441805026168305738314170992487211023085644911900000000
2.73957809993839718480338122672238076780739806325283754840279963202609479100000000
2.75946589998780460449928474902671127393173874336396517193348903319574046300000000
2.77499663933584573997222055341287896021048745974244331074856887656940206400000000
2.79052737868388687544515635779904664648923617612092144956364871994306366500000000
2.80605811803192801091809216218521433276798489249939958837872856331672526600000000
2.82158885737996914639102796657138201904673360887787772719380840669038686700000000
2.83711959672801028186396377095754970532548232525635586600888825006404846800000000
2.85265033607605141733689957534371739160423104163483400482396809343771006900000000
2.86818107542409255280983537972988507788297975801331214363904793681137167000000000
2.88371181477213368828277118411605276416172847439179028245412778018503327100000000
2.89924255412017482375570698850222045044047719077026842126920762355869487200000000
2.91477329346821595922864279288838813671922590714874656008428746693235647300000000
2.93030403281625709470157859727455582299797462352722469889936731030601807400000000
2.94105706179421027325224653569093165708378435255457404404975761279027896700000000
2.95181009077216345180291447410730749116959408158192338920014791527453986000000000
2.96256311975011663035358241252368332525540381060927273435053821775880075300000000
2.97331614872806980890425035094005915934121353963662207950092852024306164600000000
2.98406917770602298745491828935643499342702326866397142465131882272732253900000000
2.99482220668397616600558622777281082751283299769132076980170912521158343200000000
3.00557523566192934455625416618918666159864272671867011495209942769584432500000000
3.01632826463988252310692210460556249568445245574601946010248973018010521800000000
3.02708129361783570165759004302193832977026218477336880525288003266436611100000000
3.03783432259578888020825798143831416385607191380071815040327033514862700400000000
3.04858735157374205875892591985468999794188164282806749555366063763288789700000000
]';

X = log(exp(Y)-1); 

I_base = [0.10664967810639066380990474559942383885691220888358666533494487886273938550000000
0.26718961224768481495635401984103274591302407412566733088237592742583486021875000
0.48417302920757533999766159787400174441602355128939983617747661852088546040625000
0.75821106412798212510954876616533198377285992708457773312635697243019945148437500
1.08676404034798824701419076339999668442730845073878456188471299436509268300000000
1.46295739463413781283873729218231619831540395224375577251215302326593566600000000
1.87482204181045604565092318135602362038769227970818951161178218006041713600000000
2.30532682157901504344115389496011019668114609821104865101159999852440248900000000
2.73338775358895292842962255083956087154520507801805010173001887882382703800000000
3.13577271881761709656081006253052264369650092582293899610269338696912208000000000
3.48958428768414622630778422092249906047495269528948748488711353617159438100000000
3.77487943913611380636958912395604471534440690127264010472307493096143274900000000
3.97698535404797741785274504730044081359917410238863699927131432011677114300000000
]';

z = (I_base./(gamma(k+1)*y0)).^(1/k);

I_add = [0.00954463665396435965117238093462259076171930027368185491521527439992102237500000
0.01911932338799517751349311270179983581373605656207050903436153402803777565625000
0.02872409659947912288546501028075797062246174899405883331689356100821183660937500
0.03835899242904319560595583106110936827605872344047007009604053563694904035156250
0.04802404675982898393188431576581771220597905120006726109455368424655910421093750
0.05771929521678054953536164385892882950148771613994817140948163706929938144531250
0.06744477316594598625768677046554053772537719681776552452633553365965311822656250
0.07720051571379269765007894073148525007373254547855281686779107522451908478125000
0.08698655770653643671762422204115167862662285205493266205781377228622918921093750
0.09680293372948414966394515190623222965455624975699065536981697913407731060156250
0.10664967810639066380990474559942383885691220888358666533494487886273938550000000
0.12092513331440106492983034449622327151877912162035195246189144637270271569531250
0.13526411078314371956343895924502883132225024259984210834666400045792351814062500
0.14966671102105080138678846001187747270882863503584043638171663563774408331250000
0.16413303338559222755509123529558302196020084528542075768056616258733313524218750
0.17866317607976905761895549663556828956874409089739568168479045927487879878906250
0.19325723614873477923439019390668490370794683327584821849843607330197044566406250
0.20791530947654482301237816952995727989370283981100207427612823825088316570312500
0.22263749078303461746555430088988578757358138778498103589851644934043187739062500
0.23742387362082646357915060468155686694425464328113659458360044244084071703125000
0.25227455037246547707420284511706713199922863348851392617211252624658728395312500
0.26718961224768481495635401984103274591302407412566733088237592742583486021875000
0.28638316679792283347015225843648494723794902374947439708404092400111513275000000
0.30568263344191505909388828050734175612678721782131690005862991807628347557031250
0.32508819523993926138049574992438284140630866141949207753823026618772896861718750
0.34460003206958889069741607664166550534062899501562037817467531391402168963281250
0.36421832061890344405826362293473459712987370780401693446835307015596804428125000
0.38394323438007167670727432902895178810662556151603645380616137101816585044531250
0.40377494364370746976781957690366649170022213454853327211773593250685118279687500
0.42371361549369794008402075895793649747541932718313943705676184740756975731250000
0.44375941380262315529670555314721827271524881548851938426461957706866384245312500
0.46391249922774659535042547385869240563125187150054193603370119180019341150000000
0.48417302920757533999766159787400174441602355128939983617747661852088545992187500
0.50832512964690111957088853387935104078879073740547546701832175254511501714843750
0.53262862437269934165082315156151828029801025581743496300689991363597445982812500
0.55708375790208164286592733196734901943478280685690384804140188136132321274218750
0.58169076838453295460416658870066994523677037850396956450942022392318472379687500
0.60644988760107757244365336332305942765983711036517334491536157500452124859375000
0.63136134096498977197120283371003521903680596303397757891449398607746919115625000
0.65642534752404002944965831505660495686774161086190662671939058482845615657812500
0.68164211996426717675775579949282935289211993787301836938334475634591433289062500
0.70701186461526604468193056916875736219034885823335085619712855434938471720312500
0.73253478145697938646183096838057592371080023929803755767327864255235938305468750
0.75821106412798212510954876616533198377285992708457773312635697243019945148437500
0.78711424259504274703758578509993732503299729055935063251171178756323652486718750
0.81620980592091129995595710720632946962515329124094487789556441044117337199218750
0.84549799702310815280351333219284164372363698423733266724599670513120681939843750
0.87497904897154916823879419199520727881364001148285911479533879221485994384375000
0.90465318501649423424999882809430603690893704397008012320143720117437569103125000
0.93452061861923791162876215143083935855603355202869056530960465296686985902343750
0.96458155348550490578559442391530763221737672782416329749401749641470819523437500
0.99483618360151157760165863309194277919909586194635000655493780901641090503125000
1.02528469327265326523088797108129339349321443445971162618395638607695029900000000
1.05592725716477579811752141068322781575643999178506412156015729370724678100000000
1.08676404034798824701419076339999668442730845073878456188471299436509268300000000
1.11985568199196273713758036243940043837991880458363747753017078433013592000000000
1.15316845342890644203447462529023021378745552687113638381118136295805552500000000
1.18670251904552132284858740819387333705225257143267817330173702776648359900000000
1.22045803109671690784346053572452868722908655663645244486121537360778400300000000
1.25443512978304648888676208895669317179710595356072052445761465359544979400000000
1.28863394333144618025088953096884088005664005182603189728318474567790492900000000
1.32305458807919647514453884715595783246916757831153440910857421324408634900000000
1.35769716856102574358682659982936915584204809679212229195584349678829244800000000
1.39256177759927250788085018305011646203954132147781560024870274935630740100000000
1.42764849639702283717603124684408279331435147386814333680850700088814887300000000
1.46295739463413781283873729218231619831540395224375577251215302326593566600000000
1.49924060500715634915306020943123535622537855283307123535532470027523447700000000
1.53575557990335921404258911733884990543093623031423690723384456403862096200000000
1.57250235696978372302380639551130586488609488951709425942443430041934611600000000
1.60948096177857686052353376775804482712230978533418401296099180830725146300000000
1.64669140794831847462234150726952190959197181390210852861580736811239087400000000
1.68413369726801503608577278717907334543620344105435758367273611917928889800000000
1.72180781982365962217468930200417244599110861498165146930027860025231569600000000
1.75971375412725340655835438584630938418484598855071374147863792650793662400000000
1.79785146724818367403754168928832410184750748407274509496338430914472746400000000
1.83622091494685323081343732368498502076150711065337338798415849422400650000000000
1.87482204181045604565092318135602362038769227970818951161178218006041713600000000
1.91285002723715228944430948886286756585727111442601325494449374953407076100000000
1.95110008001513134702528624485189743119505241158434240652639185873588511200000000
1.98957211770598438865220568021724284059576237013364615236502283891436810700000000
2.02826604810527169769940186197487994292364888867245348827856632750153976200000000
2.06718176937301781831300182921376079496385752643757921859949806525329571200000000
2.10631917016555379305150121397620366017300045018627093677673478354161548700000000
2.14567812976861791510694528132361340433958930892492956080012899744699918800000000
2.18525851823162706948020728032431760164492540198815831913910787490882945300000000
2.22506019650303146080767646596964413442856570599855148512212496278940003500000000
2.26508301656666631985835134547080283269018532979345250896095205044016465300000000
2.30532682157901504344115389496011019668114609821104865101159999852440248900000000
2.34327332062321585947239355323387614250546937824412186400627919754205386200000000
2.38141393333339206905634703640066798510070113993567193194481544580657660800000000
2.41974850977227670868231758772630182792965129562941805736877390716116161700000000
2.45827689358838304043151997956276813225741957677696934215643583861395068400000000
2.49699892211798802125760007766818260000637605497914981863269178465643992800000000
2.53591442648741148796983981868489679126916697644765208406918892596897721000000000
2.57502323171554118940976976380121037844735066105465628709763821550925108800000000
2.61432515681655457660289554112115685930792089945449984028361641843208184100000000
2.65382001490278906597731697509223768877260102208543479317156209211420789500000000
2.69350761328771331860952192506081436349038364742137765923035725427682856800000000
2.73338775358895292842962255083956087154520507801805010173001887882382703800000000
2.76920275691272643276530746524413388706236902729596073570051443291051293400000000
2.80517132839487155015802462462504537734620013060958849304218991061196221800000000
2.84129331513415802264826903023370808259025029109148263219505785595375885500000000
2.87756856084033657904267697237193592118506286478166668364096487181199079800000000
2.91399690589277017236379374404471225622063301643648783281498559120992785500000000
2.95057818739896649115740523946876143988335134358343180722808478105208852600000000
2.98731223925299325379536340244504747367364195874755493951227517370511110100000000
3.02419889219375819123135625174773736046529877529069523743977195671437708100000000
3.06123797386313602371803197255690632662884597960062383760113990048079982900000000
3.09842930886392514035194575925802943671834305849432976863192595286213089300000000
3.13577271881761709656081006253052264369650092582293899610269338696912208000000000
3.16739901517237220737522063609343151854849115383952044381718380007479939000000000
3.19913333384772766804103088786471609933562183190982944881873080604817566200000000
3.23097556292530076180859750923802306095382201451982211873709805645455633500000000
3.26292558908279901731134928566814882786769155199482208282005729178851040700000000
3.29498329761826591437565453469096257249250092997080629118643509889112903000000000
3.32714857247422803103321364985969125444566794053325971191331718345631613300000000
3.35942129626173930274220561707683397797392856096399261525278429898681488500000000
3.39180135028431817153949964680038825413931874633144681350344281887109988100000000
3.42428861456177350950743886003883584857999970645361840489736314946888086400000000
3.45688296785391530748334282883420100757893868259976193640049817206156464400000000
3.48958428768414622630778422092249906047495269528948748488711353617159438100000000
3.51519563638973019860992713794473742328929086026559654931756789852000700100000000
3.54087208198118774087174753523886690247706891858596897302699795776207483300000000
3.56661356461273039071473500781336259078173384806992538616466768569741076900000000
3.59242002400962727752262923692043701316965550655678512189894506210985299400000000
3.61829139947488966215805023749887148397405072312014840609537038193532209300000000
3.64422762989592413170031249132340979353012396988930493312520500296656802300000000
3.67022865375115387411502516197731698444207197720718735754124298265067983300000000
3.69629440911660747208200587289902484496439775771025022735906979579741663200000000
3.72242483367247466945876168142030254402429212963840031882091299736597859000000000
3.74861986470962857803840718810646518785957176560748042099927636777087093200000000
3.77487943913611380636958912395604471534440690127264010472307493096143274900000000
3.79309858017349963543999008570137769079950187136389672211161711139542656800000000
3.81134861025252884909118396768134018139199208012482364122267472784316985400000000
3.82962950811945571989645865855067033262423545739878177854682117608067347600000000
3.84794125243754727600489036309074107575267780617218498109460910299683388500000000
3.86628382178809182355360970564089659992094079488854659540062062047309356100000000
3.88465719467140344859454258388092181572047171413138128384802893032166483800000000
3.90306134950782246525493046144174293013278277408631625168644297960549798900000000
3.92149626463871177756509638890568515181941758594148588050547638247129050100000000
3.93996191832744912309748136485253322795856794995061359133564020146470551700000000
3.95845828876041516726785628615710982753191079290927795576769816518810573300000000
3.97698535404797741785274504730044081359917410238863699927131432011677114300000000
]';

I = (I_add./(gamma(k+1)*Y)).^(1/k);

% ������ ������� A � B
% B = z(1,:) - (gamma(k+1))*y0.*ones(1,2*N);
B = z(1,:) - ones(1,baseSize);
A = zeros(baseSize,baseSize);
for i = 1:size(A,2)
    for j = 1:size(A,2)
        if (j>=1 && j<=N+1)
            A(i,j) = y0(i)^j;
        elseif (j >= N+2 && j <=baseSize)
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
    elseif (j >= N+2 && j <=baseSize)
        b(j-N-1) = E(j);
    end
end
% a(N+1) = b(N)*gamma(k+2)^(-1/k);
disp('lg(cond(A)):'); disp(log10(cond(A)));
disp('--------------------------------');
disp('������������ �:'); disp(10*a');
disp('----------------------------');
disp('������������ b:'); disp(10*b');
disp('----------------------------');

F_base = zeros(1,baseSize);
delta_base = zeros(1,baseSize);
for j = 1:baseSize
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
coeff = 10^15;
xlabel('y'); ylabel('\delta*10^1^5');
plot(Y,delta_additional*coeff, 'k','linewidth', 2.5);
plot(y0,delta_base*coeff, 'k*','linewidth',5)
axis([0 y_star -1 1])
line([0;y_star],[0; 0],'linewidth', 2, 'color', 'black');
line([0;log(1+exp(x_star))],[0; 0],'linewidth', 2, 'color', 'black');
% line([0;0],[-1.25; 1.35],'linewidth', 3, 'color', 'black');
% title({'�������-������������������ �����';['k = ', num2str(k), ', N = ', num2str(N), ', x_d_i_v = ', num2str(x_div)]})
% plot(log(1+exp(x_div)),2*10^-16,'b*');