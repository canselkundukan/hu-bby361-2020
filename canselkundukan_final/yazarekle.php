
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
		
		<div id="yazar">
              <h1>Kitap Ekle</h1>
        <form action="yazarekle2.php" method="post">
			<label for="ad" style="color:white">Yazar Adı:</label><br/>
            <input type="text" name="yazarAdi" ><br>
			<label for="ad" style="color:white">Yazar Soyadı:</label><br/>
            <input type="text" name="yazarSoyadi" ><br>
			<label for="ad" style="color:white"> YazarURL</label><br/>
            <input type="text" name="yazarURL" ><br>
            <input id="a" type="submit" value="Yeni Kayıt Ekle" >
        </form>
		</div>
    </body>

</html>