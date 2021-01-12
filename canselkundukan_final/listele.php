<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $sorgu = mysqli_query($baglanti, "SELECT * FROM yazar");
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
              
 <h1>Yazar Listesi</h1>
        <p><a id="b" href="yazarekle.php">Yeni bir yazar ekle!</a></p>
        <?php
           echo("<table border=4 width=80% style=background:rgba(255,255,255,0.7) >" );
                echo("<tr>");
                    echo("<td><b>Yazar ID</b></td>");
                    echo("<td><b>Yazar Kayıt Tarihi</b></td>");
                    echo("<td><b>Yazar Adı</b></td>");
                    echo("<td><b>Yazar Soyadı</b></td>");
                    echo("<td><b>Yazar URL</b></td>");
                    echo("<td><b>Güncelle</b></td>");
                    echo("<td><b>Sil</b></td>");
                echo("</tr>");
            /* Sorgu sonuçlarının yazdırılması */
            while($satir = mysqli_fetch_assoc($sorgu)){
                echo("<tr>");
                echo("<td>".$satir["yazarKayitNo"]."</td>");
                echo("<td>".$satir["yazarKayitTarihi"]."</td>");
                echo("<td>".$satir["yazarAdi"]."</td>");
                echo("<td>".$satir["yazarSoyadi"]."</td>");
                echo("<td><a href=".$satir['yazarURL']."target='_blank'>".$satir["yazarURL"]."</a></td>");
                echo("<td><a href='yazarguncelle.php?yazarKayitNo=".$satir["yazarKayitNo"]."'>Güncelle</a></td>");
                echo("<td><a href='yazarsil.php?yazarKayitNo=".$satir["yazarKayitNo"]."'>Sil</a></td>");
                echo("</tr>");
            }
            echo("</table>");
        ?>
    </body>

</html>