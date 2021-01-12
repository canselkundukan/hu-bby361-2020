-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Oca 2021, 21:17:59
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
-- Tablo için tablo yapısı `kitap`
--

CREATE TABLE `kitap` (
  `kitapKayitNo` smallint(6) NOT NULL COMMENT 'kitap tablosunun ana anahtarı',
  `kitapKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'kitabın veritabanına kayıt tarihi bilgisi verişmiştir.',
  `kitapAdi` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'kitabın tam adı bilgisi verilmiştir.',
  `kitapISBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'kitabın ISBN bilgisi verilecektir.',
  `kitapBasimTarihi` year(4) NOT NULL COMMENT 'Kitabın basım tarihi bilgisi verilecektir.',
  `kitapBasimYeri` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'kitabın basım yeri bilgisi verilecektir.',
  `kitapDil` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'kitabın dil bilgisi verilecektir.',
  `eserAciklama` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `yayineviKayitNo` int(11) NOT NULL COMMENT 'Yayınevi tablosunun anahtar alanı',
  `yazarKayitNo` int(11) NOT NULL COMMENT 'Yazar tablosunun anahtar alanı'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Kitap Tablosu';

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`kitapKayitNo`, `kitapKayitTarih`, `kitapAdi`, `kitapISBN`, `kitapBasimTarihi`, `kitapBasimYeri`, `kitapDil`, `eserAciklama`, `yayineviKayitNo`, `yazarKayitNo`) VALUES
(1, '2020-11-03 16:42:42', 'Psikoloji Felsefesi ', '9786057928092', 2019, 'Ankara', 'Türkçe', 'Felsefe ile psikolojinin farklı bakış açıları ile ortaya koydukları insan modelleri tarihsel bir seyir ile irdelenmekte, bir bilim olarak psikolojinin sahip olduğu teorik ve metodolojik problemler felsefi bir gözle değerlendirilmektedir.', 1, 1),
(2, '2020-11-03 16:55:35', 'A History of Social Psychology (Sosyal Psikoloji Tarihi)', '9786053603030', 2011, 'İstanbul ', 'İngilizce', 'Kitap bilimin ve sosyal bilimin gelişimi açısından son derece dikkate değer bir dönemi ele alıyor.', 2, 2),
(3, '2020-11-03 17:10:24', 'Ailenin Psikoloji Rehberi ', ' 978975331961', 2006, 'İstanbul ', 'Türkçe', 'Çocuk Sorunları, Gençlik Dönemi Özellikleri, Depresyon, Korkular ve Sosyal Fobi, Stres Başrolü Oynuyor', 3, 3),
(4, '2020-11-03 17:26:35', 'Güçlü Bir Psikoloji İçin Kendi Kendime Terapi', '9786050644500', 2020, 'İstanbul ', 'Türkçe', ' Kitap sağlam psikolojik temeller üzerinde inşa edilmiş ve her bölümü ayrı bir terapi seansı sayılabilecek nitelikte bir terapi kitabı. ', 4, 4),
(5, '2020-11-03 17:38:11', 'Yeni Başlayanlar İçin Psikoloji\r\n', '9786050207699', 2020, 'İstanbul ', 'Türkçe', 'Günlük hayatın küçük problemlerinden akıl hastalıklarına, hafızanın işleyiş mekanizmasından zekâ ve kişilik kuramlarına, Freud ve Jung’tan modern araştırmacılara; zihninizde olup biten ne varsa hepsi bu kapsamlı ama kolay anlaşılır kitapta sizi bekliyor.', 5, 5),
(6, '2020-11-03 17:42:15', 'Edebiyat ve Psikoloji', ' 978975637666', 2006, 'Ankara', 'Türkçe', 'Her iki disiplinin de hem sanat hem bilim oluşları bakımından gözden geçirilerek ve diğerinden yararlanabilecekleri bakir alanlarını sağlamayı amaçlamaktadır.', 6, 6),
(7, '2020-11-03 18:57:38', 'Bilimin Işığında Psikoloji ve Dehaları', ' 978994430014', 2007, 'Ankara', 'Türkçe', 'Bu kitap, öğrencilere ve öğretmenlere katkı sağlamasının yanı sıra, ilgi duyan herkesin rahatlıkla faydalanıp zevkle okuyabilmesi amacıyla hazırlanmıştır.', 7, 7),
(8, '2020-11-03 19:06:29', 'Psikoloji Sözlüğü', '9786052690215', 2018, 'İstanbul ', 'Türkçe', 'Bir psikoloğun kitaplığında olması gereken bu sözlük; psikolojiye ilgi duyanların yanı sıra öğrenciler, öğretmenler ve akademisyenler için de başvuru kaynağı niteliğindedir.', 8, 8),
(9, '2020-11-03 19:11:33', 'Maladie Mentale Et Psychologie (Akıl Hastalığı ve Psikoloji)', '9789755397436', 2013, 'İstanbul ', 'İngilizce', 'Althusser’in ricası üzerine öğrenci kitlesine yönelik hazırlanmış olan bu eser, günümüzde Michel Foucault’nun düşünsel serüvenini anlamak isteyenler için belki de en iyi başlangıç metni olarak okunabilir', 9, 9),
(10, '2020-11-03 19:25:10', 'Psikolojik Otobiyografi', '9786053751212', 2013, 'İstanbul ', 'Türkçe', '\"Nasıl ki dünya edebiyatında, modern düzyazı alanında İngiltere\'yi Joyce, Fransa\'yı Proust temsil ediyorsa Hermann Broch da yeni Alman düzyazısını temsil eder.\" -Rudolf Brunngraber-', 10, 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `yayineviKayitNo` int(11) NOT NULL COMMENT 'Yayınevi tablosunun anahtar alanı',
  `yayineviKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'yayınevi kayıt tarih bilgisi',
  `yayineviAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'yayınevi tam adı ',
  `yayineviURL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'yayınevi web sitesi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yayınevi Tablosu';

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`yayineviKayitNo`, `yayineviKayitTarih`, `yayineviAdi`, `yayineviURL`) VALUES
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
(1, '2020-11-03 16:46:21', 'Nurten ', 'Gökalp', 'https://www.kitapyurdu.com/yazar/nurten-gokalp/143147.html'),
(2, '2020-11-03 17:02:24', 'Gustav ', 'Jahoda ', 'https://en.wikipedia.org/wiki/Gustav_Jahoda'),
(3, '2020-11-03 17:14:33', 'Alanur', 'Özalp', 'https://www.dr.com.tr/yazar/alanur-ozalp/s=270105'),
(4, '2020-11-03 17:27:58', 'Ömer ', 'Güçlü', 'https://www.kitapyurdu.com/yazar/omer-guclu/183270.html'),
(5, '2020-11-03 17:40:55', 'G. Neil ', 'Martin', 'https://www.kitapyurdu.com/yazar/g-neil-martin/224000.html'),
(6, '2020-11-03 17:43:30', 'İsmet', 'Emre', 'https://www.idefix.com/yazar/ismet-emre-/s=263012'),
(7, '2020-11-03 19:01:10', 'Fahrettin ', 'Tos', 'https://www.kitapyurdu.com/yazar/fahrettin-tos/19185.html'),
(8, '2020-11-03 19:08:14', ' Ahmet Murat ', 'Seyrek', 'https://www.dr.com.tr/Yazar/ahmet-murat-seyrek/s=10057103'),
(9, '2021-01-12 20:13:40', 'Michel', ' Foucault', 'https://www.dr.com.tr/Yazar/michel-foucault/s=149167'),
(10, '2021-01-12 20:12:29', 'Hermann', ' Broch ', 'https://www.dr.com.tr/Yazar/hermann-broch/s=247703');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitap`
--
ALTER TABLE `kitap`
  ADD PRIMARY KEY (`kitapKayitNo`);

--
-- Tablo için indeksler `yayinevi`
--
ALTER TABLE `yayinevi`
  ADD PRIMARY KEY (`yayineviKayitNo`);

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
  MODIFY `kitapKayitNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'kitap tablosunun ana anahtarı', AUTO_INCREMENT=37;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `yayineviKayitNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi tablosunun anahtar alanı', AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `yazarKayitNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yazar tablosunun anahtar alanı', AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
