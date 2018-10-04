<?php
session_start();
if(empty($_SESSION['id_login'])){
header('location:index.php');
}
include "menu.php";
$nama_lengkap = $_SESSION['nama_lengkap'];
$level = $_SESSION['level'];
echo "<h3>Selamat Datang, ".$nama_lengkap."</h3>"; 
echo "<h4>Anda login sebagai ".$level."</h4>";
echo "<hr>";
echo "<center><h3>Selamat Datang di Sistem Informasi Akademik<br>Al-Falah Education Center</h3></center><br>";
?>
<html>
<center><img src="images/mtsicon.jpg" width="200" height="200"></center>
</html>
<?php
include "footer.php";
?>