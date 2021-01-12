<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $guncellenecek = mysqli_real_escape_string($baglanti, $_GET["yayineviKayitNo"]);
    $sorgu = mysqli_query($baglanti, "SELECT * FROM yayinevi WHERE yayineviKayitNo = $guncellenecek");
    $satir = mysqli_fetch_assoc($sorgu)
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
              
        <h1>Yayınevi Güncelle</h1>
        <form action="yayineviguncelle2.php" method="post">
			<label for="ad" style="color:white">Yayınevi Adı:</label><br/>
            <input type="text" value="<?php echo $satir["yayineviAdi"] ;?>" name="yayineviAdi" > <br>
			<label for="ad" style="color:white">YayıneviURL:</label><br/>
            <input type="text" value="<?php echo $satir["yayineviURL"] ;?>" name="yayineviURL"><br>
            <input type="hidden" value="<?php echo $satir["yayineviKayitNo"] ;?>" name="yayineviKayitNo">
            <input id="a" type="submit" value="Kaydı Güncelle">
        </form>
    </body>

</html>