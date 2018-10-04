<?php
session_start();
include "koneksi.php";
//tangkap variabelnya
$username = $_POST['username'];
$password = md5($_POST['password']);
//cek apakah username dan password ada atau tidak di tabel user
$sql = mysql_query("select * from login where username='$username' and password='$password'");
$hitung = mysql_num_rows($sql);
$hasil = mysql_fetch_array($sql);
if($hitung > 0){
//jika lebih dari 0, berarti username dan password ada, lalu
//bikin session
$_SESSION['nama_lengkap'] = $hasil['nama_lengkap'];
$_SESSION['username'] = $hasil['username'];
$_SESSION['level'] = $hasil['level'];
$_SESSION['id_login'] = $hasil['id_login'];
$s = mysql_query("select * from guru where id_guru = '".$hasil['username']."'");
$h=mysql_fetch_array($s);
$_SESSION['wali_kelas'] = $h['id_kelas'];
header('location:beranda.php');//mengalihkan ke file beranda.php
}else{
//jika tidak ada muncul alert
echo "<script>
alert('Username atau password salah');
window.location.href='index.php';
</script>";
}
?>