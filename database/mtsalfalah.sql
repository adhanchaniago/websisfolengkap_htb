-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 21. Agustus 2018 jam 10:24
-- Versi Server: 5.1.41
-- Versi PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mtsalfalah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen`
--

CREATE TABLE IF NOT EXISTS `absen` (
  `nis` int(30) NOT NULL AUTO_INCREMENT,
  `bulan` varchar(10) NOT NULL,
  `tgl1` varchar(30) NOT NULL,
  `tgl2` varchar(30) NOT NULL,
  `tgl3` varchar(30) NOT NULL,
  `tgl4` varchar(30) NOT NULL,
  `tgl5` varchar(30) NOT NULL,
  `tgl6` varchar(30) NOT NULL,
  `tgl7` varchar(30) NOT NULL,
  `tgl8` varchar(30) NOT NULL,
  `tgl9` varchar(30) NOT NULL,
  `tgl10` varchar(30) NOT NULL,
  `tgl11` varchar(30) NOT NULL,
  `tgl12` varchar(30) NOT NULL,
  `tgl13` varchar(30) NOT NULL,
  `tgl14` varchar(30) NOT NULL,
  `tgl15` varchar(30) NOT NULL,
  `tgl16` varchar(30) NOT NULL,
  `tgl17` varchar(30) NOT NULL,
  `tgl18` varchar(30) NOT NULL,
  `tgl19` varchar(30) NOT NULL,
  `tgl20` varchar(30) NOT NULL,
  `tgl21` varchar(30) NOT NULL,
  `tgl22` varchar(30) NOT NULL,
  `tgl23` varchar(30) NOT NULL,
  `tgl24` varchar(30) NOT NULL,
  `tgl25` varchar(30) NOT NULL,
  `tgl26` varchar(30) NOT NULL,
  `tgl27` varchar(30) NOT NULL,
  `tgl28` varchar(30) NOT NULL,
  `tgl29` varchar(30) NOT NULL,
  `tgl30` varchar(30) NOT NULL,
  `tgl31` varchar(30) NOT NULL,
  `totalabs_hadir` int(5) NOT NULL,
  `totalabs_sakit` int(5) NOT NULL,
  `totalabs_alpa` int(5) NOT NULL,
  `totalabs_libur` int(5) NOT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=131302 ;

--
-- Dumping data untuk tabel `absen`
--

INSERT INTO `absen` (`nis`, `bulan`, `tgl1`, `tgl2`, `tgl3`, `tgl4`, `tgl5`, `tgl6`, `tgl7`, `tgl8`, `tgl9`, `tgl10`, `tgl11`, `tgl12`, `tgl13`, `tgl14`, `tgl15`, `tgl16`, `tgl17`, `tgl18`, `tgl19`, `tgl20`, `tgl21`, `tgl22`, `tgl23`, `tgl24`, `tgl25`, `tgl26`, `tgl27`, `tgl28`, `tgl29`, `tgl30`, `tgl31`, `totalabs_hadir`, `totalabs_sakit`, `totalabs_alpa`, `totalabs_libur`) VALUES
(131301, 'Agustus', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Libur (Hari Kemerdekaan)', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Libur (Idul Adha)', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 29, 0, 0, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE IF NOT EXISTS `guru` (
  `id_guru` int(5) NOT NULL AUTO_INCREMENT,
  `nama_guru` varchar(50) NOT NULL,
  `alamat_guru` text NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `id_jabatan` int(5) NOT NULL,
  `pendidikan` varchar(5) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  PRIMARY KEY (`id_guru`),
  KEY `id_jabatan` (`id_jabatan`,`id_kelas`),
  KEY `id_kelas` (`id_kelas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11131 ;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`, `alamat_guru`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `no_telp`, `id_jabatan`, `pendidikan`, `id_kelas`) VALUES
(11111, 'Firman Anwar', 'Proklamasi', 'Bengkulu', '1987-08-17', 'Laki-laki', 'Islam', '081280638200', 1, 'S3', 1),
(11112, 'Nok Siti Maesaroh, S.Pd., M.Si', 'Tangerang', 'Magelang', '1992-03-03', 'Perempuan', 'Islam', '1234567890', 7, 'S1', 10),
(11113, 'Hj. Ida Farida, S.Pd', 'Komplek UNPAM 1', 'Bogor', '1972-05-30', 'Perempuan', 'Islam', '987654321', 4, 'S1', 10),
(11114, 'Jaenuddin, S.Hi', 'Cisoka', 'Bogor', '1979-05-10', 'Laki-laki', 'Islam', '98760000', 4, 'S1', 10),
(11115, 'H. Aminudin, S.Ag', 'Jakarta', 'Jakarta', '1989-12-15', 'Laki-laki', 'Islam', '12340000', 4, 'S1', 10),
(11116, 'Drs. H. Supandi', 'Cipete', 'Padang', '1993-07-05', 'Laki-laki', 'Islam', '44444444', 4, 'S1', 10),
(11117, 'Hasan Ashari O, S.T', 'Petukangan Selatan', 'Depok', '1993-09-01', 'Laki-laki', 'Islam', '15239486', 4, 'S1', 10),
(11118, 'Ir. Mashuda Yusuf', 'Petukangan Utara', 'Lawang', '1946-02-12', 'Laki-laki', 'Islam', '98761111', 4, 'S1', 10),
(11119, 'Rochmah Y. Dhewi, M.Pd', 'Jalan Asem', 'Klaten', '1977-12-14', 'Perempuan', 'Islam', '00009999', 4, 'S2', 10),
(11120, 'Dr. HC. Eka Prawira, S.Ti, M.H, Lc.', 'Komplek Petukangan Utara', 'Purwokerto', '1996-09-01', 'Laki-laki', 'Islam', '081280638200', 2, 'S3', 9),
(11121, 'Drs. Ir. H. Adam Trevin, S.Ag, M.H', 'Ceger Raya', 'Bogor', '1996-10-10', 'Laki-laki', 'Islam', '99999999', 8, 'S3', 6),
(11122, 'Prof. Ir. Drs. H.Rizky Al-Rasid, S.H, S.Kom', 'Gg. Kelinci, Rt. 005/003.', 'Medan', '1996-06-26', 'Laki-laki', 'Islam', '+6290909090', 6, 'S3', 7),
(11123, 'Rizky Rismanto, S.Tr.Par', 'Jl. Sawo', 'Depok', '1996-03-15', 'Laki-laki', 'Islam', '80808080', 3, 'S1', 5),
(11124, 'Galih Tri Setyo, S.E', 'Jl. Damai Raya', 'Cipadu', '1996-06-15', 'Laki-laki', 'Islam', '+6290909080', 4, 'S2', 4),
(11125, 'Noval Ozie Putra, S.Op', 'Jl. Damai Raya', 'Cipali', '1996-10-20', 'Laki-laki', 'Islam', '70707070', 3, 'S1', 10),
(11126, 'Ridwan Alfiansyah, S.Kom', 'Ceger Raya', 'Ceger', '1996-03-20', 'Laki-laki', 'Islam', '+6290907080', 3, 'S1', 3),
(11127, 'Ikhsan Nur Fajri, S.Ag', 'Petukangan Raya', 'Ciletuh', '1996-08-26', 'Laki-laki', 'Islam', '+6290708090', 9, 'S1', 8),
(11128, 'Steven Nugraha Kaligis', 'Cipanas', 'Jamaicca', '1996-03-20', 'Laki-laki', 'Islam', '123456789', 4, 'SMA', 10),
(11129, 'Tony Waluyo Sukmoasih, S.Gea', 'Kebon Jeruk', 'Jeruk Purut 1', '1992-09-09', 'Laki-laki', 'Islam', '987654321', 4, 'SMA', 10),
(11130, 'Reni Arti, S.Kom', 'Proklamasi', 'Purwokerto', '1969-07-12', 'Perempuan', 'Islam', '081280638200', 2, 'S1', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE IF NOT EXISTS `jabatan` (
  `id_jabatan` int(5) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(35) NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'Kepala Sekolah'),
(2, 'Wakil Kepala Sekolah'),
(3, 'Tata Usaha'),
(4, 'Guru'),
(5, 'Wakil Bidang Kurikulum'),
(6, 'Wakil Bidang Kesiswaan'),
(7, 'BP/BKS'),
(8, 'Pembina Osis'),
(9, 'Pembina Rohis/Keagamaan'),
(10, 'Wali Kelas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `id_jadwal` int(5) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(5) NOT NULL,
  `hari` varchar(6) NOT NULL,
  `jam_ke` varchar(3) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_mapel`, `hari`, `jam_ke`, `id_kelas`) VALUES
(1, 0, '1', '1', 1),
(2, 0, '2', '2', 2),
(3, 0, '1', '2', 2),
(4, 0, '1', '3', 3),
(5, 0, '1', '4', 4),
(6, 0, '1', '5', 5),
(7, 0, '2', '1', 2),
(8, 0, '2', '1', 1),
(9, 0, '2', '3', 3),
(10, 0, '2', '4', 4),
(11, 0, '2', '5', 5),
(12, 10, '3', '1', 9),
(13, 1, '1', '1', 1),
(14, 20, '1', '2', 1),
(15, 10, '1', '1', 2),
(16, 12, '1', '3', 3),
(17, 11, '1', '4', 2),
(18, 16, '1', '5', 3),
(19, 2, '1', '1', 4),
(20, 4, '1', '2', 5),
(21, 11, '1', '5', 6),
(22, 6, '1', '1', 7),
(23, 12, '1', '5', 8),
(24, 16, '1', '5', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_absen`
--

CREATE TABLE IF NOT EXISTS `jenis_absen` (
  `id_jenisabsen` int(5) NOT NULL AUTO_INCREMENT,
  `nama_jenisabsen` varchar(5) NOT NULL,
  PRIMARY KEY (`id_jenisabsen`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `jenis_absen`
--

INSERT INTO `jenis_absen` (`id_jenisabsen`, `nama_jenisabsen`) VALUES
(1, 'Sakit'),
(2, 'Hadir'),
(3, 'Alpa'),
(4, 'Libur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_nilai`
--

CREATE TABLE IF NOT EXISTS `jenis_nilai` (
  `id_jenisnilai` int(5) NOT NULL AUTO_INCREMENT,
  `nama_jenisnilai` varchar(50) NOT NULL,
  PRIMARY KEY (`id_jenisnilai`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `jenis_nilai`
--

INSERT INTO `jenis_nilai` (`id_jenisnilai`, `nama_jenisnilai`) VALUES
(1, 'Tugas Harian'),
(2, 'Ulangan Praktik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'X-1'),
(2, 'X-2'),
(3, 'X-3'),
(4, 'XI-1'),
(5, 'XI-2'),
(6, 'XI-3'),
(7, 'XII-1'),
(8, 'XII-2'),
(9, 'XII-3'),
(10, 'Tidak Tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id_login` int(5) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `nama_lengkap`, `username`, `password`, `level`) VALUES
(1, 'Adm. Ratih', '001305', 'f2d136ea22a5b6e0ed0120a03ab795c2', 'admin'),
(2, 'Ibu Ratih Purwasih', '001306', '788a1bdda48d89ba2031a949aa96cbc6', 'orang tua'),
(3, 'Nok Siti Maesaroh, S.Pd, M.Si', '11112', '0b1e50e1fd71c96bac94144cc59cff40', 'guru'),
(4, 'Contoh', '131301', 'fcf46feaa3724614edce94c15566987e', 'siswa'),
(5, 'Contoh 2', '131302', '88085f100c3ee106e25514281d28e9e9', 'siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_pelajaran`
--

CREATE TABLE IF NOT EXISTS `mata_pelajaran` (
  `id_mapel` int(5) NOT NULL AUTO_INCREMENT,
  `nama_mapel` varchar(35) NOT NULL,
  `kkm` int(5) NOT NULL,
  `id_jenismapel` int(5) NOT NULL,
  `id_guru` int(5) NOT NULL,
  PRIMARY KEY (`id_mapel`),
  KEY `id_guru` (`id_jenismapel`),
  KEY `id_guru_2` (`id_guru`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data untuk tabel `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id_mapel`, `nama_mapel`, `kkm`, `id_jenismapel`, `id_guru`) VALUES
(1, 'Aqidah Akhlak', 70, 1, 11111),
(2, 'MTK', 70, 2, 11112),
(3, 'Bahasa Indonesia', 70, 2, 11113),
(4, 'PKN', 70, 2, 11114),
(5, 'Bahasa Arab', 70, 1, 11115),
(6, 'Pendidikan Agama Islam', 70, 1, 11116),
(7, 'Fiqih', 70, 1, 11117),
(8, 'Kimia', 70, 2, 11118),
(9, 'Fisika', 70, 2, 11119),
(10, 'Sosiologi', 70, 2, 11120),
(11, 'Bahasa Inggris', 70, 2, 11121),
(12, 'Seni Budaya', 70, 2, 11122),
(13, 'Penjaskes', 75, 2, 11123),
(14, 'Qur''an Hadits', 85, 2, 11124),
(15, 'Ekonomi', 70, 2, 11125),
(16, 'Biologi', 70, 2, 11126),
(17, 'Geografi', 70, 2, 11127),
(18, 'PLBJ', 70, 2, 11128),
(19, 'SKI', 70, 2, 11129),
(20, 'TIK', 70, 2, 11130);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE IF NOT EXISTS `nilai` (
  `nis` int(30) NOT NULL AUTO_INCREMENT,
  `nilai_aqidah` int(5) NOT NULL,
  `nilai_mtk` int(5) NOT NULL,
  `nilai_bindo` int(5) NOT NULL,
  `nilai_pkn` int(5) NOT NULL,
  `nilai_barab` int(5) NOT NULL,
  `nilai_pai` int(5) NOT NULL,
  `nilai_fiqih` int(5) NOT NULL,
  `nilai_kimia` int(5) NOT NULL,
  `nilai_fisika` int(5) NOT NULL,
  `nilai_sosiologi` int(5) NOT NULL,
  `nilai_binggris` int(5) NOT NULL,
  `nilai_senbud` int(5) NOT NULL,
  `nilai_penjas` int(5) NOT NULL,
  `nilai_qurdits` int(5) NOT NULL,
  `nilai_ekonomi` int(5) NOT NULL,
  `nilai_biologi` int(5) NOT NULL,
  `nilai_geografi` int(5) NOT NULL,
  `nilai_plbj` int(5) NOT NULL,
  `nilai_ski` int(5) NOT NULL,
  `nilai_tik` int(5) NOT NULL,
  `tugas_harian` int(5) NOT NULL,
  `ulangan_praktik` int(5) NOT NULL,
  `huruf_aqidah` varchar(50) NOT NULL,
  `huruf_mtk` varchar(50) NOT NULL,
  `huruf_bindo` varchar(50) NOT NULL,
  `huruf_pkn` varchar(50) NOT NULL,
  `huruf_barab` varchar(50) NOT NULL,
  `huruf_pai` varchar(50) NOT NULL,
  `huruf_fiqih` varchar(50) NOT NULL,
  `huruf_kimia` varchar(50) NOT NULL,
  `huruf_fisika` varchar(50) NOT NULL,
  `huruf_sosiologi` varchar(50) NOT NULL,
  `huruf_binggris` varchar(50) NOT NULL,
  `huruf_senbud` varchar(50) NOT NULL,
  `huruf_penjas` varchar(50) NOT NULL,
  `huruf_qurdits` varchar(50) NOT NULL,
  `huruf_ekonomi` varchar(50) NOT NULL,
  `huruf_biologi` varchar(50) NOT NULL,
  `huruf_geografi` varchar(50) NOT NULL,
  `huruf_plbj` varchar(50) NOT NULL,
  `huruf_ski` varchar(50) NOT NULL,
  `huruf_tik` varchar(50) NOT NULL,
  `huruf_tugas_harian` varchar(50) NOT NULL,
  `huruf_ulangan_praktik` varchar(50) NOT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=131303 ;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`nis`, `nilai_aqidah`, `nilai_mtk`, `nilai_bindo`, `nilai_pkn`, `nilai_barab`, `nilai_pai`, `nilai_fiqih`, `nilai_kimia`, `nilai_fisika`, `nilai_sosiologi`, `nilai_binggris`, `nilai_senbud`, `nilai_penjas`, `nilai_qurdits`, `nilai_ekonomi`, `nilai_biologi`, `nilai_geografi`, `nilai_plbj`, `nilai_ski`, `nilai_tik`, `tugas_harian`, `ulangan_praktik`, `huruf_aqidah`, `huruf_mtk`, `huruf_bindo`, `huruf_pkn`, `huruf_barab`, `huruf_pai`, `huruf_fiqih`, `huruf_kimia`, `huruf_fisika`, `huruf_sosiologi`, `huruf_binggris`, `huruf_senbud`, `huruf_penjas`, `huruf_qurdits`, `huruf_ekonomi`, `huruf_biologi`, `huruf_geografi`, `huruf_plbj`, `huruf_ski`, `huruf_tik`, `huruf_tugas_harian`, `huruf_ulangan_praktik`) VALUES
(131301, 70, 70, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 'Tujuh Puluh', 'Tujuh Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh', 'Sembilan Puluh'),
(131302, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 50, 70, 70, 'Tujuh Puluh', 'Tujuh Puluh', 'Tujuh Puluh', 'Tujuh Puluh', 'Tujuh Puluh', 'Tujuh Puluh', 'Tujuh Puluh', 'Tujuh Puluh', 'Tujuh Puluh', 'Tujuh Puluh', 'Tujuh Puluh', 'Tujuh Puluh', 'Tujuh Puluh', 'Tujuh Puluh', 'Tujuh Puluh', 'Tujuh Puluh', 'Tujuh Puluh', 'Tujuh Puluh', 'Tujuh Puluh', 'Lima Puluh', 'Tujuh Puluh', 'Tujuh Puluh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `nis` int(5) NOT NULL AUTO_INCREMENT,
  `nama_siswa` varchar(40) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `alamat` text NOT NULL,
  `tempat_lahir` varchar(15) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `nama_ayah` varchar(35) NOT NULL,
  `nama_ibu` varchar(35) NOT NULL,
  `status` varchar(15) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  PRIMARY KEY (`nis`),
  KEY `id_kelas` (`id_kelas`),
  KEY `id_kelas_2` (`id_kelas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=131303 ;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama_siswa`, `id_kelas`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `nama_ayah`, `nama_ibu`, `status`, `no_telp`) VALUES
(131301, 'Contoh', 1, 'Contoh', 'Contoh', '1996-09-01', 'Laki-laki', 'Islam', 'Contoh', 'Contoh', 'AK', '99999999'),
(131302, 'Contoh 2', 2, 'Jl. Slank', 'Potlot', '1996-09-01', 'Laki-laki', 'Kristen', 'Kaka', 'Bimbim', 'AA', '88888888');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
