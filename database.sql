-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2017 at 04:14 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_absen`
--

CREATE TABLE `tb_absen` (
  `id` int(11) NOT NULL,
  `no_absen` varchar(25) NOT NULL,
  `no_NIP` varchar(25) NOT NULL,
  `kode_koordinat` varchar(25) NOT NULL,
  `start_at` varchar(22) NOT NULL,
  `break_at` varchar(22) NOT NULL,
  `start_again_at` varchar(22) NOT NULL,
  `finish_at` varchar(22) NOT NULL,
  `create_date` varchar(22) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_admin` varchar(70) NOT NULL,
  `id_role` varchar(10) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`, `nama_admin`, `id_role`, `jabatan`, `picture`) VALUES
(1, 'afz60.30@gmail.com', '$2y$10$i7x2mt0ybVKF5gs0pr99NuE.7wlPwc0XHKWv/kexyrEcRgEUffVFG', 'Arfan Azhari', 'SA0', 'Super Admin', 'user.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_apply_pekerjaan`
--

CREATE TABLE `tb_apply_pekerjaan` (
  `id` int(11) NOT NULL,
  `no_ktp` varchar(20) NOT NULL,
  `kd_pekerjaan` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bank`
--

CREATE TABLE `tb_bank` (
  `id` int(11) NOT NULL,
  `kd_bank` varchar(10) NOT NULL,
  `no_ktp` text NOT NULL,
  `nomor_akun` text NOT NULL,
  `cabang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_push`
--

CREATE TABLE `tb_detail_push` (
  `id` int(11) NOT NULL,
  `kd_detail` varchar(25) NOT NULL,
  `kd_push` varchar(25) NOT NULL,
  `inisial` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_alamat`
--

CREATE TABLE `tb_info_alamat` (
  `id` int(11) NOT NULL,
  `no_ktp` varchar(17) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kelurahan` varchar(35) NOT NULL,
  `kecamatan` varchar(35) NOT NULL,
  `kota` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_bahasa`
--

CREATE TABLE `tb_info_bahasa` (
  `id` int(11) NOT NULL,
  `no_ktp` varchar(17) NOT NULL,
  `nama_bahasa` varchar(50) NOT NULL,
  `writing` varchar(3) NOT NULL,
  `listening` varchar(3) NOT NULL,
  `speaking` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_info_bahasa`
--

INSERT INTO `tb_info_bahasa` (`id`, `no_ktp`, `nama_bahasa`, `writing`, `listening`, `speaking`) VALUES
(1, '3175070204930007', 'Bahasa Inggris', '50', '60', '80');

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_bank`
--

CREATE TABLE `tb_info_bank` (
  `id` int(11) NOT NULL,
  `no_ktp` varchar(20) NOT NULL,
  `kd_bank` varchar(10) NOT NULL,
  `cabang` varchar(50) NOT NULL,
  `nomor_rek` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_info_bank`
--

INSERT INTO `tb_info_bank` (`id`, `no_ktp`, `kd_bank`, `cabang`, `nomor_rek`) VALUES
(1, '3175070204930007', '111', 'Pondok Bambu', '949494949');

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_hobi`
--

CREATE TABLE `tb_info_hobi` (
  `id` int(11) NOT NULL,
  `no_ktp` varchar(50) NOT NULL,
  `nama_hobi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_interview`
--

CREATE TABLE `tb_info_interview` (
  `id` int(11) NOT NULL,
  `kd_interview` varchar(30) NOT NULL,
  `no_ktp` varchar(20) NOT NULL,
  `date_interview` varchar(30) NOT NULL,
  `detail` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `kd_admin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_keahlian`
--

CREATE TABLE `tb_info_keahlian` (
  `id` int(11) NOT NULL,
  `no_ktp` varchar(17) NOT NULL,
  `nama_keahlian` varchar(50) NOT NULL,
  `nilai` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_info_keahlian`
--

INSERT INTO `tb_info_keahlian` (`id`, `no_ktp`, `nama_keahlian`, `nilai`) VALUES
(1, '3175070204930007', 'Php', '50'),
(2, '3175070204930007', 'Javascript', '50'),
(3, '3175070204930007', 'Bikin Hopless cewek', '90'),
(4, '3175070204930007', 'Bikin Kangen', '10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_keluarga`
--

CREATE TABLE `tb_info_keluarga` (
  `id` int(11) NOT NULL,
  `no_ktp` varchar(17) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `status_keluarga` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(2) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pendidikan` varchar(10) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `nomor_handphone` varchar(13) NOT NULL,
  `hub_urgent` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_info_keluarga`
--

INSERT INTO `tb_info_keluarga` (`id`, `no_ktp`, `nama_lengkap`, `status_keluarga`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `pendidikan`, `pekerjaan`, `nomor_handphone`, `hub_urgent`) VALUES
(1, '3175070204930007', 'Siti Rosmawati', 'Adik', 'P', 'Kuningan', '1996-11-12 17:00:00', 'SMK', 'Admin', '082929292929', 1),
(2, '3175070204930007', 'Darti', 'Ibu', '', 'kuniigan', '1970-01-26 17:00:00', 'SR', 'Ibu Rumah Tangga', '', 0),
(3, '3175070204930007', 'Darti', 'Ibu', '', 'Kuningan', '1998-12-27 17:00:00', 'SR', 'Ibu Rumah tangga', '09292929', 0),
(4, '3175070204930007', 'Darti', 'Ibu', '', 'Kuningan', '1998-12-27 17:00:00', 'SR', 'Ibu Rumah tangga', '09292929', 0),
(5, '3175070204930007', 'Darti', 'Ibu', '', 'Kuningan', '1998-12-27 17:00:00', 'SR', 'Ibu Rumah tangga', '09292929', 0),
(6, '3175070204930007', 'Darti', 'Ibu', '', 'Kuningan', '1998-12-27 17:00:00', 'SR', 'Ibu Rumah tangga', '09292929', 0),
(7, '3175070204930007', 'Darti', 'Ibu', '', 'Kuningan', '1998-12-27 17:00:00', 'SR', 'Ibu Rumah tangga', '09292929', 0),
(8, '3175070204930007', 'Darti', 'Ibu', '', 'Kuningan', '1998-12-27 17:00:00', 'SR', 'Ibu Rumah tangga', '09292929', 0),
(9, '3175070204930007', 'Darti', 'Ibu', '', 'Kuningan', '1998-12-27 17:00:00', 'SR', 'Ibu Rumah tangga', '09292929', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_kursus`
--

CREATE TABLE `tb_info_kursus` (
  `id` int(11) NOT NULL,
  `no_ktp` varchar(17) NOT NULL,
  `nama_bidang` varchar(50) NOT NULL,
  `nama_penyelenggara` varchar(50) NOT NULL,
  `tahun_masuk` varchar(5) NOT NULL,
  `tahun_lulus` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_info_kursus`
--

INSERT INTO `tb_info_kursus` (`id`, `no_ktp`, `nama_bidang`, `nama_penyelenggara`, `tahun_masuk`, `tahun_lulus`) VALUES
(1, '3175070204930007', 'Bahasa Inggris', 'LIA', '2009', '2010');

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_pekerjaan`
--

CREATE TABLE `tb_info_pekerjaan` (
  `id` int(11) NOT NULL,
  `no_ktp` varchar(17) NOT NULL,
  `nama_perusahaan` varchar(50) NOT NULL,
  `tahun_masuk` varchar(5) NOT NULL,
  `tahun_keluar` varchar(5) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `gaji` varchar(8) NOT NULL,
  `alasan_berhenti` text NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_info_pekerjaan`
--

INSERT INTO `tb_info_pekerjaan` (`id`, `no_ktp`, `nama_perusahaan`, `tahun_masuk`, `tahun_keluar`, `jabatan`, `gaji`, `alasan_berhenti`, `keterangan`) VALUES
(1, '3175070204930007', 'BPN', '2011', '2015', 'Leader Project', '300000', 'Capek', 'membantu bawahan untuk pcaran di jam kerja');

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_pendidikan`
--

CREATE TABLE `tb_info_pendidikan` (
  `id` int(11) NOT NULL,
  `no_ktp` varchar(17) NOT NULL,
  `tingkat` varchar(4) NOT NULL,
  `nama_bapen` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `tahun_masuk` varchar(5) NOT NULL,
  `tahun_lulus` varchar(5) NOT NULL,
  `nilai` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_info_pendidikan`
--

INSERT INTO `tb_info_pendidikan` (`id`, `no_ktp`, `tingkat`, `nama_bapen`, `jurusan`, `tahun_masuk`, `tahun_lulus`, `nilai`) VALUES
(1, '3175070204930007', 'SMA', 'SMK Pusaka', 'Administrasi Pekantoran', '2008', '2010', '80');

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_penghargaan`
--

CREATE TABLE `tb_info_penghargaan` (
  `id` int(11) NOT NULL,
  `no_ktp` varchar(17) NOT NULL,
  `nama_penghargaan` varchar(50) NOT NULL,
  `tingkat` varchar(35) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_info_penghargaan`
--

INSERT INTO `tb_info_penghargaan` (`id`, `no_ktp`, `nama_penghargaan`, `tingkat`, `keterangan`) VALUES
(1, '3175070204930007', 'Lomba Adzan', 'not data', 'Lomba adzan sekabupaten');

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_penyakit`
--

CREATE TABLE `tb_info_penyakit` (
  `id` int(11) NOT NULL,
  `no_ktp` varchar(17) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_info_penyakit`
--

INSERT INTO `tb_info_penyakit` (`id`, `no_ktp`, `nama_penyakit`, `status`) VALUES
(1, '3175070204930007', 'typus', 'kadang kambung');

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_referensi`
--

CREATE TABLE `tb_info_referensi` (
  `id` int(11) NOT NULL,
  `no_ktp` varchar(17) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `nomor_hp` varchar(13) NOT NULL,
  `hubungan` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_info_referensi`
--

INSERT INTO `tb_info_referensi` (`id`, `no_ktp`, `nama_lengkap`, `jabatan`, `nomor_hp`, `hubungan`) VALUES
(1, '3175070204930007', 'Lucy', 'Black Ops', '098773737', 'Tak tergantikan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_test`
--

CREATE TABLE `tb_info_test` (
  `id` int(11) NOT NULL,
  `kode_test` varchar(50) NOT NULL,
  `no_ktp` varchar(20) NOT NULL,
  `date_test` varchar(25) NOT NULL,
  `nilai` varchar(5) NOT NULL,
  `kode_admin` varchar(25) NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_pekerjaan`
--

CREATE TABLE `tb_jenis_pekerjaan` (
  `id` int(11) NOT NULL,
  `kd_pekerjaan` varchar(5) NOT NULL,
  `nama_pekerjaan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jenis_pekerjaan`
--

INSERT INTO `tb_jenis_pekerjaan` (`id`, `kd_pekerjaan`, `nama_pekerjaan`) VALUES
(1, 'AD001', 'Administrasi'),
(2, 'DE001', 'Data Entry'),
(3, 'DR001', 'Driver'),
(4, 'CL001', 'Cleaning Services'),
(5, 'KR001', 'Kurir'),
(6, 'OPR01', 'Operator Pabrik'),
(7, 'OPR02', 'Operator Telpon'),
(8, 'RE001', 'Resepsionis'),
(9, 'SP001', 'SPG');

-- --------------------------------------------------------

--
-- Table structure for table `tb_job`
--

CREATE TABLE `tb_job` (
  `id` int(11) NOT NULL,
  `nomor_kontrak` varchar(25) NOT NULL,
  `no_nip` varchar(25) NOT NULL,
  `kode_jabatan` varchar(20) NOT NULL,
  `kode_detail_job` varchar(25) NOT NULL,
  `status_karyawan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id` int(11) NOT NULL,
  `no_ktp` varchar(17) NOT NULL,
  `no_NIK` varchar(20) NOT NULL,
  `nama_depan` varchar(35) NOT NULL,
  `nama_belakang` varchar(35) NOT NULL,
  `jenis_kelamin` varchar(2) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nomor_hp` varchar(13) NOT NULL,
  `nomor_telp` varchar(13) NOT NULL,
  `tempat_lahir` varchar(35) NOT NULL,
  `tgl_lahir` varchar(12) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `nama_suku` varchar(50) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `tinggi_badan` varchar(3) NOT NULL,
  `berat_badan` varchar(3) NOT NULL,
  `no_NPWP` varchar(16) NOT NULL,
  `no_BPJS` varchar(20) NOT NULL,
  `nomor_sim` varchar(14) NOT NULL,
  `jenis_sim` varchar(3) NOT NULL,
  `status_perkawinan` varchar(8) NOT NULL,
  `status_tempat_tinggal` varchar(35) NOT NULL,
  `foto` longtext NOT NULL,
  `hobi` text NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kelurahan` varchar(35) NOT NULL,
  `kecamatan` varchar(35) NOT NULL,
  `kota` varchar(35) NOT NULL,
  `keperibadian` text NOT NULL,
  `menghire` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id`, `no_ktp`, `no_NIK`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `email`, `nomor_hp`, `nomor_telp`, `tempat_lahir`, `tgl_lahir`, `nama_suku`, `agama`, `tinggi_badan`, `berat_badan`, `no_NPWP`, `no_BPJS`, `nomor_sim`, `jenis_sim`, `status_perkawinan`, `status_tempat_tinggal`, `foto`, `hobi`, `alamat`, `kelurahan`, `kecamatan`, `kota`, `keperibadian`, `menghire`) VALUES
(1, '3175070204930007', '', 'Arfan', 'Azhari', 'L', 'afz60.30@gmail.com', '082210364609', '', 'Kuningan', '02-04-1993', 'Sunda', 'Islam', '170', '55', '', '', '12234959999', 'C', 'lajang', 'Kontrakan', 'data:image/jpeg;base64,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', '#makan#ngoding#pacaran', 'cipinang indah 2 blok EE/12 A', 'Pondok Bambu', 'Duren Sawit', 'Jakarta Timur', 'aku orangnya suka bikin kangen orang, HATI HATI.', 'karena aku cute,');

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan_mobile`
--

CREATE TABLE `tb_karyawan_mobile` (
  `id` int(11) NOT NULL,
  `no_NIP` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `kode_admin` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_pekerjaan`
--

CREATE TABLE `tb_kategori_pekerjaan` (
  `id` int(11) NOT NULL,
  `kode_kategori` varchar(5) NOT NULL,
  `nama_kategori` varchar(25) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori_pekerjaan`
--

INSERT INTO `tb_kategori_pekerjaan` (`id`, `kode_kategori`, `nama_kategori`, `keterangan`) VALUES
(1, 'BPO01', 'BPO', 'Pekerjaan Borongan'),
(2, 'MPO01', 'MPO', 'Kebutuhan Tenaga Kerja / Perorangan'),
(3, 'SYG01', 'System Integrator', ''),
(4, 'KST01', 'Konsultan', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kerjasama_perusahan`
--

CREATE TABLE `tb_kerjasama_perusahan` (
  `id` int(11) NOT NULL,
  `nomor_kontrak` varchar(20) NOT NULL,
  `kode_perusahan` varchar(25) NOT NULL,
  `kode_plan` varchar(25) NOT NULL,
  `kode_list_karyawan` varchar(25) NOT NULL,
  `kontrak_start` varchar(25) NOT NULL,
  `kontrak_end` varchar(25) NOT NULL,
  `nilai_kontrak` varchar(12) NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `kode_admin` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kode_bank`
--

CREATE TABLE `tb_kode_bank` (
  `id` int(11) NOT NULL,
  `kd_bank` varchar(15) NOT NULL,
  `nama_bank` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kode_bank`
--

INSERT INTO `tb_kode_bank` (`id`, `kd_bank`, `nama_bank`) VALUES
(1, '014', 'Bank BCA'),
(2, '008', 'Bank Mandiri'),
(3, '002', 'Bank BRI'),
(4, '009', 'Bank BNI'),
(5, '061', 'ANZ Panin Bank'),
(6, '016', 'Bank BII'),
(7, '441', 'Bank BUKOPIN'),
(8, '485', 'Bank BUMIPUTERA'),
(9, '950', 'Bank COMMONWEALTH'),
(10, '011', 'Bank DANAMON'),
(11, '111', 'Bank DKI'),
(12, '422', 'Bank BRI Syariah'),
(13, '026', 'Bank LIPPO'),
(14, '426', 'Bank MEGA'),
(15, '019', 'Bank PANIN'),
(16, '451', 'Bank SYARIAH MANDIRI'),
(17, '058', 'Bank UOB INDONESIA'),
(18, '013', 'Bank PERMATA'),
(19, '050', 'STANDARD CHARTERED BANK');

-- --------------------------------------------------------

--
-- Table structure for table `tb_koordinat_perusahaan`
--

CREATE TABLE `tb_koordinat_perusahaan` (
  `id` int(11) NOT NULL,
  `kode_koordinat` varchar(25) NOT NULL,
  `kode_perusahaan` varchar(25) NOT NULL,
  `koordinat` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `kode_admin` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_list_jabatan`
--

CREATE TABLE `tb_list_jabatan` (
  `id` int(11) NOT NULL,
  `kode_jabatan` varchar(20) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_list_job`
--

CREATE TABLE `tb_list_job` (
  `id` int(11) NOT NULL,
  `kode_detail_job` varchar(25) NOT NULL,
  `nama_job` varchar(255) NOT NULL,
  `deskripsi_job` text NOT NULL,
  `keterangan` text NOT NULL,
  `start_at` varchar(22) NOT NULL,
  `finish_at` varchar(22) NOT NULL,
  `kode_admin` varchar(25) NOT NULL,
  `create_date` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_list_karyawan`
--

CREATE TABLE `tb_list_karyawan` (
  `id` int(11) NOT NULL,
  `kode_list_karyawan` varchar(20) NOT NULL,
  `no_nip` varchar(25) NOT NULL,
  `kode_term` varchar(20) NOT NULL,
  `kode_jabatan` varchar(20) NOT NULL,
  `kode_pekerjaan` varchar(20) NOT NULL,
  `status_karyawan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_login_karyawan`
--

CREATE TABLE `tb_login_karyawan` (
  `id` int(11) NOT NULL,
  `no_ktp` varchar(17) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `joining_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_login_karyawan`
--

INSERT INTO `tb_login_karyawan` (`id`, `no_ktp`, `email`, `password`, `joining_date`, `login_date`) VALUES
(1, '3175070204930007', 'afz60.30@gmail.com', '$2y$10$Nb3vQbzC66kSHgoSNkzKHOZiIE/C6lsldFgB.Doxi4pYIHHkmUzjm', '2017-03-23 07:05:20', '2017-03-23 07:05:20'),
(2, '09123187642874398', 'tonihainuri92@gmail.com', '$2y$10$3tIeHe/QvKwWzVVOAmH3SePMksVK9m/mh2FztrH178DGrqjEEXhbe', '2017-03-23 07:12:39', '2017-03-23 07:12:39'),
(5, '67890143618939163', 'useftiani@gmail.com', '$2y$10$uQiQw1nR0FK.4FdcPxeRuOOaq4y2M7I/9yDpyOZYLnKTB.WW1AIM.', '2017-04-21 12:00:04', '2017-04-21 12:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `tb_perusahaan`
--

CREATE TABLE `tb_perusahaan` (
  `id` int(11) NOT NULL,
  `kode_perusahaan` varchar(25) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `bidang_perusahaan` varchar(100) NOT NULL,
  `nomor_NPWP` varchar(16) NOT NULL,
  `nomor_SIUP` varchar(25) NOT NULL,
  `nomor_telp` varchar(20) NOT NULL,
  `nomor_hp` varchar(20) NOT NULL,
  `nomor_fax` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `contact_person` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_plan_kerjasama`
--

CREATE TABLE `tb_plan_kerjasama` (
  `id` int(11) NOT NULL,
  `kode_plan` varchar(50) NOT NULL,
  `nama_plan` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_push`
--

CREATE TABLE `tb_push` (
  `id` int(11) NOT NULL,
  `kd_push` varchar(25) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `dari` varchar(255) NOT NULL,
  `kepada` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_report_job`
--

CREATE TABLE `tb_report_job` (
  `id` int(11) NOT NULL,
  `kode_report` varchar(25) NOT NULL,
  `no_NIP` varchar(25) NOT NULL,
  `kode_detail_job` varchar(25) NOT NULL,
  `report` text NOT NULL,
  `report_date` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_subject_push`
--

CREATE TABLE `tb_subject_push` (
  `id` int(11) NOT NULL,
  `kd_subject` varchar(25) NOT NULL,
  `nama_subject` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_subject_push`
--

INSERT INTO `tb_subject_push` (`id`, `kd_subject`, `nama_subject`, `isi`, `create_date`) VALUES
(1, 'DTSBJPS0001', 'Pemberitahuan Liburan Panjang', '<p>Mohon untuk libur panjang seperti tertulis di halaman websitenya..okeeee</p>\r\n', '2017-05-01 04:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sub_kategori`
--

CREATE TABLE `tb_sub_kategori` (
  `id` int(11) NOT NULL,
  `kode_pekerjaan` varchar(6) NOT NULL,
  `sub_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_temporary_perusahaan`
--

CREATE TABLE `tb_temporary_perusahaan` (
  `id` int(11) NOT NULL,
  `no_pendaftaran` varchar(15) NOT NULL,
  `kode_perusahaan` varchar(25) NOT NULL,
  `nama_perusahaan` varchar(90) NOT NULL,
  `cp` varchar(55) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(55) NOT NULL,
  `kebutuhan` varchar(12) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `kode_pekerjaan` varchar(50) NOT NULL,
  `status` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_temporary_perusahaan`
--

INSERT INTO `tb_temporary_perusahaan` (`id`, `no_pendaftaran`, `kode_perusahaan`, `nama_perusahaan`, `cp`, `phone`, `email`, `kebutuhan`, `create_date`, `kode_pekerjaan`, `status`) VALUES
(1, 'REQ0001', '', 'PT. Surya Citra TV', 'amanda', '082838382818', 'amanda@suryacitratv.com', 'MPO01', '2017-04-26 13:53:21', 'DE001', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_term_pembayaran`
--

CREATE TABLE `tb_term_pembayaran` (
  `id` int(11) NOT NULL,
  `kode_term` varchar(10) NOT NULL,
  `nama_term` varchar(25) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_uploadfile_karyawan`
--

CREATE TABLE `tb_uploadfile_karyawan` (
  `id_upload` int(11) NOT NULL,
  `no_ktp` varchar(17) NOT NULL,
  `nama_file` varchar(50) NOT NULL,
  `type_file` varchar(50) NOT NULL,
  `paths` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_uploadfile_karyawan`
--

INSERT INTO `tb_uploadfile_karyawan` (`id_upload`, `no_ktp`, `nama_file`, `type_file`, `paths`, `create_date`) VALUES
(1, '3175070204930007', '3175070204930007 - CV.pdf', '.pdf', 'Upload/', '2017-04-30 20:28:53'),
(2, '3175070204930007', '3175070204930007 - Surat Nikah.pdf', '.pdf', 'Upload/', '2017-04-30 20:29:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_absen`
--
ALTER TABLE `tb_absen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_apply_pekerjaan`
--
ALTER TABLE `tb_apply_pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_bank`
--
ALTER TABLE `tb_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_detail_push`
--
ALTER TABLE `tb_detail_push`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_info_alamat`
--
ALTER TABLE `tb_info_alamat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_info_bahasa`
--
ALTER TABLE `tb_info_bahasa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_info_bank`
--
ALTER TABLE `tb_info_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_info_hobi`
--
ALTER TABLE `tb_info_hobi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_info_interview`
--
ALTER TABLE `tb_info_interview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_info_keahlian`
--
ALTER TABLE `tb_info_keahlian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_info_keluarga`
--
ALTER TABLE `tb_info_keluarga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_info_kursus`
--
ALTER TABLE `tb_info_kursus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_info_pekerjaan`
--
ALTER TABLE `tb_info_pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_info_pendidikan`
--
ALTER TABLE `tb_info_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_info_penghargaan`
--
ALTER TABLE `tb_info_penghargaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_info_penyakit`
--
ALTER TABLE `tb_info_penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_info_referensi`
--
ALTER TABLE `tb_info_referensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_info_test`
--
ALTER TABLE `tb_info_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jenis_pekerjaan`
--
ALTER TABLE `tb_jenis_pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_job`
--
ALTER TABLE `tb_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_karyawan_mobile`
--
ALTER TABLE `tb_karyawan_mobile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kategori_pekerjaan`
--
ALTER TABLE `tb_kategori_pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kerjasama_perusahan`
--
ALTER TABLE `tb_kerjasama_perusahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kode_bank`
--
ALTER TABLE `tb_kode_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_koordinat_perusahaan`
--
ALTER TABLE `tb_koordinat_perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_list_jabatan`
--
ALTER TABLE `tb_list_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_list_job`
--
ALTER TABLE `tb_list_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_list_karyawan`
--
ALTER TABLE `tb_list_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_login_karyawan`
--
ALTER TABLE `tb_login_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_perusahaan`
--
ALTER TABLE `tb_perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_plan_kerjasama`
--
ALTER TABLE `tb_plan_kerjasama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_push`
--
ALTER TABLE `tb_push`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_report_job`
--
ALTER TABLE `tb_report_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_subject_push`
--
ALTER TABLE `tb_subject_push`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_sub_kategori`
--
ALTER TABLE `tb_sub_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_temporary_perusahaan`
--
ALTER TABLE `tb_temporary_perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_term_pembayaran`
--
ALTER TABLE `tb_term_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_uploadfile_karyawan`
--
ALTER TABLE `tb_uploadfile_karyawan`
  ADD PRIMARY KEY (`id_upload`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_absen`
--
ALTER TABLE `tb_absen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_apply_pekerjaan`
--
ALTER TABLE `tb_apply_pekerjaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_bank`
--
ALTER TABLE `tb_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_detail_push`
--
ALTER TABLE `tb_detail_push`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_info_alamat`
--
ALTER TABLE `tb_info_alamat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_info_bahasa`
--
ALTER TABLE `tb_info_bahasa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_info_bank`
--
ALTER TABLE `tb_info_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_info_hobi`
--
ALTER TABLE `tb_info_hobi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_info_interview`
--
ALTER TABLE `tb_info_interview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_info_keahlian`
--
ALTER TABLE `tb_info_keahlian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_info_keluarga`
--
ALTER TABLE `tb_info_keluarga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_info_kursus`
--
ALTER TABLE `tb_info_kursus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_info_pekerjaan`
--
ALTER TABLE `tb_info_pekerjaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_info_pendidikan`
--
ALTER TABLE `tb_info_pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_info_penghargaan`
--
ALTER TABLE `tb_info_penghargaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_info_penyakit`
--
ALTER TABLE `tb_info_penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_info_referensi`
--
ALTER TABLE `tb_info_referensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_info_test`
--
ALTER TABLE `tb_info_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_jenis_pekerjaan`
--
ALTER TABLE `tb_jenis_pekerjaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_job`
--
ALTER TABLE `tb_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_karyawan_mobile`
--
ALTER TABLE `tb_karyawan_mobile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_kategori_pekerjaan`
--
ALTER TABLE `tb_kategori_pekerjaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_kerjasama_perusahan`
--
ALTER TABLE `tb_kerjasama_perusahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_kode_bank`
--
ALTER TABLE `tb_kode_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tb_koordinat_perusahaan`
--
ALTER TABLE `tb_koordinat_perusahaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_list_jabatan`
--
ALTER TABLE `tb_list_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_list_job`
--
ALTER TABLE `tb_list_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_login_karyawan`
--
ALTER TABLE `tb_login_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_perusahaan`
--
ALTER TABLE `tb_perusahaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_plan_kerjasama`
--
ALTER TABLE `tb_plan_kerjasama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_push`
--
ALTER TABLE `tb_push`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_report_job`
--
ALTER TABLE `tb_report_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_subject_push`
--
ALTER TABLE `tb_subject_push`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_sub_kategori`
--
ALTER TABLE `tb_sub_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_temporary_perusahaan`
--
ALTER TABLE `tb_temporary_perusahaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_term_pembayaran`
--
ALTER TABLE `tb_term_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_uploadfile_karyawan`
--
ALTER TABLE `tb_uploadfile_karyawan`
  MODIFY `id_upload` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
