<?php include("bagla.php"); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" type="text/css" href="css/mycss.css"><link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<style type="text/css">
body {
	background-image: url();
	background-repeat: repeat;
}
</style>
<script src="js/bootstrap.bundle.min.js"></script>
</head>
<body>
<?php 
if($_POST){
$adi=$_POST['ad'];
$soyadi=$_POST['soyad'];
$tel=$_POST['tel'];
$adres=$_POST['adres'];
$mail=$_POST['mail'];
$kad=$_POST['kadi'];
$sifre=$_POST['sifre'];

mysqli_query($bagla,"INSERT INTO `tbl_kullanici_kayit` (`kul_id`, `kul_ismi`, `kul_soyismi`, 'kul_tel','kul_adres','kul_mail','kul_adi', 'kul_sifresi'`kul_tarih`) VALUES (NULL, \"$adi\", \"$soyadi\", \"$tel\",\"$adres\",\"$mail\",\"$kad\",\"$sifre\", current_timestamp())");

//$sqleo="INSERT INTO 'tbl_kullanici_kayit'('kul_id', 'kul_ismi', 'kul_soyismi', 'kul_tel', 'kul_adres', 'kul_mail', 'kul_adi', 'kul_sifresi') VALUES (NULL, \"$adi\", \"$soyadi\", \"$tel\", \"$adres\",\"$mail\",\"$kad\",\"$sifre\", current_timestamp())";


if (mysqli_query($bagla, $sqleo)) 
  header("Location:giris.php");

}

?>


<div id="sitebaslikrenk" >

  <div class=" p-0  rounded">
  
  <p><img src="img/ikon.png" width="90" height="90"> Tokat Gaziosmanpaşa Üniversitesi
 Pazar Meslek Yüksekokulu</p>
  <h1 class=" position-absolute top-0 end-0 m-2 mt-5 text-white"id="otomasyon">Kütüphane Sistemi</h1>
  </div>
</div>

<form action="#" method="post" name="form1" id="form1" >


<div class="container w-25">
<div class="row g-3">
  <div class="col mt-4">
  <label for="ad" class="form-label">Adınız:</label>
    <input type="text" class="form-control" name="ad" id="ad" placeholder="Adınız" >
  </div>
  </div>
</div>

 
  <div class="container w-25">
  <div class="col mt-2">
  <label for="soyad" class="form-label">Soyadınız:</label>
    <input type="text" class="form-control" name="soyad" id="soyad" placeholder="Soyadınız" >
  </div>
</div>

<div class="container w-25">
<div class="col-12 mt-2">
  <label for="adres" class="form-label">Adresiniz:</label>
    <input type="text" class="form-control" name="adres" id="adres" placeholder="ornek@example.com" >
</div>
</div>

<div class="container w-25">
<div class="col-12 mt-2">
  <label for="mail" class="form-label">E-posta Adresiniz:</label>
    <input type="text" class="form-control" name="mail" id="mail" placeholder="ornek@example.com" >
</div>
</div>


<div class="container w-25">
<div class="col-12 mt-2">
  <label for="tel" class="form-label">Telefon No:</label>
  <input type="text" class="form-control"  name="tel" id="tel"  placeholder="0555-555-55-55">
</div>
</div>

<div class="container w-25">


<div class="col-12">
<label for="kadi" class="form-label">Kullanıcı Adınız:</label>
  <label class="visually-hidden" for="kadi"></label>
  <div class="input-group">
    <div class="input-group-text">@</div>
    <input type="text" class="form-control"  name="kadi" id="kadi" placeholder="Kullanıcı Adınızı Girin">
  </div>
</div>
</div>



<div class="container w-25">
<div class="form-group row mt-1">
<div class="col-12"
<label for="sifre" class="form-label">Şifre:</label>
<input type="password" class="form-control"name="sifre" id="sifre" placeholder="Şifrenizi Girin">
 
</div>
</div>

</div>


<div class="container w-25">
  <div class="form-group row mt-2">
  <div class="col-sm-10">
     <button type="submit" class="btn btn-primary">Kayıt Ol</button>
  </div>
  </div>

</form>

 
</body>
</html>