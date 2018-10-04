<?php
include "koneksi.php";
include "header.php";
if($_SESSION['level'] == "admin"){
?>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" >
<div class="container">
<!-- Brand and toggle get grouped for better mobile display -->
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand" href="beranda.php">MTS AL-FALAH - Akademic System</a>
</div>
<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<ul class="nav navbar-nav navbar-right">
<li>
<a href="beranda.php"><img src="images/mtsicon.png" width="20" height="20"> Home</a>
</li>
<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="images/user.png" width="20" height="20"> Master Data<b class="caret"></b></a>
<ul class="dropdown-menu">
<li>
<a href="guru_tampil.php"><img src="images/guru.png" width="15" height="15"> Data Guru</a>
</li>
<li>
<a href="siswa_tampil.php"><img src="images/siswa.png" width="15" height="15"> Data Siswa</a>
</li>
<li>
<a href="kelas_tampil.php"><img src="images/kelas.png" width="15" height="15"> Data Kelas</a>
</li>
<li>
<a href="jabatan_tampil.php"><img src="images/jabatan.png" width="15" height="15"> Data Jabatan</a>
</li>
</ul>
</li>
<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="images/siswa.png" width="20" height="20"> Akademik<b class="caret"></b></a>
<ul class="dropdown-menu">
<li>
<a href="mapel_tampil.php"><img src="images/mapel.png" width="20" height="20"> Mata Pelajaran</a>
</li>
<li>
<a href="jadwal_tampil.php"><img src="images/jadwal.png" width="20" height="20"> Jadwal Pelajaran</a>
</li>
<li>
<a href="jenisnilai_tampil.php"><img src="images/jenil.png" width="20" height="20"> Jenis Nilai</a>
</li>
<li>
<a href="nilai_tampil_admin.php"><img src="images/nilai.png" width="20" height="20"> Hasil Nilai</a>
</li>
<li>
<a href="nilai_tampilraport_admin.php"><img src="images/nilai.png" width="20" height="20"> Nilai Raport</a>
</li>
<li>
<a href="jenisabsen_tampil.php"><img src="images/absen.png" width="20" height="20"> Jenis Absensi</a>
</li>
<li>
<a href="absen_tampil_admin.php"><img src="images/absen.png" width="20" height="20"> Ket. Absensi</a>
</li>
</ul>
</li>
<li>
<a href="logout.php"><img src="images/logout.png" width="20" height="20">Logout</a>
</li>
</ul>
</div>
<!-- /.navbar-collapse -->
</div>
<!-- /.container -->
</nav>
<?php
}
else if($_SESSION['level'] == "siswa"){
$s =mysql_query("select * from siswa where nis='".$_SESSION['username']."'");
$h=mysql_fetch_array($s);
$id_kelas = $h['id_kelas'];
?>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
<div class="container">
<!-- Brand and toggle get grouped for better mobile display -->
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand" href="#">MTS AL-FALAH - Akademic System</a>
</div>
<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<ul class="nav navbar-nav navbar-right">
<li>
<a href="beranda.php"><img src="images/mtsicon.png" width="20" height="20"> Home</a>
</li>
<li>
<a href="siswa_detail.php?id=<?php echo $_SESSION['username'];?>"><img src="images/siswa.png" width="20" height="20"> Biodata Siswa</a>
</li>
<li>
<a href="nilai_detailraport.php?id=<?php echo $_SESSION['username'];?>"><img src="images/nilai.png" width="20" height="20"> Print Raport</a>
</li>
<li>
<a href="jadwal_kelas.php?id_kelas=<?php echo $id_kelas;?>"><img src="images/kelas.png" width="20" height="20"> Jadwal Pelajaran</a>
</li>
<li>
<a href="logout.php"><img src="images/logout.png" width="20" height="20">Logout</a>
</li>
</ul>
</div>
<!-- /.navbar-collapse -->
</div>
<!-- /.container -->
</nav>
<?php
}
else if($_SESSION['level'] == "guru"){
?>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
<div class="container">
<!-- Brand and toggle get grouped for better mobile display -->
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand" href="#">MTS AL-FALAH - Akademic System</a>
</div>
<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<ul class="nav navbar-nav navbar-right">
<li>
<a href="beranda.php"><img src="images/mtsicon.png" width="20" height="20"> Home</a>
</li>
 <li>
<a href="guru_detail.php?id=<?php echo $_SESSION['username'];?>"><img src="images/guru.png" width="20" height="20"> Biodata Guru</a>
</li>
<li>
<a href="jadwal_mengajar.php?id_guru=<?php echo $_SESSION['username'];?>"><img src="images/kelas.png" width="20" height="20"> Jadwal Mengajar</a>
</li>
<li>
<a href="logout.php"><img src="images/logout.png" width="20" height="20">Logout</a>
</li>
</ul>
</div>
<!-- /.navbar-collapse -->
</div>
<!-- /.container -->
</nav>
<?php
}
?>