<?php
session_start();
include "koneksi.php";
//jika belum login, akan dialihkan ke file index.php
if(empty($_SESSION['id_login'])){
header('location:index.php');
}
include "menu.php";
echo "<h1 class='page-header'>
<img src='images/alfalah.jpg' width='300' height='150'>
</h1>
<ol class='breadcrumb'>
<li>
<i class='fa fa-dashboard'></i><img src='images/mtsicon.png' width='20' height='20'> MTS Al-Falah - Nilai Raport Keseluruhan Dengan Siswa Bernama:
</li>
</ol align='center'>";
$nis = $_GET['id'];
$s = mysql_query("select * from siswa sis
inner join kelas kls
on sis.id_kelas=kls.id_kelas
inner join nilai nil
on sis.nis=nil.nis
where sis.nis='".$nis."'");
$t = mysql_query("select * from siswa sis
inner join kelas kls
on sis.id_kelas=kls.id_kelas
inner join absen abs
on sis.nis=abs.nis
where sis.nis='".$nis."'");
$h=mysql_fetch_array($s);
$a=mysql_fetch_array($t);
echo "<table class='table table-striped table-bordered table-hover'>
<tr>
<td>NIS:</td>
<td align='center' align='center'>".$h['nis']."</td>
</tr>
<tr>
<td>Nama Lengkap:</td>
<td align='center' align='center'>".$h['nama_siswa']."</td>
</tr>
<tr>
<td>Kelas:</td>
<td align='center'>".$h['nama_kelas']."</td>
</tr>
<tr>
<td align='center'>---------------------- ISI NILAI ----------------------</td>
<td align='center'>--------------------</td>
</tr>
<tr>
<td>Aqidah Akhlak:</td>
<td align='center'>".$h['nilai_aqidah']."</td>
</tr>
<tr>
<td>MTK:</td>
<td align='center'>".$h['nilai_mtk']."</td>
</tr>
<tr>
<td>Bahasa Indonesia:</td>
<td align='center'>".$h['nilai_bindo']."</td>
</tr>
<tr>
<td>PKN:</td>
<td align='center'>".$h['nilai_pkn']."</td>
</tr>
<tr>
<td>Bahasa Arab:</td>
<td align='center'>".$h['nilai_barab']."</td>
</tr>
<tr>
<td>Pendidikan Agama Islam:</td>
<td align='center'>".$h['nilai_pai']."</td>
</tr>
<tr>
<td>Fiqih:</td>
<td align='center'>".$h['nilai_fiqih']."</td>
</tr>
<tr>
<td>Kimia:</td>
<td align='center'>".$h['nilai_kimia']."</td>
</tr>
<tr>
<td>Fisika:</td>
<td align='center'>".$h['nilai_fisika']."</td>
</tr>
<tr>
<td>Sosiologi:</td>
<td align='center'>".$h['nilai_sosiologi']."</td>
</tr>
<tr>
<td>Bahasa Inggris:</td>
<td align='center'>".$h['nilai_binggris']."</td>
</tr>
<tr>
<td>Seni Budaya:</td>
<td align='center'>".$h['nilai_senbud']."</td>
</tr>
<tr>
<td>Penjaskes:</td>
<td align='center'>".$h['nilai_penjas']."</td>
</tr>
<tr>
<td>Qur'an Hadits:</td>
<td align='center'>".$h['nilai_qurdits']."</td>
</tr>
<tr>
<td>Ekonomi:</td>
<td align='center'>".$h['nilai_ekonomi']."</td>
</tr>
<tr>
<td>Biologi:</td>
<td align='center'>".$h['nilai_biologi']."</td>
</tr>
<tr>
<td>Geografi:</td>
<td align='center'>".$h['nilai_geografi']."</td>
</tr>
<tr>
<td>PLBJ:</td>
<td align='center'>".$h['nilai_plbj']."</td>
</tr>
<tr>
<td>SKI:</td>
<td align='center'>".$h['nilai_ski']."</td>
</tr>
<tr>
<td>TIK:</td>
<td align='center'>".$h['nilai_tik']."</td>
</tr>
<tr>
<td align='center'>---------------------- KETERANGAN NILAI ----------------------</td>
<td align='center'>--------------------</td>
</tr>
<tr>
<td>Tugas Harian:</td>
<td align='center'>".$h['tugas_harian']."</td>
</tr>
<tr>
<td>Ulangan Praktik:</td>
<td align='center'>".$h['ulangan_praktik']."</td>
</tr>
<tr>
<td align='center'>---------------------- KETERANGAN ABSENSI ----------------------</td>
<td align='center'>--------------------</td>
</tr>
<tr>
<td>Hadir:</td>
<td align='center'>(".$a['totalabs_hadir'].") HARI</td>
</tr>
<tr>
<td>Sakit:</td>
<td align='center'>(".$a['totalabs_sakit'].") HARI</td>
</tr>
<tr>
<td>Alpa:</td>
<td align='center'>(".$a['totalabs_alpa'].") HARI</td>
</tr>
<tr>
<td>Libur:</td>
<td align='center'>(".$a['totalabs_libur'].") HARI</td>
</tr>
</table>
<tr>
<td><td>
</tr align='center'>";
?>
<?php include "footer.php"; ?>