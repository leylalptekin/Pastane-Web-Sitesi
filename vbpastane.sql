-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 29 Haz 2020, 20:38:59
-- Sunucu sürümü: 10.4.10-MariaDB
-- PHP Sürümü: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `vbpastane`
--
CREATE DATABASE IF NOT EXISTS `vbpastane` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci;
USE `vbpastane`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anasayfa`
--

DROP TABLE IF EXISTS `anasayfa`;
CREATE TABLE IF NOT EXISTS `anasayfa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik1` varchar(500) NOT NULL,
  `altbaslik1` varchar(500) NOT NULL,
  `aciklama1` text NOT NULL,
  `baslik2` varchar(500) NOT NULL,
  `altbaslik2` varchar(500) NOT NULL,
  `aciklama2` text NOT NULL,
  `foto` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `anasayfa`
--

INSERT INTO `anasayfa` (`id`, `baslik1`, `altbaslik1`, `aciklama1`, `baslik2`, `altbaslik2`, `aciklama2`, `foto`) VALUES
(1, 'ÇOK SEVILEN LEZZETLER!', 'YEPYENI TATLAR', '<p>Sabah kahvaltilariniz, g&uuml;n arasinda sicacik bir kahve yaninda&nbsp;keyifle atistirdiginiz&nbsp;o enfes lezzetler simdi bir tik uzaginizda!</p>\r\n', 'GÜLER YÜZLÜ', 'MÜSTERI MENMUNIYETI', '<p>G&uuml;ne baslamak i&ccedil;in magazamiza girdiginizde, size g&uuml;ler y&uuml;zl&uuml; hizmet, davetkar bir atmosfer ve her seyden &ouml;nce en kaliteli malzemelerle yapilmis m&uuml;kemmel &uuml;r&uuml;nler sunmaya adadik.</p>\r\n\r\n<p>Eger memnun degilseniz, l&uuml;tfen bize bildirin ve isleri dogru yapmak i&ccedil;in elimizden geleni yapacagiz!</p>\r\n', 'intro.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimda`
--

DROP TABLE IF EXISTS `hakkimda`;
CREATE TABLE IF NOT EXISTS `hakkimda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` char(50) DEFAULT NULL,
  `baslik` char(50) DEFAULT NULL,
  `altbaslik` char(50) DEFAULT NULL,
  `aciklama` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `hakkimda`
--

INSERT INTO `hakkimda` (`id`, `foto`, `baslik`, `altbaslik`, `aciklama`) VALUES
(1, 'about.jpg', 'GÜZEL PASTA, GÜÇLÜ TATLAR', 'PASTANEMIZ HAKKINDA', '<p style=\"text-align:justify\">Oldugu sehrin bulusma noktasi. Bazen bir kahve, bazen bir &ccedil;ikolata ile hayata eklenen bir tat. Anlarin, anilarin, hayata iz birakan kutlamalarin tanigi. Istanbul&rsquo;da baslayan, yillar i&ccedil;inde sinir tanimayan ama hep &ldquo;bizden&rdquo; kalan bir lezzet ustasi.</p>\r\n\r\n<p style=\"text-align:justify\">Ilk g&uuml;nden bug&uuml;ne tarifi bizde sakli olan &ouml;zel &ccedil;ikolatalarimiz, her biri kendine has re&ccedil;etelerle &uuml;retilen essiz &uuml;r&uuml;nlerimiz ve butik pastalarimizla, bug&uuml;n geleneklerinden kopmadan yenilik&ccedil;i yaklasimlarla m&uuml;sterilerimize &ouml;zel deneyimler yaratmaya devam ediyoruz. Her biri bir Lezzet Klasigi haline gelen lezzetlerden Rokoko, butik pastalar, usta ellerin hazirladigi el yapimi &ccedil;ikolatalar, prenses badem, krep dantel, yaprak nane gibi bir&ccedil;ok lezzet ile, bug&uuml;n de, ilk g&uuml;nk&uuml; heyecan ve tutkuyu, mutlulugun oldugu her yere ulastirmaya devam ediyor.</p>\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

DROP TABLE IF EXISTS `iletisim`;
CREATE TABLE IF NOT EXISTS `iletisim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adSoyad` char(50) NOT NULL,
  `mail` char(50) NOT NULL,
  `mesaj` varchar(5000) NOT NULL,
  `tarih` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `iletisim`
--

INSERT INTO `iletisim` (`id`, `adSoyad`, `mail`, `mesaj`, `tarih`) VALUES
(60, 'pinar', 'asd@gmail.com', 'deneme2\r\n', '2020-06-28 18:54:32'),
(59, 'Pinar SAVCI', 's@gmail.com', 'deneme1', '2020-06-28 17:44:14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

DROP TABLE IF EXISTS `kullanici`;
CREATE TABLE IF NOT EXISTS `kullanici` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Kadi` char(50) NOT NULL,
  `Parola` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`id`, `Kadi`, `Parola`) VALUES
(1, 'admin', '1234'),
(2, 'savci', '1236');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `magaza`
--

DROP TABLE IF EXISTS `magaza`;
CREATE TABLE IF NOT EXISTS `magaza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ustBaslik` char(50) NOT NULL DEFAULT '0',
  `anaBaslik` varchar(500) NOT NULL DEFAULT '0',
  `adres` char(250) NOT NULL DEFAULT '0',
  `telefon` char(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `magaza`
--

INSERT INTO `magaza` (`id`, `ustBaslik`, `anaBaslik`, `adres`, `telefon`) VALUES
(1, 'HOSGELDINIZ!', 'ÇALISMA SAATLERI', '<p><strong>ISTANBUL\\BEYLIKD&Uuml;Z&Uuml;</strong></p>\r\n', '0555 555 55 55');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `magazasaat`
--

DROP TABLE IF EXISTS `magazasaat`;
CREATE TABLE IF NOT EXISTS `magazasaat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gun` char(50) NOT NULL,
  `saat` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `magazasaat`
--

INSERT INTO `magazasaat` (`id`, `gun`, `saat`) VALUES
(1, 'Pazartesi', '08:00 - 20:00'),
(2, 'Salı', '08:00 - 20:00'),
(3, 'Çarşamba', '08:00 - 20:00'),
(4, 'Perşembe', '08:00 - 20:00'),
(5, 'Cuma', '08:00 - 20:00'),
(6, 'Cumartesi', '08:00 - 12:00'),
(7, 'Pazar', 'Kapalı');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunkategori`
--

DROP TABLE IF EXISTS `urunkategori`;
CREATE TABLE IF NOT EXISTS `urunkategori` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `kbaslik` char(70) NOT NULL,
  `ksira` int(11) NOT NULL,
  PRIMARY KEY (`kid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urunkategori`
--

INSERT INTO `urunkategori` (`kid`, `kbaslik`, `ksira`) VALUES
(1, 'Kahve', 0),
(2, 'Pasta', 4),
(3, 'Tatli & Tuzlu', 3),
(4, 'Ekmek & Sandviç', 2),
(8, 'Hediyelikler', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

DROP TABLE IF EXISTS `urunler`;
CREATE TABLE IF NOT EXISTS `urunler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `katid` int(11) NOT NULL DEFAULT 1,
  `baslik` varchar(250) NOT NULL DEFAULT '0',
  `altbaslik` varchar(250) NOT NULL DEFAULT '0',
  `foto` char(50) NOT NULL DEFAULT '0',
  `aciklama` text NOT NULL,
  `aktif` int(11) NOT NULL DEFAULT 1,
  `sira` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `katid` (`katid`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `katid`, `baslik`, `altbaslik`, `foto`, `aciklama`, `aktif`, `sira`) VALUES
(53, 4, 'Kasar peynirli Kruvasan', 'Sicak, Taze ve Lezzetli', 'kruvasan.jpeg', '<p>Bol tereyagli, agizda dagilan enfes bir Fransiz klasigi olan kruvasan; Ustalarimizin&nbsp;uzmanligi ile &ouml;zenle hazirlaniyor. Arasinda taze kasar peyniri ile sunulan bu enfes lezzet kahvaltilariniz ve g&uuml;n arasi atistirmaliklarinizin vazge&ccedil;ilmezi olacak.&nbsp;</p>\r\n\r\n<p>&Ccedil;ok sevilen&nbsp;Kasar Peynirli Kruvasan lezzetini hemen kesfedin.&nbsp;</p>\r\n', 1, 1),
(54, 4, 'Beyaz Peynirli ve Zeytin Ezmeli Sandviç ', 'SICAK, TAZE VE LEZZETLI', 'sandvic.jpeg', '<p>Eksi mayali&nbsp;kepekli ekmek arasinda beyaz peynir ve zeytin ezmesinin enfes uyumunu kesfedin.&nbsp;</p>\r\n', 1, 1),
(55, 4, 'Anadolu Ekmek', 'Sicak, Taze ve Lezzetli', 'anadolu-ekmek.jpeg', '<p><strong>Anadolu&nbsp;Ekmek - 350&nbsp;g</strong></p>\r\n\r\n<p>Lezzet uzmanligi ile hazirlanan enfes Anadolu Ekmek; dogal maya ile k&ouml;y kokusu ve k&ouml;y lezzetini kesfedin.</p>\r\n', 1, 1),
(56, 4, 'Hindi Fümeli Sandviç', 'Sicak, Taze ve Lezzetli', 'roastbeef.jpeg', '<p>Eksi mayali&nbsp;kepekli ekmek arasinda&nbsp;hindi f&uuml;me, kasar peyniri ve &ouml;zel sosun&nbsp;enfes uyumunu kesfedin.&nbsp;</p>\r\n', 1, 1),
(57, 4, 'Zeytinli Ciabatta Ekmek', 'Sicak, Taze ve Lezzetli', 'ciabatta.jpeg', '<p>Lezzet uzmanligi ile hazirlanan eksi mayali, kekikli ve zeytinli enfes bir ekmek: Divan Zeytinli Ciabatta Ekmek!</p>\r\n\r\n<p>Zeytinli Ciabatta Ekmek besleyici ve doyurucudur ve sindirime yardimci olur.</p>\r\n', 1, 1),
(58, 2, 'Çilekli Bütün Pasta', 'En Yeni Lezzetler!', 'cilekli-butun.png', '<p>En mutlu g&uuml;n&uuml;n&uuml;ze hak ettigi lezzeti katacak; taze &ccedil;ilekler ve ince dogranmis bademlerle s&uuml;slenmis r&uuml;ya gibi bir yas pasta. Nasil g&ouml;r&uuml;n&uuml;yorsa &ouml;yle. Yani; hem hafif hem de leziz mi leziz!</p>\r\n', 1, 1),
(59, 2, 'Petit Four Piramit', 'En Yeni Lezzetler!', 'piramit.png', '<p>Lezzetin essiz piramit pasta lezzetini minik lokmalar olarak yeniden yorumladigimiz bu taze lezzet, size enfes &ccedil;ikolatali ganajla s&uuml;slenmis yepyeni ve taze bir atistirmalik sunuyor.</p>\r\n', 1, 1),
(60, 2, 'Tutti Frutti Bütün Pasta', 'En Yeni Lezzetler!', 'frutti.jpeg', '<p>Onu ilk g&ouml;rd&uuml;g&uuml;n&uuml;zde hissedeceginiz duygular; tipki &ouml;glen sicaginda bir agacin altindaki serinlik, belki de sahilde limonatanizi yudumlarken denizden gelen ufak bir esinti ya da sadece serin bir yaz aksami...Tutti Frutti B&uuml;t&uuml;n Pasta, yaz meyvelerinin coskusunu ve serinligini sofralariniza tasimak &uuml;zere taze kremasi ve dilim meyveleriyle sizi bekliyor.</p>\r\n', 1, 1),
(61, 2, 'Orkide Özel Gün Pastasi', 'En Yeni Lezzetler!', 'orkide.jpeg', '<p>Asaletin simgesi, zarif ve bir o kadar g&uuml;zel orkidelerle s&uuml;slenmis &lsquo;Orkide&rsquo; &Ouml;zel G&uuml;n&nbsp;Pastasi, ihtisamli g&ouml;r&uuml;n&uuml;m&uuml;n&uuml; de tipki gibi doganin mucizesi orkidelerden aldi. Saf ve berrak g&ouml;r&uuml;n&uuml;ml&uuml; beyaz yapraklarin arasinda; kontrast bir sekilde belirginlesen pembe yapraklar ve onlari zarif&ccedil;e sarmalayan yesil dallar... I&ccedil;erigini damak tadiniza hitap edecek sekilde g&uuml;ncelleyebileceginiz bu tarif, &ouml;zel g&uuml;nlerinize siklik katmak ve en mutlu anlarinizi unutulmaz kilmak &uuml;zere tasarlandi. Olduk&ccedil;a sade bir g&ouml;r&uuml;n&uuml;m sunan seker hamuruyla kaplanan pasta 2 katli olarak servis ediliyor ve ortalama 20 kisilik sunuluyor. Nisan pastasi olarak s&uuml;slenen bu tarifi, diger &ouml;zel g&uuml;n ve kutlamalarinizda da tercih edebilir ve konuklariniza leziz anlar yasatabilirsiniz.</p>\r\n', 1, 1),
(62, 2, 'Ormanda Çocuk Dogum Günü Pastasi', 'En Yeni Lezzetler!', 'ormanda.jpeg', '<p>Miniklerin en mutlu g&uuml;n&uuml;ne eslik etmek &uuml;zere; b&uuml;y&uuml;k, genis ve renkli bir orman resmeden iki katli pastamiz &lsquo;Ormanda&rsquo; &Ouml;zel G&uuml;n Pastasi; yaratici detaylarla renklenen ve bir o kadar da lezzetli bir tarif sunuyor. Dogum g&uuml;nlerini t&uuml;m &ccedil;ocuklar i&ccedil;in unutulmaz kilmak &uuml;zere tasarlanan &lsquo;Ormanda&rsquo;; zemininde yer alan ve ormanin g&uuml;r aga&ccedil;larina ithafen incelikle kondurulan yesil detaylari, sirin hayvan motifleri ve palmiyeleriyle sizi ormanda serin bir g&uuml;ne davet ediyor.&nbsp;</p>\r\n', 1, 1),
(63, 2, 'Okyanus Dogum Günü Pastasi', 'En Yeni Lezzetler!', 'okyanus.jpeg', '<p>Dalgalarin ardinda, yepyeni bir d&uuml;nya: Okyanus! Sualti d&uuml;nyasinin eglenceli atmosferini, Divan uzmanligiyla hazirlanmis bu taze pasta tarifine tasiyan &lsquo;Okyanus&rsquo; &Ouml;zel G&uuml;n Pastasi; masmavi bir denize uzanan rengarenk deniz canlilarini resmediyor. Burada kimler yok ki; ahtapot, k&ouml;pek baligi, deniz kabuklari, yosunlar&hellip; Okyanus ve denizlere tutkuyla bagli minikler i&ccedil;in tasarladigimiz bu &ccedil;ok &ouml;zel pasta, yalnizca onlar i&ccedil;in son derece b&uuml;y&uuml;l&uuml; olan bu renkli d&uuml;nyayi sofralara tasimakla kalmiyor, essiz tarifiyle de y&uuml;zleri g&uuml;ld&uuml;r&uuml;yor.&nbsp;</p>\r\n', 1, 1),
(64, 2, 'Tatli Paketim Dogum Günü Pastasi', 'En Yeni Lezzetler!', 'tatli-paket.jpeg', '<p>Hayati dolu dolu yasayan, renkli b&uuml;nyelere &ouml;zel olarak tasarlanan &lsquo;Tatli Paketim&rsquo; &Ouml;zel G&uuml;n Pastasi, hem renkleri hem de detaylariyla hareketli bir pasta tasarimi sunuyor. Isminden de referansla, bir hediye paketini andiran bu &ouml;zel tarif, renkli s&uuml;slemelerin merkezinde oldugu kare bi&ccedil;iminde bir tasarima sahip.&nbsp;</p>\r\n', 1, 1),
(65, 2, 'Çiçek Kutusu Özel Gün Pastasi', 'En Yeni Lezzetler!', 'cicek-kutusu.jpeg', '<p>&Ccedil;i&ccedil;ekler kadar zarif bir dogum g&uuml;n&uuml; pastasi istiyorsaniz &lsquo;&Ccedil;i&ccedil;ek Kutusu&rsquo; &Ouml;zel G&uuml;n Pastasi tam size g&ouml;re bir tasarim. Sade renkleri, zarif &ccedil;i&ccedil;ekleri ve retro g&ouml;r&uuml;n&uuml;ml&uuml; &ccedil;i&ccedil;ek kutusuyla sik bir b&uuml;t&uuml;nl&uuml;k saglayan bu &ouml;zel pasta, lezzetiyle de bu mutlu g&uuml;n&uuml;n&uuml;ze ortak olacak.</p>\r\n', 1, 1),
(66, 3, 'Tuzlu Kurabiye', 'En Taze Lezzetler!', 'tuzlu-kurabiye.jpeg', '<p>&Ccedil;ayin yaninda, tatlilar kadar hatiri vardir tuzlularin. &Ccedil;ayin tadini daha iyi almanizi saglar, sohbete eslik eder ve yumusacik tarifleriyle damaginizi tazeler. Hele bir de malzemeden sakinilmadiysa ve her bir re&ccedil;ete &ouml;zel olarak hazirlandiysa tuzlu kurabiye ve pastalarin tadi bambaska olur.</p>\r\n', 1, 1),
(67, 3, 'Sade Mini Mekik ', 'En Taze Lezzetler!', 'sade-mini-mekik.jpeg', '<p>Hi&ccedil; efor sarf etmenize gerek kalmadan, yalnizca tadina odaklandiginiz bir mekik d&uuml;s&uuml;n&uuml;n. Tahmin ettiginiz &uuml;zere konumuz bir spor antrenmani ya da egzersiz rutini degil. Konumuz, yogun tereyagi aromasiyla hazirlanan ve tadina doyulmayan enfes Sade Mekik; &uuml;stelik atistirmalik mini boyuyla!</p>\r\n', 1, 1),
(68, 3, 'Tahilli Flüt Kraker', 'En Taze Lezzetler!', 'flut-kraker.jpeg', '<p>Hem hafif hem de leziz bir atistirmalik arayisindaysaniz Tahilli Fl&uuml;t Kraker tam size g&ouml;re! Yogun parmesan aromasi ve enfes tahillarla hazirlanmis bu &ccedil;itir lezzeti yaninizdan ayiramayacaksiniz.</p>\r\n', 1, 1),
(69, 4, 'Karisik Tatli Tuzlu Kurabiye', 'En Taze Lezzetler!', 'tatli-tuzlu.jpeg', '<p>Kutu i&ccedil;erisinde bulunan kurabiye &ccedil;esitleri pastanelerin g&uuml;nl&uuml;k &uuml;r&uuml;n &ccedil;esitliligine g&ouml;re degisiklik g&ouml;sterebilir.&nbsp;</p>\r\n', 1, 1),
(70, 3, 'Tavus Kusu Kurabiye Kutusu', 'En Taze Lezzetler!', 'tavus-kusu-kurabiye.jpeg', '<p>Her bir detayiyla sikligini ve lezzetini c&ouml;mert bir bi&ccedil;imde sunan Tavus Kusu Kurabiye Kutusu, i&ccedil;erisinde lezzetin en &ouml;zel kurabiye tariflerinin yer aldigi lezzet dolu bir kutu sunuyor!</p>\r\n', 1, 1),
(71, 3, 'Tatli Kurabiye', 'En Taze Lezzetler!', 'tatli-kurabiye.jpeg', '<p>Sira geldi &lsquo;kurabiye canavarlarinin&rsquo; favorisine: Kurabiye dendiginde akliniza &ccedil;ikolata par&ccedil;alari ve yogun tereyagi kokusu geliyorsa siz de onlardan birisiniz ve kesinlikle dogru yerdesiniz!</p>\r\n', 1, 1),
(72, 8, 'Pralin Bakir Tepsi Hediyelik  Yuvarlak', 'En Yeni Lezzetler!', 'bakir-tepsi-hediyelik.jpeg', '<p>Hafif aromalari tercih edenler i&ccedil;in portakalli, Frenk &uuml;z&uuml;ml&uuml;, frambuazli ve balli pralin &ccedil;ikolatalar; daha cesur tatlarin pesine d&uuml;senler i&ccedil;inse findikli, karamelli, badem ezmeli, fistikli, T&uuml;rk kahveli ve tereyagli tariflerle dolu bu enfes &ccedil;ikolata tepsisi size yeni ve benzersiz bir deneyim yasatacak. &Ouml;zel g&uuml;nlerinize eslik etmek &uuml;zere bakir tonlardaki yuvarlak tepsi &uuml;zerinde sik kurdelelerle servis edilen bu &ouml;zel tasarim, g&ouml;z alici sofralarin bas k&ouml;sesinde yer almaya hazir. Gurme pralin &ccedil;ikolata tarifleri, bu enfes kutuda simdi sizleri bekliyor!</p>\r\n', 1, 1),
(73, 8, 'Pralin Çini Koleksiyon-Kirmizi', 'En Yeni Lezzetler!', 'cini-koleksiyon.jpeg', '<p>Findikli, karamelli, portakalli, Frenk &uuml;z&uuml;ml&uuml;, balli, badem ezmeli, frambuazli, fistikli, T&uuml;rk kahveli ve tereyagli olmak &uuml;zere 10 &ccedil;esit pralin &ccedil;ikolata tarifi sunan bu enfes kutu; ister resmi &nbsp;davetlerinizde isterseniz de &ouml;zel davetlerinizde konuklariniza sunabileceginiz harika bir alternatif.</p>\r\n', 1, 1),
(74, 8, 'Tugrakes Tabak', 'En Taze Lezzetler!', 'tugrakes.jpeg', '<p>Tugrakes Tabak eseri, helozonik anlatimiyla semazenlerin sema rit&uuml;ellerini tasvir eder. Ayrica, ilk kez Hali&ccedil;&#39;in eteklerinde kalintilarina rastlandigi i&ccedil;in detaylarinda Hali&ccedil; saklidir.&nbsp;&nbsp;</p>\r\n', 1, 1),
(75, 8, 'Pralin Pelenk Kutu', 'En Yeni Lezzetler!', 'pelenk.jpeg', '<p>Her biri ayni tazelikte sunulan bu enfes &ccedil;ikolatalar; findik, karamel, portakal, Frenk &uuml;z&uuml;m&uuml;, bal, badem ezmesi, frambuaz, fistik, T&uuml;rk kahvesi ve tereyagi olmak &uuml;zere 10 farkli aroma ile sunuluyor. Sik davetleriniz ya da &ouml;zel g&uuml;nleriniz i&ccedil;in sevdiklerinize zarif ve bir o kadar da leziz bir sunum arayisindaysaniz ihtiyaciniz olan tek sey Pralin Pelenk Kutu.</p>\r\n', 1, 1),
(76, 8, 'Bakir Kubbe Hediyelik', 'En Yeni Lezzetler!', 'kubbe.jpeg', '<p>Agizda dagilan yumusacik &ccedil;ikolata dolgusunu zengin ve farkli aromalarla bir araya getirdigimiz Bakir Kubbe Hediyelik; gurmelere yarasir lezzeti ve bir o kadar sik sunumuyla size en &ouml;zel g&uuml;nlerinizde eslik etmeye hazir. Findikli, karamelli, portakalli, Frenk &uuml;z&uuml;ml&uuml;, balli, badem ezmeli, frambuazli, fistikli, T&uuml;rk kahveli ya da tereyagli...&nbsp;</p>\r\n', 1, 1),
(77, 1, 'Türk Kahvesi', 'En Sicak Lezzetler!', 'turk-kahvesi.jpg', '<p>&Ouml;zel yapim Kahve &ccedil;esitlerimiz mevcuttur.</p>\r\n', 1, 1),
(78, 1, 'Kahve Çesitlerimiz', 'En Sicak Lezzetler!', 'unnamed.jpg', '<p>En Yeni Kahve &Ccedil;esitlerimiz ...</p>\r\n', 1, 1);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `urunler`
--
ALTER TABLE `urunler`
  ADD CONSTRAINT `FK_urunler_urunkategori` FOREIGN KEY (`katid`) REFERENCES `urunkategori` (`kid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
