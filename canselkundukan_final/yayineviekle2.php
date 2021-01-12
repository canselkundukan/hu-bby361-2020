<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    /* Ekleme işlemi sorgusu */
    $yayineviAdi = mysqli_real_escape_string($baglanti, $_POST['yayineviAdi']);
    $yayineviURL = mysqli_real_escape_string($baglanti, $_POST['yayineviURL']);
    $sorgu = "INSERT INTO yayinevi (yayineviAdi,yayineviURL)
            VALUES ('$yayineviAdi', '$yayineviURL')";

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
              
        
      <h1>Yayınevi Ekle</h1>
        <h2><?php echo $islemSonuc; ?></h2>
        <p><a id="b" href="yayineviekle.php">Yeni bir yayınevi ekle!</a></p>
        <p><a id="b" href="yayinevilistele.php">Yayınevi listesine dön...</a></p>

    </body>

</html>