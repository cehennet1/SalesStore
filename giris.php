<?php include("bagla.php") ?>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title><link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
<script type="text/javascript" src="js/bootstrap.js"></script><link rel="stylesheet" type="text/css" href="css/headers.css"/>


      <!--Mouse üzerine gelindiğinde renk değişen/gölgelendirme yapan css dosyasısının entegre edilmesi-->
        <link rel="stylesheet" type="text/css" href="css/mouse.css"/>

</head>

<body>

<header class="p-3 bg-dark text-white">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
      
      <!-- As a heading -->
<nav class="navbar navbar-light">
  <a href="anasayfa.php"><span class="navbar-brand mb-0 h1 text-light">OLÇAR</span></a>
</nav>
      
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">

        
          <nav class="navbar-expand-lg navbar-dark bg-dark">



        <div class="text-end">

        </div>
      </div>
    </div>
  </header>
  
  <?php if($_POST){
	
$kad=$_POST["kad"];
$sifre=$_POST["sif"];


$sql = 'SELECT * FROM tbl_kullanici_kayit';
foreach ($bagla->query($sql) as $row) {
	
if(($kad==$row['kul_adi']) && ($sifre==$row['kul_sifresi']))  {
	
	 header("Location:anasayfa.php");
	 
	}
	else {
		echo header("Location:yangiris.php") ;
		}
		
	
}
}
?>
  
  
  
  

<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">GİRİŞ YAP</h2>
              <p class="text-white-50 mb-5">Giris yapmak için Kullanıcı adı ve Şifrenizi giriniz.</p>

              <div class="form-outline form-white mb-4">
               <label class="form-label" for="kad">Kullanıcı Adı</label>
                <input type="text" id="kad" class="form-control form-control-lg" />
                
              </div>

              <div class="form-outline form-white mb-4">
              <label class="form-label" for="sif">Şifre</label>  
              <input type="password" id="sif" class="form-control form-control-lg" />
                
              </div>

              <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="#!">Şifremi unuttum</a></p>

             <a href="anasayfa.php"> <button class="btn btn-outline-light btn-lg px-5" type="submit">Giriş Yap</button></a>
             
 <a href="hesapsil.php"> <button class="btn btn-outline-warning btn-lg px-5" type="button">Hesabımı Sil</button></a>
             
              <div class="d-flex justify-content-center text-center mt-4 pt-1">
                <a href="#!" class="text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
                <a href="#!" class="text-white"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                <a href="#!" class="text-white"><i class="fab fa-google fa-lg"></i></a>
              </div>

            </div>

            <div>
              <p class="mb-0">Hesabınız yok mu? <a href="uye.php" class="text-white-50 fw-bold">Üye OL</a>
              </p>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>