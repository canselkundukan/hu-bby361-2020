-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 30 Kas 2020, 21:18:10
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `canselkundukan_01`
--
CREATE DATABASE IF NOT EXISTS `canselkundukan_01` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `canselkundukan_01`;

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `basımyılıveyeri`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `basımyılıveyeri` (
`kitapKayitNo` smallint(6)
,`kitapKayitTarih` timestamp
,`kitapAdi` varchar(250)
,`kitapISBN` varchar(13)
,`kitapBasımTarihi` year(4)
,`kitapBasımYeri` varchar(50)
,`kitapDil` varchar(50)
,`yayinevKayitNo` int(11)
,`yazarKayitNo` int(11)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `dilbilgisi`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `dilbilgisi` (
`kitapKayitNo` smallint(6)
,`kitapKayitTarih` timestamp
,`kitapAdi` varchar(250)
,`kitapISBN` varchar(13)
,`kitapBasımTarihi` year(4)
,`kitapBasımYeri` varchar(50)
,`kitapDil` varchar(50)
,`yayinevKayitNo` int(11)
,`yazarKayitNo` int(11)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap`
--

CREATE TABLE `kitap` (
  `kitapKayitNo` smallint(6) NOT NULL COMMENT 'kitap tablosunun ana anahtarı',
  `kitapKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'kitabın veritabanına kayıt tarihi bilgisi verişmiştir.',
  `kitapAdi` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'kitabın tam adı bilgisi verilmiştir.',
  `kitapISBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'kitabın ISBN bilgisi verilecektir.',
  `kitapBasımTarihi` year(4) NOT NULL COMMENT 'Kitabın basım tarihi bilgisi verilecektir.',
  `kitapBasımYeri` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'kitabın basım yeri bilgisi verilecektir.',
  `kitapDil` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'kitabın dil bilgisi verilecektir.',
  `yayinevKayitNo` int(11) NOT NULL COMMENT 'Yayınevi tablosunun anahtar alanı',
  `yazarKayitNo` int(11) NOT NULL COMMENT 'Yazar tablosunun anahtar alanı'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Kitap Tablosu';

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`kitapKayitNo`, `kitapKayitTarih`, `kitapAdi`, `kitapISBN`, `kitapBasımTarihi`, `kitapBasımYeri`, `kitapDil`, `yayinevKayitNo`, `yazarKayitNo`) VALUES
(1, '2020-11-03 16:42:42', 'Psikoloji Felsefesi ', '9786057928092', 2019, 'Ankara', 'Türkçe', 1, 1),
(2, '2020-11-03 16:55:35', 'A History of Social Psychology (Sosyal Psikoloji Tarihi)', '9786053603030', 2011, 'İstanbul ', 'İngilizce', 2, 2),
(3, '2020-11-03 17:10:24', 'Ailenin Psikoloji Rehberi ', ' 978975331961', 2006, 'İstanbul ', 'Türkçe', 3, 3),
(4, '2020-11-03 17:26:35', 'Güçlü Bir Psikoloji İçin Kendi Kendime Terapi', '9786050644500', 2020, 'İstanbul ', 'Türkçe', 4, 4),
(5, '2020-11-03 17:38:11', 'Yeni Başlayanlar İçin Psikoloji\r\n', '9786050207699', 2020, 'İstanbul ', 'Türkçe', 5, 5),
(6, '2020-11-03 17:42:15', 'Edebiyat ve Psikoloji', ' 978975637666', 2006, 'Ankara', 'Türkçe', 6, 6),
(7, '2020-11-03 18:57:38', 'Bilimin Işığında Psikoloji ve Dehaları', ' 978994430014', 2007, 'Ankara', 'Türkçe', 7, 7),
(8, '2020-11-03 19:06:29', 'Psikoloji Sözlüğü', '9786052690215', 2018, 'İstanbul ', 'Türkçe', 8, 8),
(9, '2020-11-03 19:11:33', 'Maladie Mentale Et Psychologie (Akıl Hastalığı ve Psikoloji)', '9789755397436', 2013, 'İstanbul ', 'İngilizce', 9, 9),
(10, '2020-11-03 19:25:10', 'Psikolojik Otobiyografi', '9786053751212', 2013, 'İstanbul ', 'Türkçe', 10, 10);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `kutuphane`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `kutuphane` (
`kitapAdi` varchar(250)
,`AdSoyad` varchar(100)
,`yayineviAdi` varchar(100)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayınevi`
--

CREATE TABLE `yayınevi` (
  `yayinevKayitNo` int(11) NOT NULL COMMENT 'Yayınevi tablosunun anahtar alanı',
  `yayineviKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'yayınevi kayıt tarih bilgisi',
  `yayineviAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'yayınevi tam adı ',
  `yayineviURL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'yayınevi web sitesi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yayınevi Tablosu';

--
-- Tablo döküm verisi `yayınevi`
--

INSERT INTO `yayınevi` (`yayinevKayitNo`, `yayineviKayitTarih`, `yayineviAdi`, `yayineviURL`) VALUES
(1, '2020-11-03 16:48:27', 'Nobel Akademik Yayıncılık', 'https://www.nobelyayin.com/'),
(2, '2020-11-03 17:08:06', 'İş Bankası Kültür Yayınları', 'https://www.iskultur.com.tr/'),
(3, '2020-11-03 17:15:02', 'Epsilon Yayınevi', 'https://www.epsilonyayinevi.com/s/iletisim.html'),
(4, '2020-11-03 17:28:35', 'Güçlü Psikoloji Yayınları', 'https://guclupsikoloji.com/yayinevi/'),
(5, '2020-11-03 17:38:42', 'Say Yayınları', 'http://www.sayyayincilik.com/'),
(6, '2020-11-03 17:42:43', 'Anı Yayınları', 'https://aniyayincilik.com.tr/'),
(7, '2020-11-03 18:58:29', 'Kariyer Yayınları', 'https://www.kariyerkitaplari.com/'),
(8, '2020-11-03 19:06:57', 'Yediveren Yayınları', 'https://www.yediveren.com.tr/'),
(9, '2020-11-03 19:12:46', 'Ayrıntı Yayınları', 'https://www.ayrintiyayinlari.com.tr/'),
(10, '2020-11-03 19:27:09', 'İthaki Yayınları', 'http://www.ithaki.com.tr/');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `yazarKayitNo` smallint(6) NOT NULL COMMENT 'Yazar tablosunun anahtar alanı',
  `yazarKayitTarihi` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'yazar kayır tarih bilgisi. ',
  `yazarAdi` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'yazar tam adı',
  `yazarSoyadi` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'yazar tam soyadı',
  `yazarURL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'yazar ek bilgi adresi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yazar Tablosu';

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`yazarKayitNo`, `yazarKayitTarihi`, `yazarAdi`, `yazarSoyadi`, `yazarURL`) VALUES
(1, '2020-11-03 16:46:21', 'Nurten ', 'Gökalp', 'https://www.biyografya.com/biyografi/10821'),
(2, '2020-11-03 17:02:24', 'Gustav ', 'Jahoda ', 'https://en.wikipedia.org/wiki/Gustav_Jahoda'),
(3, '2020-11-03 17:14:33', 'Alanur', 'Özalp', 'https://www.alopsikolog.net/hipp.asp'),
(4, '2020-11-03 17:27:58', 'Ömer ', 'Güçlü', 'https://guclupsikoloji.com/hakkimizda/omer-guclu/'),
(5, '2020-11-03 17:40:55', 'G. Neil ', 'Martin', 'https://1000kitap.com/yazar/g-neil-martin'),
(6, '2020-11-03 17:43:30', 'İsmet', 'Emre', 'https://www.biyografya.com/biyografi/10695'),
(7, '2020-11-03 19:01:10', 'Fahrettin ', 'Tos', 'https://kidega.com/yazar/fahrettin-tos-115327'),
(8, '2020-11-03 19:08:14', ' Ahmet Murat ', 'Seyrek', 'https://kidega.com/yazar/ahmet-murat-seyrek-186360'),
(9, '2020-11-03 19:14:42', 'Michel ', 'Foucault', 'https://tr.wikipedia.org/wiki/Michel_Foucault'),
(10, '2020-11-03 19:28:28', 'Hermann', ' Broch', 'https://en.wikipedia.org/wiki/Hermann_Broch');

-- --------------------------------------------------------

--
-- Görünüm yapısı `basımyılıveyeri`
--
DROP TABLE IF EXISTS `basımyılıveyeri`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `basımyılıveyeri`  AS SELECT `kitap`.`kitapKayitNo` AS `kitapKayitNo`, `kitap`.`kitapKayitTarih` AS `kitapKayitTarih`, `kitap`.`kitapAdi` AS `kitapAdi`, `kitap`.`kitapISBN` AS `kitapISBN`, `kitap`.`kitapBasımTarihi` AS `kitapBasımTarihi`, `kitap`.`kitapBasımYeri` AS `kitapBasımYeri`, `kitap`.`kitapDil` AS `kitapDil`, `kitap`.`yayinevKayitNo` AS `yayinevKayitNo`, `kitap`.`yazarKayitNo` AS `yazarKayitNo` FROM `kitap` WHERE `kitap`.`kitapBasımTarihi` >= 2010 AND `kitap`.`kitapBasımYeri` = 'İstanbul' ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `dilbilgisi`
--
DROP TABLE IF EXISTS `dilbilgisi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dilbilgisi`  AS SELECT `kitap`.`kitapKayitNo` AS `kitapKayitNo`, `kitap`.`kitapKayitTarih` AS `kitapKayitTarih`, `kitap`.`kitapAdi` AS `kitapAdi`, `kitap`.`kitapISBN` AS `kitapISBN`, `kitap`.`kitapBasımTarihi` AS `kitapBasımTarihi`, `kitap`.`kitapBasımYeri` AS `kitapBasımYeri`, `kitap`.`kitapDil` AS `kitapDil`, `kitap`.`yayinevKayitNo` AS `yayinevKayitNo`, `kitap`.`yazarKayitNo` AS `yazarKayitNo` FROM `kitap` WHERE `kitap`.`kitapDil` = 'Türkçe' ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `kutuphane`
--
DROP TABLE IF EXISTS `kutuphane`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kutuphane`  AS SELECT `ki`.`kitapAdi` AS `kitapAdi`, concat(`ya`.`yazarAdi`,`ya`.`yazarSoyadi`) AS `AdSoyad`, `yay`.`yayineviAdi` AS `yayineviAdi` FROM ((`kitap` `ki` join `yazar` `ya`) join `yayınevi` `yay`) WHERE `ki`.`yayinevKayitNo` = `yay`.`yayinevKayitNo` AND `ki`.`yazarKayitNo` = `ya`.`yazarKayitNo` ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitap`
--
ALTER TABLE `kitap`
  ADD PRIMARY KEY (`kitapKayitNo`);

--
-- Tablo için indeksler `yayınevi`
--
ALTER TABLE `yayınevi`
  ADD PRIMARY KEY (`yayinevKayitNo`);

--
-- Tablo için indeksler `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`yazarKayitNo`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitap`
--
ALTER TABLE `kitap`
  MODIFY `kitapKayitNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'kitap tablosunun ana anahtarı', AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `yayınevi`
--
ALTER TABLE `yayınevi`
  MODIFY `yayinevKayitNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi tablosunun anahtar alanı', AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `yazarKayitNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yazar tablosunun anahtar alanı', AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
