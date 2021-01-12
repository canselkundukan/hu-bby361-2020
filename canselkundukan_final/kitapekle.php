<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $sorgu = mysqli_query($baglanti, "SELECT *, CONCAT(yazarAdi, ' ', yazarSoyadi) AS AdSoyad FROM yazar");
    $sorgu1 = mysqli_query($baglanti, "SELECT *, yayineviAdi FROM yayinevi");

   
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
          <form action="kitapekle2.php" method="post">
            <label for="ad" style="color:white">Kitap ISBN:</label><br/>
            <input type="text" name="kitapISBN" ><br>
            <label for="ad" style="color:white">Kitap Adı:</label><br/>
            <input type="text" name="kitapAdi" ><br>
			<label for="ad" style="color:white">Yazar Adı</label><br/>
            <select name="yazarKayitNo">
        <?php while($satir = mysqli_fetch_assoc($sorgu)){ ?>
        <option style="color:black" value="<?php echo $satir['yazarKayitNo']; ?>"><?php echo $satir['AdSoyad']; ?></option>
        <?php } ?>
    </select> <br>
            <label for="ad" style="color:white">Yayınevi</label><br/>
            <select name="yayineviKayitNo">
        <?php while($satir = mysqli_fetch_assoc($sorgu1)){ ?>
        <option style="color:black" value="<?php echo $satir['yayineviKayitNo']; ?>"><?php echo $satir['yayineviAdi']; ?></option>
        <?php } ?>
    </select> <br>
			 <label for="ad" style="color:white">Basım Yılı</label><br/>
            <input type="text" name="kitapBasimTarihi"><br>
			<label for="ad" style="color:white">Basım Yeri</label><br/>
            <input type="text" name="kitapBasimYeri" ><br>
			<label for="ad"style="color:white">Dil</label><br/>
            <input type="text" name="kitapDil"><br> 
			<label for="ad"style="color:white">Kitap Açıklama</label><br/>
            <input type="text" name="eserAciklama"><br>
    <input id="a" type="submit" value="Yeni kitap Ekle" ><br><br><br><br>
    
           </form>
		
    </body>

</html>