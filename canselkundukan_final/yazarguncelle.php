<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $guncellenecek = mysqli_real_escape_string($baglanti, $_GET["yazarKayitNo"]);
    $sorgu = mysqli_query($baglanti, "SELECT * FROM yazar WHERE yazarKayitNo = $guncellenecek");
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
              
        <h1>Yazar Güncelle</h1>
        <form action="yazarguncelle2.php" method="post">
			<label for="ad" style="color:white">Yazar Adı:</label><br/>
            <input type="text" value="<?php echo $satir["yazarAdi"] ;?>" name="yazarAdi" ><br>
			<label for="ad" style="color:white">Yazar Soyadı:</label><br/>
            <input type="text" value="<?php echo $satir["yazarSoyadi"] ;?>" name="yazarSoyadi"><br>
			<label for="ad" style="color:white">YazarURL:</label><br/>
            <input type="text" value="<?php echo $satir["yazarURL"] ;?>" name="yazarURL" ><br>
            <input type="hidden" value="<?php echo $satir["yazarKayitNo"] ;?>" name="yazarKayitNo">
            <input id="a" type="submit" value="Kaydı Güncelle" >
        </form>
    </body>

</html>