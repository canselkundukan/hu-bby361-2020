<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    // Güncelleme işlemi sorgusu
    $kitapKayitNo = mysqli_real_escape_string($baglanti, $_POST['kitapKayitNo']);
    $kitapISBN = mysqli_real_escape_string($baglanti, $_POST['kitapISBN']);
    $kitapAdi = mysqli_real_escape_string($baglanti, $_POST['kitapAdi']);
    $yazarKayitNo = mysqli_real_escape_string($baglanti, $_POST['yazarKayitNo']);
    $yayineviKayitNo = mysqli_real_escape_string($baglanti, $_POST['yayineviKayitNo']);
    $kitapBasimTarihi = mysqli_real_escape_string($baglanti, $_POST['kitapBasimTarihi']);
    $kitapBasimYeri = mysqli_real_escape_string($baglanti, $_POST['kitapBasimYeri']);
    $kitapDil = mysqli_real_escape_string($baglanti, $_POST['kitapDil']);
    $eserAciklama= mysqli_real_escape_string($baglanti, $_POST['eserAciklama']);
    $sorgu = "UPDATE kitap SET kitapISBN = '$kitapISBN', kitapAdi = '$kitapAdi' , yazarKayitNo = '$yazarKayitNo', yayineviKayitNo = '$yayineviKayitNo', kitapBasimTarihi = '$kitapBasimTarihi', kitapBasimYeri  = '$kitapBasimYeri' , kitapDil= '$kitapDil', eserAciklama = '$eserAciklama' WHERE kitapKayitNo = $kitapKayitNo";

    if (mysqli_query($baglanti, $sorgu)) {
        $islemSonuc ="Kayıt başarıyla güncellendi";
    } else {
        $islemSonuc = "Kayıt güncellenirken bir hata oluştu: " . mysqli_error($baglanti);
    }

    mysqli_close($baglanti);

?>
<html>
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="author" content="cansel kundukan">
        <link href="deneme.css" rel="stylesheet"> 
        <title>Kitap Güncelle</title>
        <meta charset="utf-8"/>
    </head>
<video autoplay muted loop id="arkaplan_video">
  <source src="video.mp4" type="video/mp4">
</video>
    <body>
		<div id="alti">
			   <a  href="index.html" >Anasayfa</a>
               <a  href="kitaplistele.php" >Kitap İşlemleri</a>
               <a  href="listele.php" >Yazar İşlemleri</a>
               <a  href="yayinevilistele.php" >Yayınevi İşlemleri</a> 
             
		</div>
        <h1>Kitap Güncelle</h1>
        <h2><?php echo $islemSonuc; ?></h2>
        <p><a id="b" href="kitaplistele.php">Kitap Listesine dön...</a></p>
    </body>
</html>
 
