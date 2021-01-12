<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $sorgu = mysqli_query($baglanti, "SELECT * FROM yayinevi");
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
              
 <h1>Yayınevi Listesi</h1>
        <p><a id="b" href="yayineviekle.php">Yeni bir yayınevi ekle!</a></p>
        <?php
            echo("<table border=4 width=80% style=background:rgba(255,255,255,0.7) >");
                echo("<tr>");
                    echo("<td><b>Yayınevi ID</b></td>");
                    echo("<td><b>Yayınevi Kayıt Tarihi</b></td>");
                    echo("<td><b>Yayınevi Adı</b></td>");
                    echo("<td><b>Yayınevi URL</b></td>");
                    echo("<td><b>Güncelle</b></td>");
                    echo("<td><b>Sil</b></td>");
                echo("</tr>");
            /* Sorgu sonuçlarının yazdırılması */
            while($satir = mysqli_fetch_assoc($sorgu)){
                echo("<tr>");
                echo("<td>".$satir["yayineviKayitNo"]."</td>");
                echo("<td>".$satir["yayineviKayitTarih"]."</td>");
                echo("<td>".$satir["yayineviAdi"]."</td>");
                echo("<td><a href=".$satir['yayineviURL']."target='_blank'>".$satir["yayineviURL"]."</a></td>");
                echo("<td><a href='yayineviguncelle.php?yayineviKayitNo=".$satir["yayineviKayitNo"]."'>Güncelle</a></td>");
                echo("<td><a href='yayinevisil.php?yayineviKayitNo=".$satir["yayineviKayitNo"]."'>Sil</a></td>");
                echo("</tr>");
            }
            echo("</table>");
        ?>
    </body>

</html>