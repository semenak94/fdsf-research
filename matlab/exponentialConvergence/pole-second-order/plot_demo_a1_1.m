clear all
close all
clc

d = [1.000081901337695318254449389426902865926457315966388210232906449765574779
0.500074016866765728341760806047511590627879262090562771713696809462283721
0.333267543809231201506100372354574127166963028526961004542830492010914361
0.249637152836473211853751170495478033102726553399833738362971048257362937
0.199158345717874323102798183694894797385927501448481149409004114982087036
0.165147845066810082814120221016098953475727213181657425069174658300451483
0.140455791007999040474911646296088748049403778877560695981096991107054086
0.121513900213023621609764037194644468412205393107627449686643681217261543
0.106351119984832985190553391214631193151907713975307977155237943821823287
0.093799094233986743925123381793781083754977480073751151835470757822903915
0.083129950192984440513449082042034623449663030416524255233963711744104672
0.073874006384127454522882213735515792794383212437544281918932462924356098
0.065720445031588145348350014112061269086420981609417708430504808935592342
0.058459518283510048777976570799735947541992687429799841764609063674523369
0.05194705938863591171542737922338128283151314013717015146742081687765531
0.046081758717551740956679675138386465715904463816672744394922684701666261
0.040790190517218786294183428074193472719254345631781217617451348577373432
0.036016804954992820461298980144878954097434511935754909598467534783934186
0.031717244478920691958113757810269108097439984312494094823680150960295025
0.027853954325172433347474764089606629462455158124691299501095226159703138
0.024393398176444218908609662615249531681654530790803758843918071022230565
0.021304392929481908743951211208320202182701908530902669888392053651472781
0.018557207622440425432041315445538605803471461673849835777839503674462946
0.016123163979413919386093242842375374727885721778620672340937228972079894
0.013974545830310820155261193126357411338046850152668643651377791468786357
0.012084679364436896637035588729168411547483867558880928860155612602233174
0.010428089278782103076600726887258971051000762179009982633979941111805391
0.008980669260995073987645653939264327627438880391079655697956609271795134
0.007719830267753137053936539044910582939586006257730316045873730067098279
0.006624608011107562739554446198047357592668523051917389444521151336698865
0.00567572325218664182290058018772951839173455609674734489594614284053125
0.004855596193790133784398318787607077515545360768960605572495511386150626
0.004148320621091953917555718761100433809676314140737972607928362491675349
0.003539605454936746147615319559933441791325735437687065665444596473625405
0.003016691853190227042945308202667757392079083734209961736309414052028753
0.002568253528949396642568429907785201682853710935063472229663581241320822
0.002184286986471010470962314170849536973736963560296624689673775153475996
0.001855997202575019883490200970106314078381707105481317917506117829673971
0.001575683090878817592519907503630347480466608136052305597779286913662041
0.001336625987309838528148239163389367426203384391709371475954025257390114
0.001132983442048906125994281027124797659712663576421437929028541369933827
0.00095968981383227912598053746145630755703771857698521811947777993750608
0.00081236453417829029183036595568330177004300257506930195540516930271523
0.000687228426520036877532562896103851566761727619738384433027839611081365
0.000581028107958568632394614369856327942737837850805440342674007843419879
0.000490968247636414062081101516992288390502703499361362513116529165612529
0.000414651284859582258395612806187082842080790691799166712986883810864424
0.000350024103625019524328383565610818481431290705142245843616758017858866
0.000295331102442751415271932526400289076583965890666260426796115255255045
0.000249073076363075785724066200282980571374446479432416031896860119644821
0.000209971331592029889011276167682919287964369874787649624087812366552623
0.000176936473923406547607321899582391991085221811299736763051772684897258
0.000149041344255542950640897957339516672859665061747941679162407448278448
0.000125497613075140805449968363524178717826442006267198879422603186597195
0.000105635587601572564883923040924988199824731689983182422373528905688153
8.8886827890793604581456312491900049903296055848776837886456790812513e-05
7.4769209944686104818687398598742946871299605228356342053440859609941e-05
6.287411367224198559431798953661894096302348123562123825172601479366e-05
5.2855450736690411665179959256201362187577159239358776584471460959974e-05
4.442028153686977694817251058807034752827120276190842502619251838435e-05
3.7320801669196719794724243416031303391969170621396856316665340448978e-05
3.1347506206797336244052193384887081617434468660033034820355997903134e-05
2.6323365123711885194896289354598216250290898506503801295006101646363e-05
2.2098865357072665478837552312462366017871103103654704471664304609662e-05
1.8547794547838706896317982061392265233897194541842306082094955807364e-05
1.5563658657403551899844577476840196224802526977428855052166404102044e-05
1.3056640653427285684535639286952798869134704496459585051425598955018e-05
1.0951020518695805850325334274178906794059799679134113365609101754837e-05
9.182988175827196016563774978531107734729739536030388963991297413389e-06
7.698790737913516806924860986605982103902559172202318349740556428616e-06
6.453163974103153571769648289594467327214865383848404754186005138158e-06
5.40800518613961397652294949850004919956381618994544880730273362622e-06
4.53125097660501248661644658194446839103429556353616009640208613383e-06
3.795928785534940485274999190795277060752066589763217416352429453849e-06
3.179355697454785022831300859853917506211625514765095128785880280615e-06
2.662461979986511515770349821852176039671709775158831686394791792684e-06
2.229220199449747514022680627954776566272222884778752259659945632538e-06
1.866163648250429806625764759110480138064918631592281557193748474207e-06
1.561980282905646585276156069905112610248864500246660392398604070299e-06
1.307170470708915835979728091749944030836695368419918938514108947131e-06
1.093758629602720809241739282789899755860212027031407145225322094689e-06
9.15050364973911245103429166860965957077968370200827592041280920431e-07
7.65427997762358163677153936225120438856722612217550111626380896364e-07
6.40178473971708673832747446037012884499588324094652922124275723197e-07
5.35348575159442982044951203353111819770724594137640727129753144228e-07
4.47623137425839699623432305244180069765818420595156517650920202185e-07
3.74222653934544546816772343876592010357337821918806237816978058533e-07
3.12817201136752910672611390960936658544379147833339681051975592373e-07
2.6145410705601326506829313388216877118257480450752168193392288704e-07
2.18497184374807871904016598749081209823054721647932860260037514487e-07
1.82575692856195531446523501192015158884120875075437494261946683896e-07
1.52541484376355865248025165474569072036203933906572989231093247241e-07
1.27433027653331321891200768324367303510100897250822102849023270125e-07
1.06445215531388614820245106177416496212627374513631971086962055148e-07
8.8904031276624642302005561250692270174680895756141527012688937576e-08
7.424529672798339875926462205885205158258002139313210848982339674e-08
6.1996848543247458630191260378332699065620218879567170261802740361e-08
5.1763592753139410674112399034778182660368265208951231931468587721e-08
4.3214975412799437465552773837644881175157866344093144103582292024e-08
3.6074480878282623583973103383491111451073026843971950257573120032e-08
3.0110831301511522038916811059726616087009292335268637312775599258e-08
2.5130613160797049645134928334111764428458608903343851262185271627e-08
2.097210057232427586625791667489357649402611234418435058363695947e-08
1.7500082067206323133287825612255980475713354628666069467846628231e-08
1.46015285716042082343711593513982465354669217999261727100416788e-08
1.2181966424508015941711998554342003631330077506370485390390479955e-08
1.0162441193910232990706009315323397086454182221250378100990905447e-08
8.476976468966682112776770930116688958209997591149826021865639908e-09
7.070447270984505528175368518848187049532136357546604157311107354e-09
5.896800709490780025671710870823853763022947088640209747606971555e-09
4.917567406849799981970397122839988805485535383831916552872407721e-09
4.100616358972109515343094386268632930720478465365416815632616251e-09
3.41911357088570072448003653714997734535069599760937330664212234e-09
2.85065124012656682175686187938167900010883301098379847655197707e-09
2.376519656372686203355867347793845528952613023201982094416652253e-09
1.981098509235702042341035623635598741066619515829925395298929572e-09
1.651348087790835117920452318022106244553020018962939949196093368e-09
1.376384033037511198656152707999052560592076850716150111965213946e-09
1.147121966974986707511557004907013297573913340220040326695129175e-09
9.55980552438256514778761732350803380959506230730286953752855967e-10
7.96633406034070576361586436203094144075755260546119487594708533e-10
6.63801851006785902128810041190054059106003032642180419905720755e-10
5.5308180679542613627146538704350594117040332911683536120043529e-10
4.60799208651898808547871039712322302449262427741246580502244426e-10
3.83889268565511503789867341464514805730884399458410738105676836e-10
3.19795656889569156443035300683498621389461766535306595610877891e-10
2.66386326815194647219983923714999664630739671241546400778496816e-10
2.21883241575917168702286097041976525653107487860239784381216582e-10
1.84803714083909639275182389645865185830699055719602037067627071e-10
1.53911444915917357154521941660791542844256668235757432881804058e-10
1.28175659182169969722843492314302585003012324800059160229250304e-10
1.06737005875389710645976143220697492585297835227907102630990464e-10
8.8879103226791034223268167936162055421336723431157063070160361e-11
7.4004797440137399064417614770677449769227324905958670430068505e-11
6.1616355834581827595200401868418446710833512184098824429896329e-11
5.1298943841885585941460344802544752274814356634937634607189701e-11
4.2706842607972690761132139046501238205462138407628457029547505e-11
3.5551953602279210621143868175687445446593273143408475222745049e-11
2.9594211535637523189464271056176962077253447145624965253495224e-11
2.4633589450046865497239759294421645892454533754599777287854106e-11
2.0503432097105262517828960854468408999894032882021450732373263e-11
1.7064897360068066629798332601097329393809573269452871948810803e-11
1.4202321913946697367917173019820010030593613345588624802629239e-11
1.1819357743083251312368682208128107071880505674924761268975575e-11
9.8357515362957901761548620944997725134759939656007398686488e-12
8.184660183550197480303380948593788881601263530225378062490426e-12
6.8104132968267848654089800395649766515909761144073297281041e-12
5.666648449397298345737719235937076966545731931652362510395944e-12
4.714757155050273197118771985310244032495791215512550425984119e-12
3.922589895376340532904646362150281647132367583886051780190711e-12
3.263377086099169191535465645067970988697440228265851823663325e-12
2.714830034138237428420881934027903852592332660256114564169067e-12
2.258391910739757919920920059519993221031161782700468834706999e-12
1.878613748959146089451328324462429369554204725702856712059843e-12
1.562634629971148375762168297680635601516427288026659247149182e-12
1.299748689003896831252726797812847430580376871091163456083421e-12
1.081044462412393783996220805672893646840696552246363369845393e-12
8.99104507911953389997445698745711804746486989588767211207469e-13
7.47755239897815264557992671323521413832913581695302377779819e-13
6.21858597527942868047959781498967751910279702466255724273425e-13
5.17138560289418989901063054822683157585478420520757064684806e-13
4.30036690371152185387603079885568632184484665308132099053724e-13
3.575918519286501201243798349270668120482976010150236708847e-13
2.9734006645458540964020433515244271980911021550050545930835e-13
2.47231137826262497842411047287415897902838037276272173131481e-13
2.05559242596106143567222617871641118932290614389949315287614e-13
1.70905149413501041156022090961287237936179209670836569373525e-13
1.4208812170245283062865987307399826943742234486963088908143e-13
1.18125882867585014723507191223974803131387606550564899737908e-13
9.8201294199235313080283870971160116082960558675296234409829e-14
8.1634621333626613637111829399308723609943535003095912533179e-14
6.7860453130346221918562525263624737239514742611393336126494e-14
5.6408493437477236083902397453095188948570351836237469302597e-14
4.6887576660301974461238889344847966346484980855121185443903e-14
3.8972366696573423165424548304182627921434579709391169496269e-14
3.2392289287210871956725547838612781050168154515378154964135e-14
2.6922323187266374493317572188289084371589387368020826015525e-14
2.2375338314304777177762920775863367305151541160289441925596e-14
1.8595721284988113075210755923583843309567817921421116158613e-14
1.5454072259658762578013679815954706991221875114230255513927e-14
1.2842793240479509171770806058195159783554222685448924770285e-14
1.0672418128749142750035230036053661156056470972271861877616e-14
8.868559955667915947956163907226419304748352269492486764974e-15
7.369371603010176656164566880428942640554111953426434004919e-15
6.123433729674681881540649719075233168404912694601802079063e-15
5.087998103136771197985107606975004306697212679209092881523e-15
4.22752658965664894926628811590029365582449266202748789158e-15
3.512476090316451073415839564468308145830886551039899020641e-15
2.918288060179742098800785186623145315786105632447411398666e-15
2.424548197062033505982926455383920357756360857837007859797e-15
2.014287669360274512942936144313027677634857585811250182066e-15
1.673402064606126681688885073806557329759068952890201275996e-15
1.390168244646234235764382337902137229612188727028348226866e-15
1.15484262511970481159756627849372786680623664607167045968e-15
9.59327169007206586500973736248051464087283549606638047892e-16
7.96891690374793359893361314842564957803529946582993731374e-16
6.61942983197727769360876671763477279577644212181081156587e-16
5.49832886390074285044624958159754919722497421273310740877e-16
4.56698724039513656297168700829938098857033088449763525676e-16
3.79330664425618963323500905035829162682133628554628339338e-16
3.15061460194306541837186120494614281867435435569570084934e-16
2.61674796287550610718825542169085920086302725272903131509e-16
2.17329107862554417773815429323759402655153247975518561316e-16
1.80494259094208777558929491285413369710513332363564552066e-16
1.49898913424923719419188849955708047001773901749398977254e-16
1.24486791471966818542721401386559783056202839387148639428e-16
1.03380316875374618109222915194459627747979560161386911884e-16
8.5850403228221948721773780507856548915235161086640281671e-17
7.1291345493424285418798148374723924645826099324984488779e-17
5.9199954146482358393396663557535985461969703480034249583e-17
4.9158215655394454708126353755761850920451045398180583693e-17
4.0818883778138256583763737488263685159821019147085142152e-17
3.3893506650980210260485993257579243210131782411112616963e-17
2.8142478189491053871094122971412299137399937806431216548e-17
2.3366771783066825975067146182678378518096655946989501062e-17
1.9401072007055983092233290176248945728868387173600132701e-17
1.6108068078689060175904724096877264612519462718189857683e-17
1.337371268586267499249980587687236705598382319879552051e-17
1.1103282986885194487342640481104326734507339001910110195e-17
9.218108149989410302755588526988315800870438244492590721e-18
7.652850717908051644857870648765604856363918037255575276e-18
6.353248130146898882202950460159117310526692386900783767e-18
5.27423656652376451842112216312272097916572780822689723e-18
4.378392432785063341291569292135852515322933961529455969e-18
3.634637743880943075143454040472212494347983208185170237e-18
3.017164747904391019600789368732728000536997532417495356e-18
2.504542685641474752672957308319071943333706573021179626e-18
2.078975856395039871863558818355327995701070145567478398e-18
1.725687375749280604380920939492212192374259913146090276e-18
1.432407344387828145101367662836352601454179078345870651e-18
1.188947747878740184380619153956349934897294248241705242e-18
9.86849399275133596631082775330940035944679371717853306e-19
8.19088722332547720527909105514393085030920572128678472e-19
6.79834238624159473771812066302275690158569402098245452e-19
5.6424433791265501316832034127667640175013116925738705e-19
4.68299336878946559045818969302161859386560951239745538e-19
3.88662015801103516772854651454284281308938102515274224e-19
3.22561806816285739277515285786739692138917617055817655e-19
2.67698624885122581606661707939182674199839841485286055e-19
2.22163011683430713585165062607361656234533914456941008e-19
1.84369826780124134211400535778492355254284640259103793e-19
1.53003189074837573185898460981756182624377784358010666e-19
1.26970760727397577110391209773873579536195115941793867e-19
1.05365789143818429898428637220297936459120274566518062e-19
8.7435591148584811879776835856445701926296667926016217e-20
7.2555386541736776661365639156376707631587457608694363e-20
6.0206573514389855559472012580356604952568960510165624e-20
4.9958692277226059488243992736043332285360249551413344e-20
4.1454451059693469245941679105118685803727096067458398e-20
3.4397294779886712671013904332281547998449487544518498e-20
2.8541084835484171411779714628533862401828139723241535e-20
2.3681531672689694761940639528195423734190362940654529e-20
1.964908258481312060332720825144502745121176024231227e-20
1.6303017678135412244877193061222151682951472174006224e-20
1.35265488670682173377315764493741194442283998039915e-20
1.1222751574461904030936417022830331284183849483647253e-20
9.311187721555624889009944395684899443800920797221405e-21
7.725102596614102989078401878704704536305830265788842e-21
6.409098123250122486757222495732988014407274352576181e-21
5.317201599379272876994341777126423739085891666113729e-21
4.411262719245760445038712088674863063239909963562088e-21
3.659623100331580761832185442625640035560723600788124e-21
3.036012009805795364483604484369974035527135440872158e-21
2.518629850009182443624372867230873441596119396775817e-21
2.089387492122413868835634335777760889724907493903689e-21
1.733274968190054720223626572765246926199321271861062e-21
1.437837532202389557790780699379266917529154606935976e-21
1.192740837196727004663351123085588855316206540680707e-21
9.89410077053268077151165106820215288226792654104549e-22
8.20730516544076047132401127957063897817661190882279e-22
6.80798970687381979183498777889756013661763660256214e-22
5.64717568826848126160065642627546343461199107411642e-22
4.68422611757113916613185539994639868594042099165551e-22
3.88542552848417151406339078221555384104491603581314e-22
3.2228014898986106771162394817112923889465514463466e-22
2.67314669562903238848645544761985942810704740296898e-22
2.21720750872457325267407260726690163467466541352469e-22
1.83901063826544285216865693363459026002291095392492e-22
1.52530444360207530017875725180940287640707734161596e-22
1.26509535909540289060157351754115613957381797588484e-22
1.04926325074024977345350619107538400383817251583295e-22
8.7024227012909060835889124149585784510377964737362e-23
7.2175605694429990954875815978436472333370780875532e-23
5.9859803816413849583601347373923632997178803945219e-23
4.9644914651520746503079643590705322000870998439668e-23
4.1172658725678817625743487224977705813613662105007e-23
3.4145836667319166788485092421445603874698550067268e-23
2.8317919547321607783584031590810955148144647613909e-23
2.3484412702137233801928796680115003385903631837517e-23
1.9475690999146573311495871189332332095077507670387e-23
1.615105492507169837147342503012134687795152075015e-23
1.339379954888801087753767506112531446374816993581e-23
1.1107123818890299798006434358283925670279883766797e-23
9.21073703492009741058610566620240414469810135226e-24
7.63804371669717637004408779277896700436265551463e-24
6.333808318753547841549639173540022428734757399191e-24
5.252218027925967760503052953200805539269495399577e-24
4.355275806862437082141940563913560366280048493768e-24
3.611467402965050182757242555283859235290067935273e-24
2.994655630293685100345088761487577173265835862757e-24
2.483163187176878461977252758823847328676275690985e-24
2.059011872600478638357503880553219307738259917017e-24
1.707291540547967925815326562246715406847346582125e-24
1.415636674766480254023526521672966784714662262675e-24
1.173792235767307074041144558174264110872317969323e-24
9.73253559039958243052790502848115888443814231662e-25
8.06967677828967879861288177812499222515459129748e-25
6.69085596138340294505383177202623320119274453555e-25
5.54756823185448829993609572362939546107040351212e-25
4.59958961799361978948327821455571315370812291281e-25
3.81356372084561955113778599574872346399153994463e-25
3.16182951058860700736485692688969519320046024882e-25
2.62144914608210463952512850359752881131233733544e-25
2.17340169587465761697710511227622436764741084085e-25
1.80191445798413140554413834223371149007002010233e-25
1.49390840273679419589263694668754736396219828932e-25
1.23853826694823478360107961363593135623650166855e-25
1.0268111490184645713384344202413473368523239477e-25
8.5127020946414143690819760549252132044323852327e-26
7.0573236656291080181514439196906259451628574244e-26
5.8507077222737702521919133888038939726782788485e-26
4.8503442539945468103524382283437365068366724712e-26
4.0209858427655440359128546856650161473412093736e-26
3.3334072027170751667893988766954115698616566994e-26
2.7633765369918570204908848245914376885414600225e-26
2.2908025522868785052106307273203489476503268502e-26
1.899027142642161709839029144081745228291684485e-26
1.5742388722813693260927865287298086820575174035e-26
1.3049866322510430007729348330353340891771898356e-26
1.0817763662086979948289535119755048784968513528e-26
8.967366805368527733305517541009601923390408649e-27
7.433415755006391063269151073447588858770700593e-27
6.16180542432001818937513227510217842361932966e-27
5.107679374255893004435575539383568472038687196e-27
4.233849232551904156402065386231827502857888669e-27
3.509484166737050098437922749448769195857663069e-27
2.909024281778401118598211566155695131510645334e-27
2.411279690708749815722591809235017690704300361e-27
1.998683539195938414497019729087900505374315037e-27
1.656672682293163817401976592900359258742858562e-27
1.373174203916069955408316158333036098174937459e-27
1.138179694818472422043492580382749676483484106e-27
9.43392293931174991214765621408591673297237346e-28
7.81934059487037125621445228529500735935579939e-28
6.48103360444952429411669850748848228626944368e-28
5.37173740038076465283327486919045562548330482e-28
4.45227163750558442707331552332641446442504832e-28
3.69015775041510119231910981475750108985680391e-28
3.05847286285018813892401422188657773977510503e-28
2.53489965008015442965322366127579547862936617e-28
2.10093865879638383854171122346974526179275445e-28
1.74125531330311758573911400077247588595872214e-28
1.44313858301834623114232157159011983473405552e-28
1.19605222157043937711156795592739052075894431e-28
9.9126275061957315767259870178160012772561515e-29
8.2153106681847391801506421140085114365347272e-29
6.8085679330724248550154423370075994243550773e-29
5.6426635679602000966737716177006181966127477e-29
4.676373131200914809631050529510359549272529e-29
3.8755272246062521259116195296310229602669383e-29
3.2118043523982073156694376629322358321914909e-29
2.6617302835854173721292931396948934983648417e-29
2.205848599056418770584278537781469926134982e-29
1.8280331440004890719977636600373926224690519e-29
1.5149181131239428875687257574139014051131799e-29
1.2554256469909519256184295071608065060500879e-29
1.0403742589947140025193132412195303977443025e-29
8.621542652662085645593949041704027363392712e-30
7.144587548319860137966192716473564988524274e-30
5.920605979285551451898075663144223017232751e-30
4.906276157059746171285429198272671684100338e-30
4.065693819273980108905744144367375336610944e-30
3.369102442171494903352844005239214266031851e-30
2.79184078326687900668070401101117706895734e-30
2.313470564397481244381975349955875591476918e-30
1.917053468052063112024276205002118208962429e-30
1.588551894193368953436185295360107956810418e-30
1.316332296903141693631553982785491479666991e-30
1.090753544370079874183727311440375742136228e-30
9.0382574992995806349926974454558300257046e-31
7.48927512096454230281918794344374430899748e-31
6.20571565701428299307023613166434971339401e-31
5.14210557271362784923660035919921387836468e-31
4.26076076016166682387801302847612892628264e-31
3.53045247379113848795540673877355535314705e-31
2.92530170508359286482709177037827142033187e-31
2.42386288676398896384596508394653514812708e-31
2.00836451122550401286418929456844494486107e-31
1.66407979673637780565818346329191082780005e-31
1.37880513412781249583920461720725719099811e-31
1.14242785865236557126710384972801306390759e-31
9.4656805123346232189485484401370516798638e-32
7.8428169205150826226045198232038544940945e-32
6.4981465988060082780969100593833162187246e-32
5.3839886951679922163443423836469534423066e-32
4.460833306126994658926218945532988011522e-32
3.6959414696122770670434597977515281633202e-32
3.062184994423001051624615852138998393387e-32
2.5370850467122365104048125283444215169503e-32
2.1020154488222193163527320399738834533106e-32
1.741542476222617466782826735254009754005e-32
1.4428777703958165095046713573804986876022e-32
1.1954249901886882622887041400393918540882e-32
9.904041430645509760779024281071060356372e-33
8.205402882504781769431852277308148887693e-33
6.798055832945879457232750118104319926115e-33
5.632055346782491981786011808894073621289e-33
4.666018787150980898357816493265486066757e-33
3.865658164143761893158947244192533605759e-33
3.202564012073576176077917311764117687035e-33
2.653197694880330885800110409926060725894e-33
2.198056423425192654215712408121608187166e-33
1.820981387752636660964787454420989304928e-33
1.508584478475642417592803933535757242518e-33
1.24977327379169318228689535787991348222e-33
1.035357451062260147780700560246899622818e-33
8.57722667699594545707597256413916381666e-34
7.10560347497273855630391366684689447381e-34
5.88643790208188091150962629398419958696e-34
4.87642664303354500653180870622280872503e-34
4.03969303603531042945381703588427471079e-34
3.34651356066655708558111250234201551638e-34
2.772262673845883282942203650697175139e-34
2.29653856296733860841451115485068108388e-34
1.90243880099383658719060225836518114772e-34
1.57596020452000951495026729924185663907e-34
1.30550160094569116695879164102773977711e-34
1.08145186105359135844277032812415702632e-34
8.9584857783211523767910535600822718418e-35
7.4209527853297419296850062657156030313e-35
6.1472713354120777858801535076955890921e-35
5.0921684627877100652790841571866637649e-35
4.2181383406421559780698321356388624056e-35
3.4941099115950463751421495422497070655e-35
2.8943430403782912687863735188154872185e-35
2.3975139991260286132931457598008309105e-35
1.985957815386037820664993142779708569e-35
1.6450405806353274441236316899427590577e-35
1.3626394301970183680402259080665457396e-35
1.1287117276425496928633148180151057895e-35
9.349381536083272233367699563906999129e-36
7.744270228055475628602854638286262958e-36
6.414693269456306796672942197888745138e-36
5.31335802474474886530348119691089706e-36
4.401088143177368658348516798192599334e-36
3.645430832418880734948157276185211112e-36
3.019503088092563839241863516877405614e-36
2.50103588604953469939152188015275901e-36
2.071582375621412561372468917677687955e-36
1.71586193767794802085106389081240513e-36
1.421216797731863702811114274045261913e-36
1.177161882954143937745947668316108721e-36
9.75011924743640888799958949195709575e-37
8.07572553053389121173162486129852763e-37
6.68884402462646529434221463251159629e-37
5.54011133738279816599785468098007213e-37
4.5886383524621994827060094013531006e-37
3.80055561476383073439743917069187352e-37
3.14780837051176210046910755793317989e-37
2.60715841942123731033482184655401883e-37
2.15935728740361463583724174385256913e-37
1.78846131828120354249266233392347723e-37
1.48126432814486574379109928613997926e-37
1.22682764553607783364100435905718754e-37
1.01609082306703272494279214832507859e-37
8.4154917443217086255611366933318685e-38
6.9698666693451319017749583432923661e-38
5.7725466808916812860572322468348599e-38
4.7808867552849783523506510422940573e-38
3.9595651027238346579194926330801359e-38
3.2793257245452506773635722786483153e-38
2.7159368558675445517783381971467033e-38
2.2493282334910232469372084382605411e-38
1.8628764901172950645176589028335296e-38
1.542813245401837857843172052868052e-38
1.2777348294209087836902217321020372e-38
1.0581961900121312735781343110962649e-38
8.763745307072255293411472481195612e-39
7.257907071233894588605714367519733e-39
6.010784649486899532238745346754246e-39
4.977933051379278925328770797430717e-39
4.122541721775121551169665770967991e-39
3.414123294390079585063418135407203e-39
2.827427532715573075401378620485084e-39
2.341541790029101473147208224515868e-39
1.939145959398164392833253389930567e-39
1.605895384000038491763322518645363e-39
1.329909753351498364713126303704886e-39
1.101349784243280889030147430934813e-39
9.12066610557503849269274221889817e-40
7.55311394922394935683751278556746e-40
6.25494819448597503338661830518273e-40
5.17987888903224858107198140982166e-40
4.28956950821123178023503617255422e-40
3.55227055586294127773614824015456e-40
2.94168788810674551602125425101043e-40
2.4360454431769570860388901467773e-40
2.01730898461955510630538387340654e-40
1.67054320032946265313648434028491e-40
1.38337925017262790363969960323841e-40
1.14557378941895831797755916357673e-40
9.4864375399306826349514964626213e-41
7.8556389266051966902980451680878e-41
6.505162668160572018002112433844e-41
5.38682790133419000993617298008e-41
4.4607341391080990426731249874069e-41
3.6938383411702818623402329165186e-41
3.0587764814725654438256893457311e-41
2.5328876060332808646691427566258e-41
2.0974055905525402992414834097976e-41
1.736789784238680231129504892268e-41
1.4381706763917022022151825868693e-41
1.1908908220949583017896141764488e-41
9.861246588881202800085708330587e-42
8.165636585030344844382786372172e-42
6.761555868378001400758836560288e-42
5.598885743080676636377704391949e-42
4.636122962828520030120586987542e-42
3.838898864124268797818318743069e-42
3.178753014378943082094485468279e-42
2.632117635866930922446458347352e-42
2.179476582486872377905421370534e-42
1.804668870808893057893417959589e-42
1.494311921911514863579098192882e-42
1.237323939769806019886045846001e-42
1.024528387631593329075619722784e-42
8.48326451949081286922678020048e-43
7.02425808404605871841063228109e-43
5.81616012833867223598855118408e-43
4.81582503007549261266740453805e-43
3.98752574581245856014489008522e-43
3.30167835174554860063105113889e-43
2.73378585165569648884015038085e-43
2.26356356073067318458962552553e-43
1.8742148523397311102210919905e-43
1.55183141993849898705233364802e-43
1.28489664907496175720670828877e-43
1.06387437389743939573582199104e-43
8.808683394282107698363262932e-44
7.2934021413758104675008691835e-44
6.0387608686888669892806619479e-44
4.9999311255045855420516871922e-44
4.1397940407296255634142137383e-44
3.4276145434472529708652024727e-44
2.837943551951875089114706398e-44
2.3497089353707382848607314293e-44
1.945462790550730192821218246e-44
1.6107581570671681348181546383e-44
1.3336329141123064609135603504e-44
1.1041824295366605200713573998e-44
9.142056999975565087372295778e-45
7.569123451154505216079971218e-45
6.266799912148136511876576848e-45
5.188533799897540893754176561e-45
4.295780263372591737768745472e-45
3.5566248462974085998358061e-45
2.944643033035343172100178823e-45
2.437955941293650136093671454e-45
2.018448428997478106313456203e-45
1.671121683546317985112267491e-45
1.383557164937187645062149423e-45
1.145472751589096995670409576e-45
9.48355231137463906019273788e-46
];

N = 2:length(d)+1;

title('a = 1.1');
xlabel('N'); ylabel('lg\delta');
grid on, hold on
plot(N, log10(d), 'k*-')