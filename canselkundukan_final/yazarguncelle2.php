<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    // Güncelleme işlemi sorgusu
    $yazarKayitNo = mysqli_real_escape_string($baglanti, $_POST['yazarKayitNo']);
    $yazarAdi = mysqli_real_escape_string($baglanti, $_POST['yazarAdi']);
    $yazarSoyadi = mysqli_real_escape_string($baglanti, $_POST['yazarSoyadi']);
    $yazarURL = mysqli_real_escape_string($baglanti, $_POST['yazarURL']);
    $sorgu = "UPDATE yazar SET yazarAdi = '$yazarAdi', yazarSoyadi = '$yazarSoyadi', yazarURL = '$yazarURL' WHERE yazarKayitNo = $yazarKayitNo";

    if (mysqli_query($baglanti, $sorgu)) {
        $islemSonuc = "Kayıt başarıyla güncellendi";
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
              
        <h1>Yazar Güncelle</h1>
        <h2><?php echo $islemSonuc; ?></h2>
        <p><a id="b" href="listele.php">Yazar listesine dön...</a></p>
    </body>

</html>