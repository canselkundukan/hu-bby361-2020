<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $sorgu = mysqli_query($baglanti, "SELECT *, K.kitapAdi, CONCAT(Y.yazarAdi,' ', Y.yazarSoyadi) AS AdSoyad, YA.yayineviAdi
            FROM kitap K, yazar Y, yayinevi YA 
            WHERE K.yayineviKayitNo = YA.yayineviKayitNo AND 
            K.yazarKayitNo = Y.yazarKayitNo 
		");
?>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="author" content="cansel kundukan">
    <link href="deneme.css" rel="stylesheet"> 
  
 
	
</head>
    
    <body>
<video autoplay muted loop id="arkaplan_video">
  <source src="video.mp4" type="video/mp4">
</video>
		
		 <div id="alti">
			   <a  href="index.html" >Anasayfa</a>
               <a  href="kitaplistele.php" >Kitap İşlemleri</a>
               <a  href="listele.php" >Yazar İşlemleri</a>
               <a  href="yayinevilistele.php" >Yayınevi İşlemleri</a> 
             
		</div>
			
              
        
        <h1>Kitap Listesi</h1>
        <p><a id="b" href="kitapekle.php" >Yeni bir kitap ekle!</a></p>
		
        <?php
            echo("<table border=4 width=80% style=background:rgba(255,255,255,0.7) >" );
                echo("<tr>");
                    echo("<td><b>Kitap ID</b></td>");
                    echo("<td><b>Kitap Kayıt Tarihi</b></td>");
		            echo("<td><b>Kitap ISBN</b></td>");
                    echo("<td><b>Kitap Adı</b></td>");
                    echo("<td><b>Yazar Adı</b></td>");
		            echo("<td><b>Yayinevi</b></td>");
		            echo("<td><b>Basım Yılı</b></td>");
		            echo("<td><b>Basım Yeri</b></td>");
		            echo("<td><b>Dil</b></td>");
		            echo("<td><b>Kitap Açıklama</b></td>");
                    echo("<td><b>Güncelle</b></td>");
                    echo("<td><b>Sil</b></td>");
                echo("</tr>");
            /* Sorgu sonuçlarının yazdırılması */
            while($satir = mysqli_fetch_assoc($sorgu)){
                echo("<tr>");
                echo("<td>".$satir["kitapKayitNo"]."</td>");
                echo("<td>".$satir["kitapKayitTarih"]."</td>");
				echo("<td>".$satir["kitapISBN"]."</td>");
                echo("<td>".$satir["kitapAdi"]."</td>");
				echo("<td>".$satir["AdSoyad"]."</td>");
                echo("<td>".$satir["yayineviAdi"]."</td>");
				echo("<td>".$satir["kitapBasimTarihi"]."</td>");
				echo("<td>".$satir["kitapBasimYeri"]."</td>");
				echo("<td>".$satir["kitapDil"]."</td>");
				echo("<td>".$satir["eserAciklama"]."</td>");
                echo("<td><a href='kitapguncelle.php?kitapKayitNo=".$satir["kitapKayitNo"]."'>Güncelle</a></td>");
                echo("<td><a href='kitapsil.php?kitapKayitNo=".$satir["kitapKayitNo"]."'>Sil</a></td>");
                echo("</tr>");
            }
            echo("</table>");
        ?>
			
    </body>

</html>