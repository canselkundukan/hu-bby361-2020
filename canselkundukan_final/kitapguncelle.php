<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $guncellenecek = mysqli_real_escape_string($baglanti, $_GET["kitapKayitNo"]);
    $sorgu = mysqli_query($baglanti, "SELECT * FROM kitap WHERE kitapKayitNo = $guncellenecek");
    $satir = mysqli_fetch_assoc($sorgu);
    $sorgu1 = mysqli_query($baglanti, "SELECT *, CONCAT(yazarAdi, ' ', yazarSoyadi) AS AdSoyad FROM yazar");
    $satir1= mysqli_fetch_assoc($sorgu1);
    $sorgu2 = mysqli_query($baglanti, "SELECT *, yayineviAdi FROM yayinevi");
    $satir2 = mysqli_fetch_assoc($sorgu2);
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
              
        <h1>Kitap Güncelle</h1>
        <form action="kitapguncelle2.php" method="post">
			<label for="ad" style="color:white">Kitap ISBN:</label><br/>
            <input type="text" value="<?php echo $satir["kitapISBN"] ;?>" name="kitapISBN" ><br>
			<label for="ad" style="color:white">Kitap Adı:</label><br/>
            <input type="text" value="<?php echo $satir["kitapAdi"] ;?>" name="kitapAdi"><br>
			<label for="ad" style="color:white">Yazar Adı</label><br/>
            <select name="yazarKayitNo" >
        <?php while($satir1 = mysqli_fetch_assoc($sorgu1)){ ?>
        <option value="<?php echo $satir1['yazarKayitNo']; ?>"><?php echo $satir1['AdSoyad']; ?></option>
        <?php } ?>
    </select> <br><br>
            <label for="ad" style="color:white">Yayınevi</label><br/>
            <select name="yayineviKayitNo" >
        <?php while($satir2 = mysqli_fetch_assoc($sorgu2)){ ?>
        <option value="<?php echo $satir2['yayineviKayitNo']; ?>"><?php echo $satir2['yayineviAdi']; ?></option>
        <?php } ?>
    </select> <br><br>
			<label for="ad" style="color:white">Basım Yılı:</label><br/>
            <input type="text" value="<?php echo $satir["kitapBasimTarihi"] ;?>" name="kitapBasimTarihi" s><br>
			<label for="ad" style="color:white">Basım Yeri:</label><br/>
            <input type="text" value="<?php echo $satir["kitapBasimYeri"] ;?>" name="kitapBasimYeri" ><br>
			<label for="ad" style="color:white">Dil:</label><br/>
            <input type="text" value="<?php echo $satir["kitapDil"] ;?>" name="kitapDil" ><br>
			<label for="ad" style="color:white">Eser Açıklama:</label><br/>
            <input type="text" value="<?php echo $satir["eserAciklama"] ;?>" name="eserAciklama" ><br>
            <input type="hidden" value="<?php echo $satir["kitapKayitNo"] ;?>" name="kitapKayitNo">
            <input id="a" type="submit" value="Kaydı Güncelle" >
        </form>
    </body>

</html>