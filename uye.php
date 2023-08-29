
<?php include("bagla.php");
if($_POST){
$adi=$_POST['ad'];
$soyadi=$_POST['soyad'];
$tel=$_POST['tel'];
$adres=$_POST['adres'];
$mail=$_POST['mail'];
$kad=$_POST['kadi'];
$sifre=$_POST['sifre'];


$sqleo="INSERT INTO `tbl_kullanici_kayit`(`kul_id`, `kul_ismi`,`kul_soyismi`, `kul_tel`, `kul_adres`, `kul_mail`, `kul_adi`, `kul_sifresi` ,`kul_tarih`) VALUES 
(NULL, \"$adi\", \"$soyadi\", \"$tel\", \"$adres\",\"$mail\",\"$kad\",\"$sifre\", current_timestamp())";


if($bagla->query($sqleo)){
	
	header("Location:giris.php");
	}


}

?>
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
      
        <a href="#" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">

        
          <nav class="navbar-expand-lg navbar-dark bg-dark">



        <div class="text-end">

        </div>
      </div>
    </div>
  </header>

<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">
            <form action="#" method="post" name="form1" id="form1" >


<div class="container w-50">
<div class="row g-3">
  <div class="col mt-4">
  <label for="ad" class="form-label">Adınız:</label>
    <input type="text" class="form-control" name="ad" id="ad" placeholder="Adınız" >
  </div>
  </div>
</div>

 
  <div class="container w-50">
  <div class="col mt-2">
  <label for="soyad" class="form-label">Soyadınız:</label>
    <input type="text" class="form-control" name="soyad" id="soyad" placeholder="Soyadınız" >
  </div>
</div>

 <div class="container w-50">
  <div class="col mt-2">
  <label for="adres" class="form-label">Adresiniz:</label>
    <input type="text" class="form-control" name="adres" id="adres" placeholder="Adresiniz" >
  </div>
</div>

<div class="container w-50">
<div class="col-12 mt-2">
  <label for="mail" class="form-label">E-posta Adresiniz:</label>
    <input type="text" class="form-control" name="mail" id="mail" placeholder="ornek@example.com" >
</div>
</div>


<div class="container w-50">
<div class="col-12 mt-2">
  <label for="tel" class="form-label">Telefon No:</label>
  <input type="text" class="form-control"  name="tel" id="tel"  placeholder="0555-555-55-55">
</div>
</div>

<div class="container w-50">


<div class="col-12">
<label for="kadi" class="form-label">Kullanıcı Adınız:</label>
  <label class="visually-hidden" for="kadi"></label>
  <div class="input-group">
    
    <input type="text" class="form-control"  name="kadi" id="kadi" placeholder="Kullanıcı Adınızı Girin">
  </div>
</div>
</div>



<div class="container w-50">
<div class="form-group row mt-1">
<div class="col-12">
<label for="sifre" class="form-label">Şifre:</label>
<input type="password" class="form-control"name="sifre" id="sifre" placeholder="Şifrenizi Girin">
 
</div>
</div>

</div>


<div class="container w-50">
  <div class="form-group row mt-4">
  <div class="col-12">
     <button type="submit" class="btn btn-primary">Kayıt Ol</button>
  </div>
  </div>
</div>
</form>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>