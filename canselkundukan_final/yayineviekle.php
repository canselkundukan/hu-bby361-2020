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
		
		<div id="yayinevi">
              <h1>Yayınevi Ekle</h1>
        <form action="yayineviekle2.php" method="post">
			<label for="ad" style="color:white">Yayınevi Adı:</label><br/>
            <input type="text" name="yayineviAdi" ><br>
			<label for="ad" style="color:white">YayıneviURL</label><br/>
            <input type="text" name="yayineviURL" ><br>
            <input id="a" type="submit" value="Yeni Kayıt Ekle">
        </form>
		</div>
    </body>

</html>