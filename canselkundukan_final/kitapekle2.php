<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    /* Ekleme işlemi sorgusu */
    $kitapISBN = mysqli_real_escape_string($baglanti, $_POST['kitapISBN']);
    $kitapAdi = mysqli_real_escape_string($baglanti, $_POST['kitapAdi']);
    $yazarKayitNo= mysqli_real_escape_string($baglanti, $_POST['yazarKayitNo']);
    $yayineviKayitNo = mysqli_real_escape_string($baglanti, $_POST['yayineviKayitNo']);
    $kitapBasimTarihi= mysqli_real_escape_string($baglanti, $_POST['kitapBasimTarihi']);
    $kitapBasimYeri = mysqli_real_escape_string($baglanti, $_POST['kitapBasimYeri']);
    $kitapDil = mysqli_real_escape_string($baglanti, $_POST['kitapDil']);
    $eserAciklama = mysqli_real_escape_string($baglanti, $_POST['eserAciklama']);
    $sorgu = "INSERT INTO kitap (kitapISBN, kitapAdi, yazarKayitNo, yayineviKayitNo, kitapBasimTarihi, kitapBasimYeri, kitapDil, eserAciklama)
            VALUES ('$kitapISBN', '$kitapAdi', '$yazarKayitNo', '$yayineviKayitNo', '$kitapBasimTarihi', '$kitapBasimYeri', '$kitapDil', '$eserAciklama')";

    if (mysqli_query($baglanti, $sorgu)) {
        $islemSonuc = "Yeni kayıt Başarıyla Oluşturuldu.";
    } else {
        $islemSonuc = "Hata: " . $sorgu . "<br>" . mysqli_error($baglanti);
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
              
        
      <h1>Kitap Ekle</h1>
        <h2><?php echo $islemSonuc; ?></h2>
        <p><a id="b" href="kitapekle.php">Yeni bir kitap ekle!</a></p>
        <p><a id="b" href="kitaplistele.php">Kitap Listesine dön...</a></p>

    </body>

</html>