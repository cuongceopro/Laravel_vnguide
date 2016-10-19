# ************************************************************
# Sequel Pro SQL dump
# バージョン 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# ホスト: 127.0.0.1 (MySQL 5.6.28)
# データベース: vnguide
# 作成時刻: 2016-10-19 14:27:07 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# テーブルのダンプ Detail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Detail`;

CREATE TABLE `Detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `link` text,
  `name` text,
  `image` text,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Detail` WRITE;
/*!40000 ALTER TABLE `Detail` DISABLE KEYS */;

INSERT INTO `Detail` (`id`, `link`, `name`, `image`, `text`)
VALUES
	(1,'spot_east_north','Ban Gioc滝','thacbangioc.jpg','険しい山々が続き、きっと見逃したくない珍しい風景である。ここで小舟をこぎながら、滝を近づくことができる。 近くに、綺麗な医師があるNguom Ngao洞窟がある。歴史が好きな人は Pac Bo洞窟を尋ねるのは良いでしょう。この 洞窟では、ホー・チー・ミン氏は 1941年から生活していたという。'),
	(2,'spot_east_north','Cat Ba島','daocatba.jpg','緑に囲まれ、 Cat Ba島は Lan Ha湾の島々を冒険するのは理想であろう。 Lan Ha湾は Ha Long湾の拡張領域であり、 Ha Long湾に負けないくらい美しい。それだけではなく、 ここで登山、サイクリングやローイングすることができる。この島の半分面積は国家公園であり、 世界でここにしか残らない珍しい動物もいる。険しい山々に登山の練習に望ましい。 '),
	(3,'spot_east_north','Bai Tu Long湾','vinhbaitulong.jpg','石灰岩は Ha Long湾のみならず、海岸に沿って越中境界周辺まで続く。この辺は Bai Tu Longである。 Bai Tu Long湾の美しさを楽しむために、クルージングが一番おすすめである。'),
	(4,'spot_east_north','Ba Be国家公園','hobabe.jpg','ほとんどの旅行客は東北部の海の方に行きがちであるが、登山が好きな人も楽しむとろろが見つかるはずである。 Ba Be国家公園では、冒険な登山ができ、また険しい山々に囲まれた静かな湖を眺めることもできる。クルージングや ロージングなど面白い体験ができ、熱帯林を突き通った道の登山などもできる。ここは 13の少数民族が住んでおり、 夜は小さい村に小さい村に泊まることもできる。自分で旅行計画を立てる人は、 Ba Beに行く時に簡単にホテルの予約や チケット購入ができる。親切な宿主、または観光センターは、情報提供や船の貸し出しなどをサポートしてくれる。 '),
	(5,'spot_east_north','Cao nguyen da Dong Van','dongvan.jpg',NULL),
	(6,'spot_east_north','Mau Son山','mauson.jpg',NULL),
	(7,'spot_east_north','Chien khu Tan Trao','tantrao.jpg',NULL),
	(8,'spot_east_north','Nui Coc湖','nuicoc.jpg',NULL),
	(9,'spot_east_north','Van Don','vandon.jpg',NULL),
	(10,'spot_east_north','Tra Co','traco.jpg',NULL),
	(11,'spot_east_north','Tam Dao','tamdao.jpg',NULL),
	(12,'spot_westen_north','Sapa','sapa.jpg','サパはラオ・カイ県に属する海抜１６００メトールの避暑地である。気候は温帯性であり、平均温度は１５から１８度になっており、 一年中涼しく、冬は雪が降る時もある。フランス植民地の時代から、フランスはサパの魅力を発見し、今でも２００個以上のフランス 風の別荘が残っている。少数民族村の昔ながらの生活や、Bac谷（ Thac Bac)、ゴー洞窟（ Hang Gio)、ハム・ロン山（ Nui Ham Rong)などの自然はサパの魅力である。'),
	(13,'spot_westen_north','Tien Son洞窟','tienson.jpg','ティエン・ソン洞窟は古代ながらの風景が残っている。中に入るほど広くなり、下に泉が流れている。色やかな様々な不思議な形の 鍾乳石が魅力である。'),
	(14,'spot_westen_north','Moc Chau高原','mocchau.jpg','特別な気候であり、夏が平均温度２０度で涼しい、冬は他の地域より乾いている。モク・チャウ高原では、歴史遺跡、お寺が有名である。 また、少数民族の踊り、特色な食べ物、手作りの工芸品などがある。'),
	(15,'spot_westen_north','Thac Ba湖','thacba.jpg','タク・バー湖でのクルージングがおすすめである。涼しい空気に囲まれ、自然と和むことができる。クルージングの後は、洞窟、山登りなど、 偉大なる自然を楽しむことができる。'),
	(16,'spot_westen_north','Den Hung','denhung.jpg',NULL),
	(17,'spot_westen_north','Dien Bien Phu','dienbienphu.jpg',NULL),
	(18,'spot_westen_north','Hoa Binh湖','hoabinh.jpg',NULL),
	(19,'spot_red_river_delta','Con Son - Kiep Bac','consonkiepbac.jpg',NULL),
	(20,'spot_red_river_delta','Suoi Hai湖','hosuoihai.jpg',NULL),
	(21,'spot_red_river_delta','Tam Chuc','tamchuc.jpg',NULL),
	(22,'spot_north_center','Khu du tich Kim Lien','kimlien.jpg',NULL),
	(23,'spot_north_center','Thien Cam海岸','thiencam.jpg',NULL),
	(24,'spot_north_center','Lang Co','langco.jpg',NULL),
	(25,'spot_southern_center','Ba Na','bana.jpg',NULL),
	(26,'spot_southern_center','Cu lao Cham','culaocham.jpg',NULL),
	(27,'spot_southern_center','My Khe海岸','mykhe.jpeg',NULL),
	(28,'spot_southern_center','Phuong Mai半島','phuongmai.jpg',NULL),
	(29,'spot_southern_center','Vinh Xuan Dai','vinhxuandai.jpeg',NULL),
	(30,'spot_southern_center','Cam Ranh','camranh.jpeg',NULL),
	(31,'spot_southern_center','Ninh Chu','ninhchu.jpg',NULL),
	(32,'spot_southern_center','Mui Ne','muine.jpg','ムイネー（ベトナム語: Mũi Né / 鋂Muine-ne1.png?）はベトナム南部、ビントゥアン省のファンティエットにある坊であり、南シナ海に面している。風光明媚なムイネービーチや砂丘などがあり、1995年頃よりリゾート地として開発された。年の平均気温は27℃程で冬場も暖かく、主に12月から5月が観光シーズンとなっている。ホーチミンとリゾート地として有名なニャチャンのちょうど中間くらいに位置している。'),
	(33,'spot_taynguyen','Mang Den','mangden.jpg',NULL),
	(34,'spot_taynguyen','Tuyen Lam湖','hotuyenlam.jpg',NULL),
	(35,'spot_taynguyen','Suoi Vang湖','suoivang.jpg',NULL),
	(36,'spot_taynguyen','YokDon','yokdon.jpg',NULL),
	(37,'spot_east_southern','Ba Den山','nuibaden.jpg',NULL),
	(38,'spot_east_southern','Can Gio','cangio.jpg',NULL),
	(39,'spot_east_southern','Long Hai','longhai.jpg',NULL),
	(40,'spot_east_southern','Con Dao','condao.jpeg',NULL),
	(41,'spot_mekong_delta','Cu lao Thoi Son','thoison.jpg',NULL),
	(42,'spot_mekong_delta','Phu Quoc島','phuquoc.jpg','フーコック島（ベトナム語: Đảo Phú Quốc / 島富國）は、タイランド湾に浮かぶベトナム最大（561km2）の島であり、周辺の諸島と併せキエンザン省フーコック市を形成する。 ベトナム本土南部西端のハティエンより約40kmの沖合いにあり、島の南部にはアントイ諸島の小島が連なる[1]。北東部はカンボジア領の島と接する。 かつては「フーコック県」であったが、2014年9月17日に第二級都市となった[2]。最大の都市は中北部のズォンドン坊 (北部発音。現地発音はユォンドン、Dương Đông)。南端には第二の都市であるアントイ坊がある。島の人口は9万3000人（2010年現在）。太平洋戦争時は日本人からフコク島とも呼ばれた。現地発音は「ウーウァック」に近い。'),
	(43,'spot_mekong_delta','Nam Can','namcan.jpg',NULL),
	(44,'spot_mekong_delta','Happyland','happyland.jpg',NULL),
	(45,'food_east_north','水牛肉燻製','thittraugacbep.jpg','ベトナムハージアン省に来て、煙の匂いが残ったままで唐辛子の辛さに合わせ、香ばしい水牛肉を味わったら、もう一回この美味しいものを食べるためにまた来たいだろう。'),
	(46,'food_east_north','フォー・ランソン','phochualangson.jpg','肉、落花生と色々な調味料を麺と混ぜて、かなり手間がかかった料理です。甘すっぱくて、少し辛い。'),
	(47,'food_east_north','ナミガイ (Quang Ninh)','tuhaiquangninh.jpg','ナミガイはエビ、カニなどほど数が少なく、ポピュラーではないが、ここのナミガイを一回食べたら、その美味しさは忘れられない。蒸したナミガイは特別な甘みがあり、調味料の匂いに合わせ、香ばしい料理である。'),
	(48,'food_westen_north','サパの焼き料理','monnuongsapa.jpg','サパの寒い夜に火の隣に座り、暖かい焼き料理を食べることより最高なことはない。'),
	(49,'food_westen_north','Lon cap nach Lai Chau','loncapnachlaichau.jpg','Lợn cắp nách Lai Châu 高地にしかない特別な食べ物である。蒸しても、焼いても、炒めてもまたは茹でても美味しい。cắp nách豚肉は香ばしく、油ぽくない。'),
	(50,'food_westen_north','Xoi chim Muong Thanh','xoichimmuongthanh.jpg','旧正月に Muong Thanh(Dien Bien省)に来たら、美味しいxôi chimを味わうことができる。米を二回も蒸したため、柔らかく、鶏肉の味と合わせ、美味しい。'),
	(51,'food_westen_north','Da川魚やき','casongda.jpg','Da川は色々な美味しい魚がいるところとして有名である。焼きたての魚はすぐに食べず、塩をつけてバナナの葉っぱに包み、蒸される。焼き魚は魚の味の他にバナナの匂い、塩の味もする。'),
	(52,'food_red_river_delta','フォー・ハノイ','phohanoi.jpg','フォー・ハノイはベトナム料理として世界にも広く知られる料理である。フォーはベトナムの色いろなところにあるが、本格的なフォーはハノイにしかない。ハノイはフォーの発祥地ではないが、フォー・ハノイは非常に有名である。'),
	(53,'food_red_river_delta','ブン・チャ','bunchaca.jpg','フォーと同様に、ブン・チャはハノイでポピュラーな料理である。米から作られた麺、肉、野菜、ヌックマムなど、材料はフォーと同じであるが、少し焦げた焼肉、香ばしいチャー、またパパイヤが入っており、客に魅力させる。'),
	(54,'food_red_river_delta','Bun dau mam tom','bundaumamtom.jpg','Bún đậu mắm tômは民間的な料理ではあるが、魅力の面では他の料理と負けない。メインはそうめん、揚げ豆腐、マン・トム、野菜とcha gio,特別な味を一度でも味わったら忘れられないだろう。'),
	(55,'food_red_river_delta','おこわ','xoi.jpg','昔からおこわはベトナム料理の代表的な存在である。おこわは gac, dau xanh, とモロコシなどと合わせることで、豊富な種類を持っている。\n'),
	(56,'food_red_river_delta','Cha ga Tieu Quan','chagatieuquan.jpg',' Cha ga Tieu Quan は Hung Yen省、 Khoai Chau県、 Tieu Quan村の有名料理である。Cha gaは特色な食べ物であり、焦らずにじっくり味わわないと、nay, ngot, beo, thom, cayを感じることができない。'),
	(57,'food_red_river_delta','Che kho Nam Dinh','chekhonamdinh.jpg','Che kho Nam Dinhは工夫された特色な民間的な料理である。小さなグリーンピースとちょうどいいの砂糖量で奇妙な料理人によって美味しい Che kho ができる。作る時によく混ぜれば混ぜるほど美味しくできる。'),
	(58,'food_red_river_delta','Banh dau xanh Hai Duong','banhdauxanhhaiduong.jpg','Hai Duong省に来たら、お土産を買うとき、 Banh dau xanhを思い出さない人はいないだろう。厳しく選択されたグリーンピース、豚の脂、グレープフルーツ花の脂で作られる。 Banh dau xanhとお茶は非常に相性が良い。'),
	(59,'food_red_river_delta','辛パン Hai Phong','banhmycayhaiphong.jpg','辛パンは Hai Phongの代表的な食べ物である。パンに pateを挟み、火鉢で焼いた辛パンは、特別なソースと一緒に食べる。パンの強烈な辛さは pateの香ばしい味と合わせ、他の地方の食べ物に紛れられないだろう。'),
	(60,'food_red_river_delta','羊肉(Ninh Binh)','thitdeninhbinh.jpg','Ninh Binh省に行ったら、羊肉を食べないということはここのことをちゃんと知っていない。羊肉から焼き羊肉、蒸し羊肉など、色々な魅力的な料理ができる。 Tai de料理は特殊な味を持っているベトナムの特色な野菜と一緒に食べている。'),
	(61,'food_north_center','Bánh bèo, bánh nậm, bánh bột lọc (Hue)','banhbeohue.jpg','この３つの食べ物はベトナム中部の代表的な食べ物である。しかし、フエーで食べるものは他の地域とは特殊な味がある。'),
	(62,'food_north_center','ブン・ボー・フエー','bunbohue.jpg','ブン・ボー・フエーは酸っぱい・辛い・甘い味が相まって、これはフエーの代表的な味である。お店はスープが入っている大きな鍋があり、寒い日や雨の日は鍋のそばに座り、スープの香りを感じるだけで心が揺れちゃう。'),
	(63,'food_north_center','イガイご飯','comhenhue.jpg','イガイご飯は、炒めイガイ、イガイを茹でたスープ、キャベツ、ピマン、落花生、コショウなどを冷やしたご飯を混ぜる。'),
	(64,'food_north_center','宮廷チェー (Hue)','checungdinhhue.jpg','この料理は材料からの自然的な美味しさだけではなく、香りや見た目にも魅力的である。宮廷チェーを食べる時、ゆっくりその味を味わうべきであろう。'),
	(65,'food_north_center','Nem chua Thanh Hoa','nemchuathanhhoa.jpg','この料理は豚の赤身から作られ、la dinh langとチリソースと一緒に食べる。これは Thanh Hoa省の有名な料理である。'),
	(66,'food_north_center','うなぎおかゆ','chaoluonxunghe.jpg','特別な作り方とどこにもない味からこの料理は Nghe An省の誇りにもなっている。味をつけたうなぎと辛い味と相まって、美味しい料理である。'),
	(67,'food_north_center','Cu do Ha Tinh','cudohatinh.jpg','Keo cu doは Ha Tinh省の特産物である。 Keo cu doを作るにはそれほど難しくないが、特別な味を作るには誰でも作れるわけではない。 Keo cu doは緑茶と非常に会う。'),
	(68,'food_north_center','地獄ご飯 (Hue)','comamphuhue.jpg','地獄ご飯 (Hue)は Hueの食文化の代表的な料理である。穏やかな味だけではなく、宮廷風の飾り方もこの料理の魅力である。'),
	(69,'food_southern_center','Bún chả cá　Da Nang','bunchacadanang.jpg','Bun cha caの目玉は cha caである。美味しくできるために、新鮮な魚を選び、色々な過程を経てcha caができる。'),
	(70,'food_southern_center','Ốc Hút (Da Nang)','ochutdanang.jpg','Oc hutはコウスイガヤと唐辛子唐辛子を ocと一緒に炒めた料理である。おOcはどこにもあるが、ここでの独自の作り方によって、魅力的な料理になっている。'),
	(71,'food_southern_center','Mi Quang','miquangdanang.jpg','ダナン・クアンナンといえば、ベトナム人はこの地域の特産物のMi Quangを思い浮かべない人はいないだろう。チッキン、エビ、豚肉、卵、牛肉など、Mi Quangにも 様々な種類があるが、その特別な味は他の地域と紛れることがないだろう。米から作られた麺は、スープの味と合わせ、美味しい。'),
	(72,'food_southern_center','Ram bap','rambapquangngai.jpg','Ram bapは作りやすい民間的な料理であり、Quang Ngai省の特産物として有名である。パーティや宴会で、Ram bapはメインメニューになっており、人気な料理である。'),
	(73,'food_southern_center','Don','donquangngai.jpg','Donは珍しく、気候の乾いた４・５月だけ現れる。美味しく、また珍しいため、Donは人気になっている。Donは炒めるや茹でるなど、色々な作り方がある。'),
	(74,'food_southern_center','にんにくサラダ Ly Son','goitoilyson.jpg','にんにくサラダ Ly Sonはにんにくの木の部分を使って、落花生と混ぜた料理である。Goiは特別なソースとbanh trangと一緒に食べる。香ばしい香りと辛い味がする。'),
	(75,'food_southern_center','Ca bong song Tra','cabongsongtra.jpg','国に広く知られているCa bong song traはQuang Ngai省で一番長い川のTra Khuc川にたくさんいる。Ca bongにも色々な種類があり、その中で一番美味しいのは bong catという種類である。Bong catは黄色い色をしており、肉もしっかりしている。Ca bongは塩魚やコショウをつけた煮魚が美味しい。'),
	(76,'food_southern_center','Bun cha ca Nha Trang','bunchacanhatrang.jpg','Nha Trangの人にとってbun cha caは親しい料理である。Bun cha caはベトナムの色々なところにあるが、Nha Trangのbun cha caは麺が小さく、cha caの味が濃いと いうNha Trangの特徴である。'),
	(77,'food_southern_center','Nem nướng Ninh Hòa','nemnuongninhhoa.jpg','Nha Trangに旅行する時に、試さないとならないのはnem nuongである。Nem nuongの発祥地はNinh Hoaであるが、今はNha Trangのポピューラな料理で、 旅行者にも人気である。'),
	(78,'food_southern_center','Bánh Căn','banhcannhatrang.jpg','Bun cha caとnem nuongより有名で花が、Banh canの見所は料理人の素早い作り方である。旅行者は誰でも驚くだろう。'),
	(79,'food_southern_center','Bun sua Nha Trang','bunsuanhatrang.jpg','Bun sua Nha Trangを味わう時、スープの味、suaの味と唐辛子の辛さと相まって一丁を食べたらもう一丁食べたくなる。'),
	(80,'food_southern_center','Bánh xeo Phan Thiet','banhxeophanthiet.jpg','Banh xeo Sai Gonと比べて、Banh xeo Phan Thietは小さく、肉が多い。そして特別な魅力がある。'),
	(81,'food_taynguyen','Com lam','comlamdaklak.jpg','Com lamは竹で炊いたご飯で竹の香ばしい香りがして、山林の特産物である。 Com lamは米(普通はもちこめ)と他の材料とを竹に入れ、火で焼く。食べるときは、焦げた外の竹を除いてから、 食べる。 Com lamは美味しく、普通のご飯とは味が違って、外の竹を取ったとたん、香ばしい香りがする。 Com lamはよく胡麻塩や落花生塩と一緒に食べ、もちこめの味の他に竹の香ばしい 香りもする。 Com lamは タイ・グエンの特産物である。'),
	(82,'food_taynguyen','Mon ga nuong Ban Don','ganuongbandon.jpg','この料理は、庭で育てられ、体重が約1キロの鶏を使っている。鶏を焼く前に、自然から取った特別な調味料をつけていた。'),
	(83,'food_taynguyen','コーヒー Buôn Ma Thuột','caphebuonmathuot.jpg','コーヒー Buon Ma Thuotは、昔から存在している有名なブランドである。この地域に来た旅行者は誰でも一度現地人が作ったコーヒーを味わいたいものである。'),
	(84,'food_taynguyen','鹿肉 Dak Lak','thitnaidaklak.jpg','Dak Lakは、生生姜と一緒に食べる焼き鹿肉が有名である。柔ない焼き鹿肉は生姜の辛さと相まって、お酒を飲まなくても酔っちゃうぐらいである。'),
	(85,'food_taynguyen','Ca lang nuong than Dak Nong','calangnuongdaknong.jpg','Ca lang は 野菜、生バナナ、パイナップル、そうめんとbanh cuon に載せ、巻いて、にんにく、レモン、唐辛子と砂糖が入ったヌックマムと食べる。すべての 味が合わせて、美味しい料理ができる。'),
	(86,'food_taynguyen','Banh trang nuong Da Lat','banhtrangnuongdalat.jpg','Banh trang nuong を食べないというのは、Da Latのことが知らないということである。パンの上に乾いた牛肉、ソーセージ、チーズと卵が載せられている。 少し寒い季節でこの料理を食べるのは最高であろう。'),
	(87,'food_east_southern','Banh trang tron','banhtrangtron.jpg','若者のみならず、３０代、４０代の人にも安くて美味しいこの食べ物に人気がある。中には、banh trang, 乾いた牛肉、乾いたイカ、落花生、マンゴ、炒めネギ、唐辛子が 入っている。ホーチミン市で一番有名なところは３区のNguyen Thuong Hien通りであり、この通りではbanh trang tronはずらりと並んでいる。その中で一番美味しいと 言われるのは、Nguyen Thuong Hien通り38番目の\"Chu Vien\"という店である。この店はbanh trang tronひと袋は15.000ドン（約70円）である。'),
	(88,'food_east_southern','Con tam','comtam.jpg','Com tamはホーチミン市民の人気な食べ物である。Com tamは香ばしい焼きsuon heoと、暖かいcha trungと甘すっぱいヌックマムと一緒に食べる。Com tamの美味しさの 秘訣は使うお米である。この米から作ったご飯は普通より少し固めで、ヌックマムの味と非常に会う。一丁は大体25.000~30.000ドン（120~150円）である。'),
	(89,'food_east_southern','Pha lau','phalau.jpg','ホーチミン市に来たら、pha lauを見逃すわけにはいかない。胃、レバーの味と、ドラゴンフルーツ、豚耳の味が合わせ、食べ物が好きな旅行者に魅力的である。 Pha lauのスープは、パンや面などと一緒に食べられるから、軽食でも朝食、昼食、夕食にもなれる。Pha lauは４区で一番有名と言われ、15.000~17.000ドン （75~85円）をする。'),
	(90,'food_east_southern','Kem nhan Sai Gon','kemnhan.jpg','Kem nhanはホーチミン市の名物であり、nhanから作られている。落花生やbanh queと一緒に食べる。値段は12.000ドン(60円)ぐらいである。'),
	(91,'food_east_southern','Banh khot','banhkhotvungtau.jpg','Banh khot Vung Tauは、皮のパサパサと海老の味が有名である。Banh khot Vung Tauは甘すっぱいヌックマムと食べることが多い。'),
	(92,'food_east_southern','Banh bong lan trung muoi','banhbonglantrungmuoi.jpg','Trung muoiの味、banh bong lanの甘さ、バターの香りがあり、子供にも大人にも人気である。値段は25.000~30.000ドン(125~150円)である。'),
	(93,'food_east_southern','エイ鍋','laucaduoi.jpg','Vung TauのTruong Cong Dinh通りでエイ鍋が有名である。これは民間的な食べ物で、Vung Tauの特産物になっている。Truong Cong Dinh通りでは、たくさんの 店が並んでいるが、一番有名と言われるのは40番地のHoang Minhという店である。値段は130.000~200.000ドン(650~1000円)である。雨の日にエイ鍋を食べるのは 最高である。'),
	(94,'food_east_southern','Kem Alibaba','kemalibaba.jpg','アリババアイスクリームは cap treoの下にある小さな店である。店主は１２年にベトナムに住んでいる欧米人であり、ベトナム語がペラペラである。 ここのアイスクリームはdeo, beo, 香ばしい。いちご、レモンなどのアイスは少し酸っぱくて、口に会う。値段は20.000~28.000ドン（100~140円）である。'),
	(95,'food_east_southern','Banh trang me Tay Ninh','banhtrangmetayninh.jpg','me chinの酸っぱさ、唐辛子の辛さ、落花生のbeo gionで忘れにくく、魅力的な食べ物になる。'),
	(96,'food_east_southern','Ga quay xoi phong Binh Duong','gaquayxoiphongbinhduong.jpg','Binh Duongでga quayはおこわとよく食べる。おこわにも、dau den, グリーンピース、落花生、gac, cucなど色々な種類がある。揚げたおこわと、beo, 香ばしga quayと一緒に食べる。Binh Duongに来たら、是非味わってみてください。'),
	(97,'food_mekong_delta','シーフード(Phu Quoc)','haisanphuquoc.jpg','Dinh Cau市場で珍しい魚、エビ、oc, タコなどのシーフードがずらりと並んでいる。'),
	(98,'food_mekong_delta','Gỏi Cá trích','goicatrich.jpg','Phu Quoc島で必ず味わってもらいたい食べ物はgoi ca trichである。魚の体が小さいが、肉が甘く、玉ねぎ、rau ram, かきココナツ、お酢、落花生を入れて、 甘すっぱい味がする。２人前で100.000ドン(500円)となる。'),
	(99,'food_mekong_delta','Nhum','nhumphuquoc.jpg','Nhumの料理を作る時、一番大変なのは、外のトゲを片付けることである。トゲがなくなったら、テニスぐらいの丸い体が残っており、ナイフで半分を切る。 内臓を取り除いた後、黄色い肉の部分が残り、それはnhumの一番貴重な部分である。'),
	(100,'food_mekong_delta','Ghe Ham Ninh','ghehamninh.jpg','Ghe Ham Ninhは小さいが、肉が香ばしく、他のgheと比べて濃い味はする。Gheは色々な作り方があるが、一番美味しいと言われるのは茹でて、レモンを入れた塩コショウと 食べるのである。収穫したばかりのgheは1キロで200.000ドン(100円)がする。'),
	(101,'food_mekong_delta','Tom vo ni','tommuni.jpg','Tom vo niは１キロで300.000ドン（150円）がする。エビの肉は固めで甘い味がする。Phu Quoc島に１月に来たら、卵がいっぱいのエビが食べられる。'),
	(102,'food_mekong_delta','畑ネズミ','chuotdongdongthap.jpg','Dong Thap省に来たら、逃れないのは畑ネズミから作られた料理であり、特にChuot dong khia nuoc duaである。ココナツの香ばしく、beo beoの味と、柔らかい 畑ネズミの肉と相まって、非常に美味しい。'),
	(103,'food_mekong_delta','Ca loc nuong cuon la sen','calocnuong.jpg','焼きフグはメコン・デルタの特産物である。しかし、Dong Thap省では、焼きフグはbanh trangの代わりに若いハスの葉っぱと一緒に食べる。香ばしい焼きフグ、ハスの葉っぱ のパサパサがme入りのヌックマムの味と相まって、Dong Thap省の魅力的な食べ物になっている。\n'),
	(104,'food_mekong_delta','Bánh tằm cà ri','banhtamcari.jpg','Banh tam Ca riはCa Mau省の特産物である。一回食べたら、この土地のことは忘れられないだろう。'),
	(105,'food_mekong_delta','Lươn um lá nhàu','luonumlanhau.jpg','Luon um la nhauは美味しい料理だけでなく、ニキビ、熱、背痛などにも効くと言われている。'),
	(106,'food_mekong_delta','Lẩu mắm U Minh','laumamuminh.jpg','Lau mamはベトナムの高級レストランの定番メニュになっている。基本的な作り方は同じであるが、どの肉、どの魚、どの野菜を使うかは地域によって違う。 しかし、U Minh森のLau mamは濃い味で忘れられないだろう。'),
	(107,'food_mekong_delta','Ba Khía Rạch Gốc','bakhiarachgoc.jpg','Rach GocはCa Mau省にあり、ここは昔ながらの風景の他に、Ba Khiaという昔からの特産物は旅行者にとって魅力的であろう。'),
	(108,'food_mekong_delta','Goi sau dau Chau Doc','goisaudauchaudoc.jpg','この料理は、la sau dauの苦さ、kho ca satのしょっぱい味、マンゴの酸っぱさと野菜の香ばしい味が合わせたものである。'),
	(109,'food_mekong_delta','Goi ba khia Bac Lieu','goibakhiabaclieu.jpg','Ba khiaはカニの一種であり、これはベトナム人の呼び方である。食べる前に、砂糖、唐辛子、にんにく、レモンなどにより味つけられることがある。Ba Khiaを小さく 破り、調味料と混ぜて、１５分ぐらい経ったら食べるのは良い。'),
	(110,'food_mekong_delta','Banh pia Soc Trang','banhpiasoctrang.jpg','Banh PiaはSoc Trang省の昔からの特産物である。生姜茶を飲みながら、Banh Piaを味わっておしゃべりするのは良い。'),
	(111,'world','Ha Log湾','halong.jpg','ハロン湾（ハロンわん、ベトナム語: Vịnh Hạ Long / 泳下龍）は、ベトナム北部、トンキン湾北西部にある湾。漢字表記は下竜湾。 クアンニン省のハロン市の南に位置し、カットバ島のほか大小3,000もの奇岩、島々が存在する。伝承では、中国がベトナムに侵攻してきた時、 竜の親子が現れ敵を破り、口から吐き出した宝石が湾内の島々になったと伝えられている。 カットバ島以外の島は現在は無人だが、約7,000年前 の新石器時代にはわずかに人が住んでいた。また、数世紀前までは海賊の隠れ家として利用され、また モンゴル帝国の侵攻の際には軍事的に利用された。 彫刻作品のような島々の景観は、太陽の位置によって輝きが変化し、雨や霧によってまた趣のある雰囲気を醸し出す。 地質学的には北は桂林（中国広西チワン族 自治区）から、南はニンビンまでの広大な石灰岩台地の一角である。石灰岩台地が沈降し、侵食作用が進んで、現在の姿となった。 1994年にユネスコの世界遺産（自然遺産）に登録。 ユネスコが支援するフランスのNGO世界で最も美しい湾クラブにも加盟している。'),
	(112,'world','Phong Nha-Ke Bang洞窟','phongnha.jpg','フォンニャ＝ケバン国立公園（フォンニャ＝ケバンこくりつこうえん、ベトナム語: Vườn quốc gia Phong Nha-Kẻ Bàng / 園國家峰牙－己榜）[1]は、 ベトナムのクアンビン省にある国立公園である。2003年7月3日、ユネスコによってベトナムで5番目となる世界遺産に登録された。4億年以上前にできたとされる アジア最古のカルスト地帯を擁する[2]。 フォンニャ=ケバン国立公園は、約86,000haの面積をもつ。公園の94%は原生林で、専門家によると568種の植物、876種の動物(大きな獣類113種、爬虫類と 両生類81種、魚類72種、鳥類259種、鳥類302種)が生息しているという。植物には世界とベトナムのレッドブックに入っているものも多い[3]。 大小約300の洞窟がある。これらはまだ詳しく調査されていないが、フォンニャ洞、ティエンソン洞、ヴォム洞など一部が開発されている。洞窟はそれぞれ多様で、 鍾乳洞は非常に美しく幻想的だ。 英国の王立地理学会の報告によると、フォンニャ洞の長さは7,729m、その美しさ、大きさ、広さなどから最高の評価を 与えられている。 ドンホイからは国道1A号線を北に5km程進み、ソンチャック村に続くチューンソン通りを左方向へ、その後船でソン川を30分程進むと到着する[4][5][6]。'),
	(113,'world','Nha Ho城','thanhnhaho.jpg','胡朝の城塞 (ホーちょうのじょうさい、ベトナム語: Thành nhà Hồ / 城家胡)は、ベトナム北部のタインホア省で発掘された、胡朝時代に建てられた遺跡群。 2011年7月にユネスコの世界遺産（文化遺産）に登録されている。'),
	(114,'world','Trang An','trangan.jpg','ベトナム北部に位置するチャン・アン一帯は、石灰岩の山や鍾乳洞からなるカルスト地形で、水田などにも囲まれている。かつてはハロン湾のように海に沈んで いた時代もあるが、現在は隆起によって地上に姿を現し、そのため、「陸のハロン湾」と呼ばれることもある。地下の鍾乳洞は、互いに地下水を通じてつながっている。 この地域には、3万年前から人類が住んでおり、洞窟の中には考古学的な証拠も残る。また10～11世紀のベトナムの古都、ホア・ルーもこの地域にあり、 チャン神殿などを見ることができる。'),
	(115,'world','Thang Long王城','thanhthanglong.jpg','ハノイのタンロン遺跡は、ハノイのホー・チ・ミン廟に近いバーディン地区で発掘された遺跡群です。ハノイの新国会議事堂建設予定地に2003年に発見されました。 ハノイ市街中央部に位置していてハノイの市街からは徒歩圏内で行けます。 7世紀～19世紀までの王城の跡が長層的に残っていて、最も古い遺構は中国が支配していた 時代の安南都護府だったと考えられています。 1010年にリ・タイトーが建都しタンロンとしました。 以来、ベトナム諸王朝の各時代の遺跡があり、現在では、端門、 敬天殿・龍の階段、後楼、北門、フラッグタワー、タンロン遺跡出土品の博物館などがあります。2010年8月にユネスコの世界遺産（文化遺産）に登録されました。 いちばん南側にあるのが端門（Đoan Môn）でタンロン遺跡はここからはいります。前は広い広場になっており、門をくぐると遺跡が一直線上に続いています。端門には 五つの出入り口があり、その両脇に楼閣へ上る階段があります。楼閣からは、南側にフラッグタワーが見え、北門から後楼、敬天殿、と城内の主要な建物が南北に、 一直線上に並んでいたことがわかります。宮殿がは敬天殿でと呼ばれ、残っているのは龍の階段だけですが、現在の建物は、植民地時代にフランスが建てた建物です。 この敬天殿の地下には、ベトナム戦争時代の地下司令部があって見学できます。敬天殿の後ろ(北側)にある三階建ての建物が後楼（Hậu Lâu）です。 皇帝の側室や 女官達の控えの場所だったそうです。遺跡の中は樹木も多く美しい公園になっていて、ハノイの街中のオアシスとも言えます。ホーチミン廟、ハノイ軍事博物館などと 隣接していますので合わせて訪れてみたいところです。見学は、特にチケット売り場もないようで無料で入れます。 参照：http://www.tour.ne.jp/w_review/HAN/sightseeing/spot/114327/'),
	(116,'world','古都 Hue','hue.jpg','フエ（Huế）は、ベトナム中部の都市で、トゥアティエン＝フエ省の省都である。19世紀から20世紀にかけてベトナムに存在していた阮朝の首都に定められていた。 フエはフランス語風にユエと呼ばれることもある[1]。フエの漢字名の「順化（トゥアン・ホア、Thuận Hóa）」は、14世紀に陳朝が設置した順州・化州に由来する。 二つの行政区画のうち、かつてフエの町が属していた「化州」の化の漢字音（hoá）が転訛して、町はフエと呼ばれるようになったと考えられている[1][3][4]。 フランス植民地時代にトゥアン・ホアを訪れた外国人は、町を「スェウナ」「スィネア」「シネア」と呼んでいた[5]。 一部の歴史的建造物がユネスコの世界遺産（文化遺産）に、また宮廷芸能であるニャーニャック（雅楽）が無形文化遺産に登録されている。'),
	(117,'world','古都 Hoi An','hoian.jpg','ホイアン（ベトナム語: Hội An・英: Hoi An, チュノム：會安）とは、ベトナム中部クアンナム省の都市であり、ダナン市の南方30キロ、トゥボン川の河口に位置する 古い港町である。人口121,716人。ヨーロッパ人にはファイフォ 、フェイフォ(Faifo) と呼ばれたこともある[1]。中国人街を中心に古い建築が残り、 1999年（平成11年）に「ホイアンの古い町並み」としてユネスコの世界文化遺産に登録されている。 チャンパ王国時代からの古い港町で、16世紀にチャンパは南に後退し、フエに広南阮氏政権が樹立されると、その外港となった。ホイアンの名称はその頃に成立したと思われる。 16世紀末以降、ポルトガル人、オランダ人、中国人、日本人が来航し国際貿易港として繁栄した。1601年には広南阮氏は、徳川家康に書簡を送って正式な国交を求め、江戸幕府と の取り引きが急速に拡大した。朱印状による約30年間にわたる朱印船貿易のうち、広南には71隻が入港した。ホイアンには大規模な日本人街や中国人街が形成され、1623年には オランダ東インド会社の商館も設けられるなど、繁栄を誇ったが、間もなく江戸幕府の鎖国により、日本人の往来が途絶え、オランダの商館も1639年に閉鎖された。 17世紀後半、清朝と鄭氏台湾との対立から遷界令が出されたことは、さらにこの地域の交易を停滞させ、一時期の繁栄は失われていった。1770年代には、西山（タイソン）党の乱 によって、町は完全に破壊されたが、やがて再建され、19世紀まで繁栄した。しかし、ホイアンと南シナ海を結ぶトゥボン川に、土砂が堆積して川底が浅くなった結果、大型船の 往来に支障を来たす事となり、国際貿易港としての繁栄は、ダナン港へと移行した。 一方で、街並みは残され、ベトナム戦争時代に破壊されることもなく、現在に至るまで当時の繁栄ぶりを今に伝えている。'),
	(118,'world','My Son聖地','mison.jpg','ミーソン聖域（ミーソンせいいき、ベトナム語: Thánh địa Mỹ Sơn / 聖地美山）とは、ベトナム中部クアンナム省にある古代チャンパ王国の聖なる遺跡。1999年、ユネスコの 世界遺産（世界文化遺産）に登録された。 ミーソン聖域はサンスクリットによる正式名称をシュリーシャーナバドレーシュヴァラといい、チャンパ王国の宗教（ヒンドゥー教シヴァ派）の聖域であり、聖山マハーパルヴァタを 望むクアンナム省ズイスエン県ミーソン圏谷にある。ミーソンにはレンガ作りのチャンパ塔など7世紀から13世紀にかけての遺構が残っているが、ベトナム戦争当時の爆撃によって かなり破壊されている。遺跡の近くを大河トゥーボン川が流れており、川の女神を祀る秋盆夫人祠とサンスクリット碑文がある。トゥーボン川の中流には王都チャキエウ遺跡があり、 河口には近世に日本人町が栄えた港町ホイアンがある。 チャンパ王国はサンスクリットによる正式名称をチャンパープラ / チャンパーナガラといい、シュリークシェートラ（ビルマ）、ドヴァーラヴァティー（タイ）、カーンボージャ （カンボジア）、シュリーヴィジャヤ（インドネシア）などと同じ東南アジアにおける中世インド化国家である。チャンパ王国は今日のベトナム中部沿海及び中部高原を支配した。 その支配民族は不明であるが、遺跡からはサンスクリット碑文と共にマレー系（オーストロネシア語族西インドネシア語派）に属する古チャム語碑文が出土しており、チャンパ人 （古チャム人）は現在のチャム族の祖先であると考えられる。ミーソンの現在の住民はモン・クメール系のベト族（キン族）であるが、本来はモン・クメール系のカトゥ族（英語版） の勢力範囲であったことから、カトゥ族の祖先（古カトゥ人）もまた古チャム人と共にチャンパ王国の構成員であったと考えられる。 建造物はグプタ様式や先アンコール期の影響が見られる。建造物にはセメントや漆喰などの接着剤を使った形跡が無く、チャンパ人の当時の技術力の高さを物語っている。チャム族の 伝承によれば、チャンパの彫刻工人、建塔工人の多くは徴用労働者として動員された山岳民族である。周囲に住む山岳民族カトゥ族は現在でも有名な木彫職人を輩出している。 ミーソン聖域は、20世紀初頭にフランス人によって発見され、フランス極東学院 (EFEO) のパルマンチェ、クレイらにより数次にわたり修復、補強がなされた。その一方、フランス領 インドシナ統治時代に盗掘を受け、美術品の多くが失われた。また、ベトナム戦争で南ベトナム解放民族戦線アジト掃討のため、アメリカ空軍・B-52の爆撃を受け、大半の遺跡が破壊された。 ベトナム戦争後はポーランド文化財保護アトリエ (PKZ) のカジミエシュ・クヴィアトコフスキ、ベトナム文化情報省文化財修復公司のホアン・ダオ・キンらにより補強がなされ、石像の一部等 がダナン市のチャム彫刻博物館に移送された。日本のトヨタ財団、アメリカのワールドモニュメントウォッチ財団による保護助成が行われ、現在はイタリア隊が調査を行っている。 また、2005年3月には日本の国際協力機構の技術協力によりミーソン遺跡展示館が完成した。');

/*!40000 ALTER TABLE `Detail` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ Detail_overview
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Detail_overview`;

CREATE TABLE `Detail_overview` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `link` text,
  `name` text,
  `hyper_link` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Detail_overview` WRITE;
/*!40000 ALTER TABLE `Detail_overview` DISABLE KEYS */;

INSERT INTO `Detail_overview` (`id`, `link`, `name`, `hyper_link`)
VALUES
	(1,'local','西北部','westen_north'),
	(2,'local','東北部','east_north'),
	(3,'local','紅川デルタ','red_river_delta'),
	(4,'local','北中部','north_center'),
	(5,'local','南中部','southern_center'),
	(6,'local','タイ・グエン','taynguyen'),
	(7,'local','東南部','east_southern'),
	(8,'local','メコン・デルタ','mekong_delta'),
	(9,'food','西北部','food_westen_north'),
	(10,'food','東北部','food_east_north'),
	(11,'food','紅川デルタ','food_red_river_delta'),
	(12,'food','北中部','food_north_center'),
	(13,'food','南中部','food_southern_center'),
	(14,'food','タイ・グエン','food_taynguyen'),
	(15,'food','東南部','food_east_southern'),
	(16,'food','メコン・デルタ','food_mekong_delta'),
	(17,'spot','西北部','spot_westen_north'),
	(18,'spot','東北部','spot_east_north'),
	(19,'spot','紅川デルタ','spot_red_river_delta'),
	(20,'spot','北中部','spot_north_center'),
	(21,'spot','南中部','spot_southern_center'),
	(22,'spot','タイ・グエン','spot_taynguyen'),
	(23,'spot','東南部','spot_east_southern'),
	(24,'spot','メコン・デルタ','spot_mekong_delta');

/*!40000 ALTER TABLE `Detail_overview` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ local
# ------------------------------------------------------------

DROP TABLE IF EXISTS `local`;

CREATE TABLE `local` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `link` text,
  `link_spot` text,
  `link_food` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `local` WRITE;
/*!40000 ALTER TABLE `local` DISABLE KEYS */;

INSERT INTO `local` (`id`, `link`, `link_spot`, `link_food`)
VALUES
	(1,'east_north','spot_east_north','food_east_north'),
	(2,'westen_north','spot_westen_north','food_westen_north'),
	(3,'red_river_delta','spot_red_river_delta','food_red_river_delta'),
	(4,'north_center','spot_north_center','food_north_center'),
	(5,'southern_center','spot_southern_center','food_southern_center'),
	(6,'taynguyen','spot_taynguyen','food_taynguyen'),
	(7,'east_southern','spot_east_southern','food_east_southern'),
	(8,'mekong_delta','spot_mekong_delta','food_mekong_delta');

/*!40000 ALTER TABLE `local` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ Overview
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Overview`;

CREATE TABLE `Overview` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `link` text,
  `title` text,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Overview` WRITE;
/*!40000 ALTER TABLE `Overview` DISABLE KEYS */;

INSERT INTO `Overview` (`id`, `link`, `title`, `text`)
VALUES
	(1,'all','ベトナム','ベトナム社会主義共和国（ベトナムしゃかいしゅぎきょうわこく、ベトナム語: Cộng\n                    Hoà Xã Hội Chủ Nghĩa Việt Nam / 共和社会主義越南）、通称ベトナム（Việt Nam/越南）は\n                    、東南アジアのインドシナ半島東部に位置する社会主義共和制国家。首都はハノイ。\n                    ASEAN加盟国、通貨はドン、人口9,250万人（2014年末）。国土は南北に細長く、北は中華人民共和国、西はラオス、南西はカンボジアと国境\n                    を接する。東は南シナ海に面し、フィリピンと対する。'),
	(2,'spot_westen_north','西北部','ベトナム北部の西にある山岳部であり、北は中華人民共和国、西はラオスと国境を接する。西北部は偉大なる山岳とここに住んでいる 少数民族の特色な生活が魅力である。ここに住んでいる少数民族の数は２０以上であり、その中でタイ (Thai)民族は一番人数が多い。 タイ民族の踊りや女性の華やかな服装は有名である。有名な観光地として、避暑地のサパ（ Sapa)やモク・チャウ高原（ Cao nguyen Moc Chau)などがある。以下は西北部のおすすめスポットである。 '),
	(3,'spot_east_north','東北部','東北部は紅川デルタの北部にある地域である。この地域では、自然保存地域、国家公園がたくさんあるのみならず、 Ba Be湖、Ban Gioc滝など綺麗な自然がたくさんある。また、アブラヤシ森、茶畑、果物畑、谷に沿った畑、段々畑や 山に隠れた洞窟など多色で、偉大でありながらロマンチックな地域である。さらに、歴史的な遺跡がたくさんある。 また、ここに住んでいる少数民族は昔ながらの文化が残っており、お祭りや伝統的な踊り・ゲームなど、非常に魅力的な 地域である。\n\nhttp://tourdongtaybac.com/mot-so-diem-tham-quan-dang-chu-y-cua-dong-bac-bo/'),
	(4,'spot_red_river_delta','紅川デルタ',NULL),
	(5,'spot_north_center','北中部',NULL),
	(6,'spot_southern_center','南中部',NULL),
	(7,'spot_east_southern','東南部',NULL),
	(8,'spot_mekong_delta','メコン・デルタ',NULL),
	(9,'food_westen_north','西北部',NULL),
	(10,'food_east_north','東北部',NULL),
	(11,'food_red_river_delta','紅川デルタ',NULL),
	(12,'food_north_center','北中部',NULL),
	(13,'food_southern_center','南中部',NULL),
	(14,'food_taynguyen','タイ・グエン',NULL),
	(15,'food_east_southern','北南部',NULL),
	(16,'food_mekong_delta','メコン・デルタ',NULL),
	(17,'spot_taynguyen','タイ・グエン',NULL),
	(18,'local','地域','ベトナムは北部、中部及び南部に分けられる。しかし、もっと細かく分けれと、８つの地域になる。'),
	(19,'world','世界遺産','ベトナムでは、８つの世界遺産がある。'),
	(20,'festival','お祭り','伝統的なお祭りは、国中にあり、非常に豊富である。地域ごとに特色でそれぞれの価値を持っているが、対象となるのが侵略と戦う英雄、仕事の先祖、天災などと戦うことに 貢献した人物であるという共通点がある。そのため、伝統的なお祭りは、国民が交流し、道理や伝統的な美俗を伝えるという役割を果たしている。祭りも、日常的な心配やストレス から解放し、精神的な平穏を求め、自然やルーツにたどる機会になる。ベトナムには、数多くのお祭りがあるが、ここでは、代表的なお祭りを紹介することにする。 '),
	(21,'food','食べ物','ベトナムは\"食べ物の天国\"と言われるくらい食文化が豊富である。'),
	(22,'spot','観光地',NULL),
	(23,'east_north','東北部',NULL),
	(24,'westen_north','西北部',NULL),
	(25,'red_river_delta','紅川デルタ',NULL),
	(26,'north_center','北中部',NULL),
	(27,'southern_center','南中部',NULL),
	(28,'taynguyen','タイ・グエン',NULL),
	(29,'east_southern','東南部',NULL),
	(30,'mekong_delta','メコン・デルタ',NULL);

/*!40000 ALTER TABLE `Overview` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
