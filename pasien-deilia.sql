-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 11, 2019 at 05:31 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id10195603_pasien_deilia`
--

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `jenis_kelamin` varchar(12) DEFAULT NULL,
  `umur` varchar(5) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `pekerjaan` varchar(25) DEFAULT NULL,
  `alamat` varchar(25) DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  `riwayat_alergi` varchar(25) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama`, `jenis_kelamin`, `umur`, `tanggal_lahir`, `pekerjaan`, `alamat`, `no_hp`, `riwayat_alergi`, `created_on`, `last_update`) VALUES
(8, 'Fifin', 'Perempuan', '20', '1999-07-10', 'Mahasiswi', 'Perina', '082340159762', 'Tidak ada', '2019-07-18 08:07:06', '2019-07-18 08:07:39'),
(11, 'ibu suhartini', 'Perempuan', '29', '1989-09-17', 'ibu rumah tangga', 'waker', NULL, 'tidak ada', '2019-07-18 18:07:45', '2019-07-18 18:07:45'),
(12, 'usman', 'Laki-laki', '38', '1981-12-31', 'wiraswasta', 'sukarare', NULL, 'tidak ada', '2019-07-18 19:07:00', '2019-07-18 19:07:00'),
(13, 'suhardi', 'Laki-laki', '31', '1988-02-06', 'wiraswasta', 'bunsumpak', NULL, NULL, '2019-07-18 19:07:44', '2019-07-18 19:07:44'),
(14, 'martina', 'Perempuan', '31', '1986-03-06', 'ibu rumah tangga', 'sukarare', NULL, NULL, '2019-07-18 19:07:16', '2019-07-18 19:07:16'),
(15, 'liasih', 'Laki-laki', '37', '1980-12-31', 'wiraswasta', 'sukarare', NULL, NULL, '2019-07-18 19:07:24', '2019-07-18 19:07:24'),
(16, 'Sari', 'Perempuan', '33', '1985-12-31', 'Pns', 'Mataram', NULL, NULL, '2019-07-18 20:07:22', '2019-07-18 20:07:22'),
(17, 'ros', 'Perempuan', '27', '1992-03-15', 'pns', 'janapria', NULL, 'tidak ada', '2019-07-19 18:07:09', '2019-07-19 18:07:09'),
(18, 'baiq ika', 'Perempuan', '32', '1985-12-31', 'wiraswasta', 'praya', '081803699266', 'tidak ada', '2019-07-19 18:07:03', '2019-07-19 18:07:03'),
(19, 'ojik', 'Laki-laki', '25', '1994-07-22', 'mahasiswa', 'bagu', NULL, NULL, '2019-07-20 19:07:13', '2019-07-22 09:07:03'),
(20, 'dewi', 'Perempuan', '35', '1984-07-15', 'wiraswasta', 'sukarare', NULL, 'tidak ada', '2019-07-20 19:07:46', '2019-07-20 19:07:46'),
(21, 'yuliana', 'Perempuan', '29', '1989-11-17', 'pns', 'praya', NULL, 'tidak ada', '2019-07-20 19:07:30', '2019-07-20 19:07:30'),
(22, 'rama', 'Laki-laki', '16', '2002-11-06', 'siswa', 'praya', '087856211355', 'tidak ada', '2019-07-22 09:07:14', '2019-07-22 09:07:14'),
(23, 'zavira', 'Perempuan', '12', '2006-09-12', 'siswa', 'praya', '087856211355', 'tidak ada', '2019-07-22 09:07:32', '2019-07-22 09:07:32'),
(25, 'devi', 'Perempuan', '15', '2002-11-22', 'siswa', 'kuta', '085238611344', 'tidak ada', '2019-07-22 09:07:41', '2019-07-24 17:07:15'),
(26, 'suraini laili', 'Perempuan', '32', '1985-12-30', 'pns', 'bunkate', NULL, 'tidak ada', '2019-07-22 17:07:45', '2019-07-22 17:07:45'),
(27, 'rohmi', 'Perempuan', '25', '1994-05-11', 'guru', 'praya', '087748832669', 'tidak ada', '2019-07-22 17:07:02', '2019-07-22 17:07:02'),
(28, 'nurmilasari', 'Perempuan', '27', '1992-07-07', 'analis', 'jelantik', '081917111028', 'tidak ada', '2019-07-22 17:07:25', '2019-07-22 17:07:25'),
(29, 'm irfan', 'Laki-laki', '13', '2007-06-17', 'siswa', 'wakul', NULL, 'tidak ada', '2019-07-22 18:07:16', '2019-07-22 18:07:16'),
(30, 'hariadi', 'Laki-laki', '17', '2002-01-14', 'siswa', 'barejulat', '082359129543', 'tidak ada', '2019-07-22 18:07:02', '2019-07-23 17:07:01'),
(31, 'hendri', 'Laki-laki', '15', '2004-05-14', 'siswa', 'praya', NULL, 'tidak ada', '2019-07-22 20:07:13', '2019-07-22 20:07:13'),
(32, 'rara', 'Perempuan', '16', '2003-01-16', 'siswa', 'barejulat', '082342190443', 'tidak ada', '2019-07-23 08:07:00', '2019-07-23 08:07:00'),
(33, 'tila oktaviani', 'Perempuan', '25', '1992-03-15', 'mahasiswa', 'narmada', '081805615191', 'tidak ada', '2019-07-23 09:07:48', '2019-07-23 09:07:48'),
(34, 'norma', 'Perempuan', '33', '1986-02-03', 'pns', 'praya', NULL, 'tidak ada', '2019-07-23 10:07:32', '2019-07-23 10:07:32'),
(35, 'Erni', 'Perempuan', '16', '2003-06-12', 'Siswa', 'Barejulat', NULL, 'Tidak ada', '2019-07-23 17:07:31', '2019-07-23 17:07:31'),
(36, 'Baiq azkia', 'Perempuan', '30', '1989-11-15', 'Perawat', 'Praya', '081907581415', 'Tidak ada', '2019-07-23 17:07:57', '2019-07-23 17:07:57'),
(37, 'Yuyun/Nurul', 'Perempuan', '24', '1995-05-03', 'Peg swasta', 'Batukliang utara', '081907284200', 'Tidak ada', '2019-07-23 17:07:07', '2019-07-23 17:07:07'),
(38, 'eva apriliana', 'Perempuan', '20', '1999-01-01', 'peg swasta', 'barejulat', NULL, 'alergi kambing', '2019-07-24 17:07:04', '2019-07-24 17:07:04'),
(42, 'khaerul gam', 'Laki-laki', '26', '1992-11-11', 'pns', 'btn tampar tampar', NULL, 'tidak ada', '2019-07-24 17:07:15', '2019-07-24 17:07:15'),
(43, 'aven/sovia', 'Perempuan', '16', '2000-09-24', 'siswa', 'bunkate', '087761539302', 'tidak ada', '2019-07-24 17:07:51', '2019-07-24 17:07:51'),
(44, 'titis', 'Perempuan', '20', '1999-07-08', 'mahasiswa', 'puyung', NULL, 'tidak ada', '2019-07-24 18:07:52', '2019-07-24 18:07:52'),
(45, 'munawarah', 'Perempuan', '29', '1990-11-20', 'ibu rumah tangga', 'puyung', NULL, 'tidak ada', '2019-07-24 18:07:49', '2019-07-24 18:07:49'),
(46, 'saadah', 'Perempuan', '48', '1971-12-31', 'pns', 'waker', NULL, 'tidak ada', '2019-07-25 09:07:43', '2019-07-25 09:07:43'),
(47, 'baiq putri', 'Perempuan', '19', '2000-12-31', 'mahasiswa', 'marong', NULL, 'tidak ada', '2019-07-25 09:07:42', '2019-07-25 09:07:42'),
(48, 'surianingsih', 'Perempuan', '32', '1985-03-31', 'pns', 'pringgrata', NULL, 'tidak ada', '2019-07-25 09:07:42', '2019-07-25 09:07:42'),
(49, 'gita', 'Perempuan', '15', '1992-03-15', 'siswa', 'bonjeruk', NULL, 'tidak ada', '2019-07-25 09:07:09', '2019-07-25 09:07:48'),
(50, 'nurul sani', 'Perempuan', '16', '1992-03-15', 'siswa', 'bonjeruk', NULL, 'tidak ada', '2019-07-25 09:07:34', '2019-07-25 09:07:34'),
(51, 'dadek', 'Laki-laki', '23', '1992-03-15', 'wiraswasta', 'praya', NULL, 'tidak ada', '2019-07-25 09:07:51', '2019-07-25 09:07:51'),
(52, 'nurhuwaida', 'Perempuan', '30', '1992-03-15', 'guru', 'jelantik', NULL, 'tidak ada', '2019-07-25 09:07:08', '2019-07-25 09:07:08'),
(53, 'nana', 'Perempuan', '24', '1992-03-15', 'perawat', 'kelebuh', NULL, 'tidak ada', '2019-07-25 09:07:43', '2019-07-25 09:07:43'),
(54, 'eki', 'Laki-laki', '16', '2002-10-10', 'siswa', 'jelantik', '087757858230', 'tidak ada', '2019-07-25 18:07:15', '2019-07-25 18:07:15'),
(55, 'hikmah', 'Perempuan', '18', '2001-12-31', 'wiraswasta', 'gontoran', NULL, 'tidak ada', '2019-07-25 18:07:35', '2019-07-25 18:07:35'),
(56, 'yendri', 'Perempuan', '15', '2004-12-31', 'siswa', 'barejulat', NULL, 'tidak ada', '2019-07-25 18:07:28', '2019-07-25 18:07:28'),
(57, 'harminia', 'Perempuan', '33', '1981-12-31', 'ibu rumah tangga', 'gerunung', NULL, 'tidak ada', '2019-07-25 18:07:39', '2019-07-25 18:07:39'),
(58, 'nenden', 'Perempuan', '25', '1992-03-15', 'wiraswasta', 'praya', NULL, 'tidak ada', '2019-07-25 18:07:31', '2019-07-25 18:07:31'),
(59, 'baiq yati', 'Perempuan', '36', '1981-12-31', 'pns', 'kumbung', NULL, 'tidak ada', '2019-07-25 18:07:06', '2019-07-25 18:07:06'),
(60, 'raina sinta dewi', 'Perempuan', '18', '2018-02-06', 'siswa', 'puyung', NULL, 'tidak ada', '2019-07-25 18:07:19', '2019-07-25 18:07:19'),
(61, 'ifa', 'Perempuan', '22', '1991-03-31', 'mahasiswa', 'mataram', NULL, 'tidak ada', '2019-07-25 18:07:41', '2019-07-25 18:07:25'),
(62, 'baiq galuh', 'Perempuan', '23', '1996-03-19', 'honorer', 'kuripan', NULL, 'tidak ada', '2019-07-26 17:07:18', '2019-07-26 17:07:18'),
(63, 'Robi', 'Laki-laki', '18', '1992-03-15', 'siswa', 'wakul', NULL, 'tidak ada', '2019-07-26 19:07:07', '2019-07-26 19:07:07'),
(64, 'nanim', 'Perempuan', '37', '2019-07-20', 'guru', 'sukarare', NULL, 'tidak ada', '2019-07-26 21:07:57', '2019-07-26 21:07:57'),
(65, 'Rizkaniasari', 'Perempuan', '22', '1997-07-01', 'Mahasiswi', 'Praya', '085339126723', 'Daging', '2019-07-27 13:07:40', '2019-07-27 13:07:40'),
(66, 'ayu manik', 'Perempuan', '33', '1986-08-07', 'wiraswasta', 'ubung', NULL, 'tidak ada', '2019-07-27 17:07:42', '2019-07-27 17:07:42'),
(67, 'alam', 'Laki-laki', '23', '1996-04-20', 'mahasiswa', 'jelantik', NULL, 'tidak ada', '2019-07-27 18:07:39', '2019-07-27 18:07:39'),
(68, 'dila', 'Perempuan', '31', '1988-12-24', 'mahasiswa', 'praya', NULL, 'tidak ada', '2019-07-29 16:07:36', '2019-07-29 16:07:22'),
(69, 'diah apriana', 'Perempuan', '34', '1985-04-27', 'guru', 'bonjeruk', NULL, 'tidak ada', '2019-07-29 16:07:37', '2019-07-29 16:07:37'),
(70, 'wisha', 'Perempuan', '11', '2008-05-04', 'siswa', 'praya', NULL, 'tidak ada', '2019-07-29 16:07:46', '2019-07-29 16:07:46'),
(71, 'nana', 'Perempuan', '5', '2014-05-19', 'siswa', 'taman daye', NULL, 'tidak ada', '2019-07-29 17:07:26', '2019-07-29 17:07:26'),
(72, 'reva', 'Perempuan', '5', '2014-04-21', 'siswa', 'manggong', NULL, 'tidak ada', '2019-07-29 17:07:29', '2019-07-29 17:07:29'),
(73, 'baiq rona denta listiya', 'Perempuan', '25', '1993-11-18', 'guru', 'praya', '082339474659', 'tidak ada', '2019-07-29 18:07:10', '2019-07-29 18:07:10'),
(74, 'hartini', 'Perempuan', '44', '1975-05-17', 'pns', 'wakul', NULL, 'tidak ada', '2019-07-29 20:07:04', '2019-07-29 20:07:04'),
(75, 'sri miriyanti', 'Perempuan', '31', '1988-12-20', 'bidan', 'pringgrata', NULL, 'tidak ada', '2019-07-30 17:07:39', '2019-07-30 17:07:39'),
(76, 'putri Dende', 'Perempuan', '14', '2005-06-12', 'siswa', 'praya', NULL, 'tidak ada', '2019-07-30 19:07:57', '2019-07-30 19:07:57'),
(77, 'Urwa', 'Perempuan', '16', '2003-04-30', 'Siswa', 'Praya', NULL, 'Tidak ada', '2019-07-31 17:07:44', '2019-07-31 17:07:44'),
(78, 'baiq endang', 'Perempuan', '35', '1984-06-26', 'wiraswasta', 'jelantik', NULL, 'tidak ada', '2019-07-31 19:07:25', '2019-07-31 19:07:25'),
(79, 'baiq novi', 'Perempuan', '20', '1996-11-05', 'wiraswasta', 'pujut', NULL, 'tidak ada', '2019-08-01 19:08:05', '2019-08-01 19:08:05'),
(80, 'ita', 'Perempuan', '25', '1994-10-05', 'perawat', 'bonjeruk', NULL, 'tidak ada', '2019-08-05 18:08:09', '2019-08-05 18:08:09'),
(81, 'marni', 'Perempuan', '32', '1987-04-03', 'ibu rumah tangga', 'pengenjek', NULL, 'tidak ada', '2019-08-05 18:08:06', '2019-08-05 18:08:06'),
(82, 'haji sudirman', 'Laki-laki', '55', '1960-12-31', 'wiraswasta', 'pengenjek', NULL, 'tidak ada', '2019-08-05 20:08:57', '2019-08-05 20:08:57'),
(83, 'suciati', 'Perempuan', '40', '1979-12-31', 'ibu rumah tangga', 'puyung', '087759175287', 'tidak ada', '2019-08-06 17:08:46', '2019-08-06 17:08:46'),
(84, 'annisa iswari', 'Perempuan', '19', '2000-04-23', 'mahasiswa', 'IPDN', NULL, 'tidak ada', '2019-08-06 18:08:15', '2019-08-06 18:08:15'),
(85, 'lale sri ratna', 'Perempuan', '20', '1998-10-16', 'mahasiswa', 'sukarare', NULL, 'antalgin', '2019-08-06 19:08:56', '2019-08-06 19:08:56'),
(86, 'tina', 'Perempuan', '32', '1987-11-14', 'bidan ', 'ubung', NULL, 'tidak ada', '2019-08-07 17:08:06', '2019-08-07 17:08:06'),
(88, 'Tiwi', 'Perempuan', '28', '1993-02-28', '0', 'praya', NULL, 'tidak ada', '2019-08-07 18:08:46', '2019-08-07 18:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `perawatan`
--

CREATE TABLE `perawatan` (
  `id_perawatan` int(11) NOT NULL,
  `diagnosa` varchar(255) DEFAULT NULL,
  `terapi` varchar(255) DEFAULT NULL,
  `biaya` bigint(20) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `id_pasien` varchar(12) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perawatan`
--

INSERT INTO `perawatan` (`id_perawatan`, `diagnosa`, `terapi`, `biaya`, `keterangan`, `id_pasien`, `tanggal`, `created_on`, `last_update`) VALUES
(9, 'gingivitis kronis RB', 'scaling RA RB', 300000, 'kontrol tiap 6 bln', '11', '2019-07-18', '2019-07-18 19:07:00', '2019-07-18 19:07:00'),
(10, 'crossbite 12, angle K.1', 'insersi RA', 2000000, NULL, '8', '2018-11-09', '2019-07-18 19:07:00', '2019-07-18 19:07:00'),
(11, 'crossbite 12', 'wire 12', 50000, NULL, '8', '2018-11-29', '2019-07-18 19:07:00', '2019-07-18 19:07:00'),
(12, 'crossbite 12', 'power O', 100000, NULL, '8', '2018-12-20', '2019-07-18 19:07:00', '2019-07-18 19:07:00'),
(13, 'crossbite 12', 'niti 014', 150000, NULL, '8', '2019-01-15', '2019-07-18 19:07:00', '2019-07-18 19:07:00'),
(14, NULL, 'niti 016x022 fiksasi', 200000, NULL, '8', '2019-03-29', '2019-07-18 19:07:00', '2019-07-18 19:07:00'),
(15, NULL, 'pasang lepas, power O', 150000, NULL, '8', '2019-03-16', '2019-07-18 19:07:00', '2019-07-18 19:07:00'),
(16, NULL, 'kontrol power O', 100000, NULL, '8', '2019-05-13', '2019-07-18 19:07:00', '2019-07-18 19:07:00'),
(17, 'diastema RB', 'insersi RB', 2000000, 'bonus scaling', '8', '2019-06-10', '2019-07-18 19:07:00', '2019-07-18 19:07:00'),
(18, NULL, 'pasang lepas, power O', 300000, NULL, '8', '2019-07-09', '2019-07-18 19:07:00', '2019-07-18 19:07:00'),
(19, 'pulpitis akut 23', 'eugenol Ts, pondex forte', 100000, 'balik jika tidak sakit dan ingin ditambal permanen', '12', '2019-07-18', '2019-07-18 19:07:00', '2019-07-18 19:07:00'),
(20, 'abcess 36', 'incisi abses 36, clindamicin 300mg', 50000, NULL, '13', '2019-07-18', '2019-07-18 19:07:00', '2019-07-18 19:07:00'),
(21, '36 pulpitis akut', 'eugenol Ts, grafamic faridexon', 100000, NULL, '14', '2019-07-18', '2019-07-18 19:07:00', '2019-07-18 19:07:00'),
(22, '26 pulpitis akut', 'eugenol Ts, podex forte, faridexon', 100000, NULL, '15', '2019-07-18', '2019-07-18 19:07:00', '2019-07-18 19:07:00'),
(23, NULL, 'Power O', 100000, NULL, '16', '2019-07-18', '2019-07-18 20:07:00', '2019-07-18 20:07:00'),
(24, 'periodontitis akut', 'open bur', 50000, NULL, '14', '2019-07-19', '2019-07-19 18:07:00', '2019-07-19 18:07:00'),
(25, 'protrusi RA RB', 'insersi orto RA RB', 4000000, NULL, '17', '2018-12-21', '2019-07-19 18:07:00', '2019-07-19 18:07:00'),
(26, NULL, 'pasang lepas 16,45', 50000, NULL, '17', '2019-01-05', '2019-07-19 18:07:00', '2019-07-19 18:07:00'),
(27, NULL, 'exo 24, pasang lepas', 200000, NULL, '17', '2019-02-23', '2019-07-19 18:07:00', '2019-07-19 18:07:00'),
(28, NULL, 'niti 016x016 RA, power O RB', 250000, NULL, '17', '2019-03-08', '2019-07-19 18:07:00', '2019-07-19 18:07:00'),
(29, NULL, 'niti 014 RB, pasang lepas', 200000, NULL, '17', '2019-05-17', '2019-07-19 18:07:00', '2019-07-19 18:07:00'),
(30, NULL, 'pasang lepas 45,46', 200000, NULL, '17', '2019-06-20', '2019-07-19 18:07:00', '2019-07-19 18:07:00'),
(31, NULL, 'pasang BT 46, 33\r\nganti BT 47', 150000, NULL, '17', '2019-07-13', '2019-07-19 18:07:00', '2019-07-19 18:07:00'),
(32, NULL, 'peninggian gigitan 46\r\ntambah BT 47\r\n', 100000, NULL, '17', '2019-07-19', '2019-07-19 18:07:00', '2019-07-19 18:07:00'),
(33, 'crossbite 12, ', 'insersi orto RA', 2000000, 'peninggian, composite', '18', '2018-09-15', '2019-07-19 18:07:00', '2019-07-19 18:07:00'),
(34, 'multiple diastema RB', 'insersi orto RB', 2000000, NULL, '18', '2018-09-29', '2019-07-19 18:07:00', '2019-07-19 18:07:00'),
(35, NULL, 'power o', 100000, NULL, '18', '2018-10-23', '2019-07-19 18:07:00', '2019-07-19 18:07:00'),
(36, NULL, 'niti 012 RA RB\r\npower o', 200000, NULL, '18', '2018-11-06', '2019-07-19 18:07:00', '2019-07-19 18:07:00'),
(37, 'GP 36', 'eugenol Ts', 100000, 'premedikasi amox fenamin faridexon', '19', '2019-07-20', '2019-07-20 19:07:00', '2019-07-20 19:07:00'),
(38, NULL, 'distalisasi RB', 50000, NULL, '18', '2018-11-21', '2019-07-22 08:07:00', '2019-07-22 08:07:00'),
(39, NULL, 'RA niti 016\r\nRB distalisasi', 200000, NULL, '18', '2018-12-16', '2019-07-22 08:07:00', '2019-07-22 08:07:00'),
(40, NULL, 'distalisasi RA RB', 200000, NULL, '18', '2019-01-03', '2019-07-22 08:07:00', '2019-07-22 08:07:00'),
(41, NULL, 'RB niti 016x016', 200000, NULL, '18', '2019-02-06', '2019-07-22 08:07:00', '2019-07-22 08:07:00'),
(42, 'endo 21', 'cresophen', 500000, NULL, '18', '2019-02-11', '2019-07-22 08:07:00', '2019-07-22 08:07:00'),
(43, NULL, 'fiksasi RA', 150000, NULL, '18', '2019-04-22', '2019-07-22 08:07:00', '2019-07-22 08:07:00'),
(44, NULL, 'fiksasi power o', 150000, NULL, '18', '2019-07-12', '2019-07-22 08:07:00', '2019-07-22 08:07:00'),
(45, '34 periodontitis kronis, mobil 4', 'exo 34 lido', 150000, NULL, '20', '2019-07-20', '2019-07-22 09:07:00', '2019-07-22 09:07:00'),
(46, '37 pulpa polip', 'septodont arsen Ts', 100000, 'balik kamis', '21', '2019-07-20', '2019-07-22 09:07:00', '2019-07-22 09:07:00'),
(48, NULL, 'pasang lepas 35\r\ndistalisasi 24, 45\r\npower o', 200000, NULL, '26', '2019-07-22', '2019-07-22 17:07:00', '2019-07-22 17:07:00'),
(49, 'protrusi RA', 'insersi orto RA', 2000000, NULL, '27', '2019-07-11', '2019-07-22 17:07:00', '2019-07-22 17:07:00'),
(50, NULL, 'pasang lepas 24 15', 0, 'free, BT 26 pesan', '27', '2019-07-22', '2019-07-22 17:07:00', '2019-07-22 17:07:00'),
(51, '11 abcess ok GP\r\n12 22 karies dentin', 'endo 11\r\n12 22 tambal composite', 500000, 'DP', '28', '2019-07-22', '2019-07-22 17:07:00', '2019-07-22 17:07:00'),
(52, '36 GP', 'septodont arsen TS', 50000, 'jumat balik', '14', '2019-07-22', '2019-07-22 18:07:00', '2019-07-22 18:07:00'),
(53, '36 pulpitis akut', 'eugenol Ts', 100000, 'premedikasi yusimox, fenamin, faridexon', '29', '2019-07-22', '2019-07-22 18:07:00', '2019-07-22 18:07:00'),
(54, 'crowded RA RB', 'insersi orto RA RB', 4000000, NULL, '30', '2019-06-11', '2019-07-22 19:07:00', '2019-08-08 17:08:00'),
(55, NULL, 'exo 44', 100000, NULL, '30', '2019-07-22', '2019-07-22 19:07:00', '2019-07-22 19:07:00'),
(56, NULL, 'pasang lepas, power o', 150000, NULL, '30', '2019-07-12', '2019-07-22 19:07:00', '2019-07-22 19:07:00'),
(57, '21 karies email\r\npower o', 'tambal composite 21', 150000, NULL, '31', '2019-07-22', '2019-07-22 20:07:00', '2019-07-22 20:07:00'),
(58, 'crowded RA RB', 'insersi orto RA RB', 4000000, NULL, '31', '2018-06-25', '2019-07-22 20:07:00', '2019-07-22 20:07:00'),
(59, NULL, 'pasang lepas', 150000, NULL, '31', '2018-07-18', '2019-07-22 20:07:00', '2019-07-22 20:07:00'),
(60, NULL, 'coil spring, pasang lepas', 150000, NULL, '31', '2018-08-18', '2019-07-22 20:07:00', '2019-07-22 20:07:00'),
(61, NULL, 'exo 44', 0, NULL, '31', '2018-09-08', '2019-07-22 20:07:00', '2019-07-22 20:07:00'),
(62, NULL, 'pasang lepas power o', 150000, NULL, '31', '2018-09-20', '2019-07-22 20:07:00', '2019-07-22 20:07:00'),
(63, NULL, 'RB niti 016 ', 200000, NULL, '31', '2018-10-17', '2019-07-22 20:07:00', '2019-07-22 20:07:00'),
(64, NULL, 'RB niti 016x016 ', 200000, NULL, '31', '2018-12-24', '2019-07-22 20:07:00', '2019-07-22 20:07:00'),
(65, NULL, 'power o RA\r\ndistalisasi RB', 150000, NULL, '31', '2019-02-07', '2019-07-22 20:07:00', '2019-07-22 20:07:00'),
(66, NULL, 'ganti BT 26', 200000, NULL, '31', '2019-03-06', '2019-07-22 20:07:00', '2019-07-22 20:07:00'),
(67, NULL, NULL, 150000, NULL, '31', '2019-04-16', '2019-07-22 20:07:00', '2019-07-22 20:07:00'),
(68, NULL, 'niti 014 RB', 200000, NULL, '31', '2019-05-17', '2019-07-22 20:07:00', '2019-07-22 20:07:00'),
(69, NULL, NULL, 150000, NULL, '31', '2019-06-10', '2019-07-22 20:07:00', '2019-07-22 20:07:00'),
(70, 'crowded RA', 'insersi orto RA', 2000000, NULL, '32', '2019-05-25', '2019-07-23 08:07:00', '2019-07-23 08:07:00'),
(71, NULL, 'pasang lepas, power o', 150000, NULL, '32', '2019-06-28', '2019-07-23 08:07:00', '2019-07-23 08:07:00'),
(72, 'protrusi RA RB', 'insersi RA RB', 4000000, NULL, '33', '2018-07-27', '2019-07-23 09:07:00', '2019-07-23 09:07:00'),
(73, NULL, 'kontrol PO', 150000, NULL, '33', '2018-08-20', '2019-07-23 09:07:00', '2019-07-23 09:07:00'),
(74, NULL, 'exo 46', 100000, NULL, '33', '2018-08-28', '2019-07-23 09:07:00', '2019-07-23 09:07:00'),
(75, NULL, 'tambah BT 17, exo', 200000, NULL, '33', '2018-09-24', '2019-07-23 09:07:00', '2019-07-23 09:07:00'),
(76, NULL, 'exo 25\r\nRA niti 016x016', 300000, NULL, '33', '2019-07-17', '2019-07-23 09:07:00', '2019-07-23 17:07:00'),
(77, '46 pulpitis kronis', 'Eugenol ts', 100000, 'Premedikasi grafamic fatidexon', '35', '2019-07-23', '2019-07-23 17:07:00', '2019-07-23 17:07:00'),
(78, 'Protrusi Ra Rb', 'Insersi orto Ra Rb', 3000000, NULL, '37', '2019-04-22', '2019-07-23 17:07:00', '2019-07-23 17:07:00'),
(79, NULL, NULL, 0, NULL, '37', '2019-05-13', '2019-07-23 17:07:00', '2019-07-23 17:07:00'),
(80, NULL, 'Power o', 150000, NULL, '37', '2019-06-10', '2019-07-23 17:07:00', '2019-07-23 17:07:00'),
(81, NULL, 'Exo 44\r\nGanti BT 46', 200000, NULL, '37', '2019-07-02', '2019-07-23 17:07:00', '2019-07-23 17:07:00'),
(82, NULL, 'Exo 36', 100000, NULL, '37', '2019-07-15', '2019-07-23 17:07:00', '2019-07-23 17:07:00'),
(83, NULL, 'RB Niti 016x016\r\nDistalisasi 33', 100000, NULL, '37', '2019-07-17', '2019-07-23 17:07:00', '2019-07-23 17:07:00'),
(84, '15 pulpitis akut\r\n46 karies dentin', '15 eugenol septodont\r\n46 tambal GIC', 200000, 'balik jumat', '42', '2019-07-24', '2019-07-24 17:07:00', '2019-07-24 17:07:00'),
(85, 'multiple diastema RB', 'insersi orto RB', 2000000, NULL, '25', '2019-06-25', '2019-07-24 17:07:00', '2019-07-24 17:07:00'),
(86, NULL, 'pasang lepas 35, power O\r\nganti BT 36', 200000, NULL, '25', '2019-07-24', '2019-07-24 18:07:00', '2019-07-24 18:07:00'),
(87, 'RA RB gingivitis marginalis kronis', 'scaling RA RB', 200000, NULL, '44', '2019-07-24', '2019-07-24 18:07:00', '2019-07-24 18:07:00'),
(88, 'pridontitis akut ok GR 36', 'premedikasi', 50000, NULL, '46', '2019-07-24', '2019-07-25 09:07:00', '2019-07-25 09:07:00'),
(89, 'multiple diastema', 'insersi RA RB', 4000000, NULL, '47', '2018-09-08', '2019-07-25 09:07:00', '2019-07-25 09:07:00'),
(90, 'crowded', 'insersi RA RB', 4000000, NULL, '48', '2018-08-28', '2019-07-25 09:07:00', '2019-07-25 09:07:00'),
(91, NULL, 'RB niti 016x022', 200000, NULL, '48', '2018-07-27', '2019-07-25 09:07:00', '2019-07-25 09:07:00'),
(92, NULL, 'insersi orto RA', 2000000, NULL, '49', '2018-09-26', '2019-07-25 09:07:00', '2019-07-25 09:07:00'),
(93, 'central diastema', 'insersi orto RA', 2000000, NULL, '50', '2018-09-27', '2019-07-25 09:07:00', '2019-07-25 09:07:00'),
(94, 'crowded RA', 'insersi orto RA', 2000000, NULL, '51', '2018-09-25', '2019-07-25 09:07:00', '2019-07-25 09:07:00'),
(95, NULL, 'power O', 50000, NULL, '51', '2018-10-20', '2019-07-25 09:07:00', '2019-07-25 09:07:00'),
(96, 'crowded RA RB', 'insersi orto RA RB', 4000000, NULL, '52', '2018-07-13', '2019-07-25 09:07:00', '2019-07-25 09:07:00'),
(97, NULL, 'power o', 250000, NULL, '52', '2018-07-30', '2019-07-25 09:07:00', '2019-07-25 09:07:00'),
(98, 'crowded', 'insersi orto RA RB', 4000000, NULL, '53', '2018-07-05', '2019-07-25 09:07:00', '2019-07-25 09:07:00'),
(99, NULL, 'pasang lepas\r\nkontrol power o', 100000, NULL, '53', '2018-07-21', '2019-07-25 09:07:00', '2019-07-25 09:07:00'),
(100, NULL, 'kontrol power O', 150000, NULL, '53', '2018-08-22', '2019-07-25 09:07:00', '2019-07-25 09:07:00'),
(101, NULL, 'kontrol', 150000, NULL, '53', '2018-09-06', '2019-07-25 09:07:00', '2019-07-25 09:07:00'),
(102, 'mesiodens RA', 'insersi orto RA', 2000000, NULL, '54', '2018-06-27', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(103, NULL, 'exo mesiodens \r\nkontrol pasang lepas', 250000, NULL, '54', '2019-07-25', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(104, 'crowded RA', 'nsersi orto RA', 2000000, NULL, '55', '2018-06-28', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(105, NULL, 'kontrol coil spring, niti 014 RA', 150000, NULL, '55', '2018-08-04', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(106, NULL, 'kontrrol', 100000, NULL, '55', '2018-09-07', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(107, 'crowded', 'insersi orto', 2000000, NULL, '56', '2018-06-29', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(108, 'crowded', 'insersi orto RA RB', 4000000, NULL, '57', '2018-06-25', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(109, NULL, 'kontrol power o \r\npasang lepas', 200000, NULL, '57', '2018-08-14', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(110, 'protrusi RA RB', 'insersi orto RA RB', 3500000, NULL, '58', '2018-06-21', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(111, NULL, 'pasang lepas', 100000, NULL, '58', '2018-07-20', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(112, NULL, 'exo 34, kontrol', 150000, NULL, '58', '2018-09-08', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(113, NULL, 'ganti BT 46', 200000, NULL, '58', '2018-09-15', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(114, NULL, 'tambah BT 47', 200000, NULL, '58', '2018-10-06', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(115, 'fiksasi post fraktur', 'insersi RA', 1500000, NULL, '59', '2018-05-12', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(116, NULL, 'kontrol power O', 50000, NULL, '59', '2018-09-24', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(117, 'crossbite', 'insersi orto RA RB', 4000000, NULL, '60', '2018-02-06', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(118, NULL, 'pasang lepas', 150000, NULL, '60', '2018-03-07', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(119, NULL, 'exo 44', 100000, NULL, '60', '2018-03-15', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(120, NULL, 'RB niti 016x016 distalisasi', 150000, NULL, '60', '2018-04-02', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(121, NULL, 'exo 14\r\npasang lepas 46', 150000, NULL, '60', '2018-04-16', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(122, NULL, 'niti 014 distalisasi\r\n', 200000, NULL, '60', '2018-04-26', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(123, NULL, 'distalisasi', 150000, NULL, '60', '2018-05-31', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(124, NULL, 'peninggian, distalisasi RB\r\n', 200000, NULL, '60', '2018-07-04', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(125, NULL, 'RA niti 016, RB niti 016x016, BT17,27\r\n', 400000, NULL, '60', '2018-09-15', '2019-07-25 18:07:00', '2019-07-25 18:07:00'),
(126, 'crowded RA RB', 'insersi orto RA RB', 4000000, NULL, '62', '2018-06-28', '2019-07-26 17:07:00', '2019-07-26 17:07:00'),
(127, NULL, 'pasang lepas 35\r\n', 150000, NULL, '62', '2019-07-26', '2019-07-26 17:07:00', '2019-07-26 17:07:00'),
(128, '15 pulpitis akut', '15 hydcal Ts', 100000, NULL, '42', '2019-07-26', '2019-07-26 18:07:00', '2019-07-26 18:07:00'),
(129, 'crossbite 21 RA', 'insersi orto RA', 1500000, NULL, '63', '2018-04-26', '2019-07-26 19:07:00', '2019-07-26 19:07:00'),
(130, NULL, 'power O', 100000, NULL, '63', '2018-08-14', '2019-07-26 19:07:00', '2019-07-26 19:07:00'),
(131, '37 necrose pulpa', '37 septodont arsen TS', 100000, NULL, '64', '2019-07-20', '2019-07-26 21:07:00', '2019-07-26 21:07:00'),
(132, '37 periodontitis kronis', '37 eugenol TS', 100000, 'premedikasi cataflam', '64', '2019-07-26', '2019-07-26 21:07:00', '2019-07-26 21:07:00'),
(133, 'Crossbite 12\r\nKaries profunda 36\r\nPulpitis kronis 24', 'Insersi orto RA\r\n36 hydcal gic\r\n24 eugenol Ts', 2250000, 'Sisa 250000', '65', '2019-07-27', '2019-07-27 13:07:00', '2019-07-27 13:07:00'),
(134, NULL, '43, 33, 23 distalisasi', 100000, NULL, '17', '2019-07-27', '2019-07-27 16:07:00', '2019-07-27 16:07:00'),
(135, NULL, 'niti 016x022 RA\r\npower O', 150000, NULL, '32', '2019-07-27', '2019-07-27 17:07:00', '2019-07-27 17:07:00'),
(137, '48 pulpitis akut', '48 eugenol Ts', 100000, 'premedikasi amoxterra, grafamic, faridexon', '67', '2019-07-27', '2019-07-27 18:07:00', '2019-07-27 18:07:00'),
(138, 'protrusi RA RB', 'insersi RA RB', 4000000, NULL, '68', '2017-01-27', '2019-07-29 16:07:00', '2019-07-29 16:07:00'),
(139, '46 GP. tambal GIC', 'power o RA', 100000, 'premedikasi grafamic, amoxterra, faridexon', '68', '2019-07-29', '2019-07-29 16:07:00', '2019-07-29 16:07:00'),
(140, NULL, 'insersi orto RA RB', 4000000, NULL, '69', '2017-07-07', '2019-07-29 16:07:00', '2019-07-29 16:07:00'),
(141, NULL, 'RA & RB niti 016x016 \r\ndistalisasi power C', 150000, 'sensodyne sensitive', '69', '2019-07-29', '2019-07-29 16:07:00', '2019-07-29 16:07:00'),
(142, 'gingivitis RB\r\nhiperplasia gingiva anterior RB', 'scaling RA RB', 150000, 'kontrol 1 bln ', '70', '2019-07-29', '2019-07-29 17:07:00', '2019-07-29 17:07:00'),
(143, '81 persistensi mobile 4', 'exo CE', 50000, NULL, '71', '2019-07-29', '2019-07-29 17:07:00', '2019-07-29 17:07:00'),
(144, '75 pulpitis kronis', 'eugenol Ts', 100000, NULL, '72', '2019-07-29', '2019-07-29 17:07:00', '2019-07-29 17:07:00'),
(145, 'crossbite 13', 'insersi orto RA RB', 4000000, NULL, '73', '2019-07-03', '2019-07-29 18:07:00', '2019-07-29 18:07:00'),
(146, NULL, 'coil spring', 150000, NULL, '73', '2019-07-29', '2019-07-29 19:07:00', '2019-07-29 19:07:00'),
(147, NULL, 'GIC 15,12,16, 22, 26\r\nscaling RA RB', 600000, NULL, '74', '2019-07-29', '2019-07-29 20:07:00', '2019-07-29 20:07:00'),
(148, 'protrusi RA RB\r\npost orto dr tukang gigi', 'insersi RA RB', 4000000, 'DP 2500000\r\nsisa 1700000', '75', '2019-07-30', '2019-07-30 18:07:00', '2019-07-30 18:07:00'),
(149, '46 traumatic oklusi', 'open bur', 0, 'cataflam 2 dd 1', '35', '2019-07-30', '2019-07-30 18:07:00', '2019-07-30 18:07:00'),
(150, 'protrusi', 'insersi RA', 2000000, NULL, '79', '2019-06-28', '2019-08-01 19:08:00', '2019-08-01 19:08:00'),
(151, 'Protrusi ra', 'Pasang lepas 36, 45, 46\r\nPeninggian 47\r\nNiti 012 RB', 250000, NULL, '53', '2019-08-02', '2019-08-02 17:08:00', '2019-08-02 17:08:00'),
(152, NULL, 'niti 016x016 RA, RB power O\r\n', 200000, NULL, '18', '2019-08-02', '2019-08-02 20:08:00', '2019-08-02 20:08:00'),
(153, NULL, 'Pasang lepas 35.33.41\r\nFiksasi', 150000, NULL, '60', '2019-08-03', '2019-08-03 20:08:00', '2019-08-03 20:08:00'),
(154, 'protrusi RA', 'insersi orto RA', 2000000, NULL, '81', '2019-04-06', '2019-08-05 19:08:00', '2019-08-05 19:08:00'),
(155, NULL, 'kontrol pasang lepas, power o', 100000, NULL, '81', '2019-05-06', '2019-08-05 19:08:00', '2019-08-05 19:08:00'),
(156, NULL, ' niti 016x016, power C', 200000, NULL, '81', '2019-08-05', '2019-08-05 19:08:00', '2019-08-05 19:08:00'),
(157, 'GR 12, 21, 22, 23', 'GTS akrilik', 800000, 'eugenol TS 13, 14, 24', '83', '2019-08-06', '2019-08-06 17:08:00', '2019-08-06 17:08:00'),
(158, NULL, 'pasang lepas 26, 35, 34, 44, 45, 46\r\ntambah BT 27\r\nganti kawat niti 012 RA', 350000, 'elastic 13, 23', '8', '2019-08-06', '2019-08-06 19:08:00', '2019-08-06 19:08:00'),
(159, '46 pulpitis akut', 'premedikasi ', 50000, NULL, '85', '2019-08-06', '2019-08-06 19:08:00', '2019-08-06 19:08:00'),
(160, 'crossbite anterior RA', 'insersi RA RB', 4000000, NULL, '86', '2016-02-16', '2019-08-07 17:08:00', '2019-08-07 17:08:00'),
(161, NULL, 'pasang lepas\r\nRB niti 012 power O\r\nRA 016x016 power C', 200000, NULL, '86', '2019-08-07', '2019-08-07 17:08:00', '2019-08-07 17:08:00'),
(162, NULL, 'ganti NITI 014 RB\r\npasang lepas', 150000, NULL, '30', '2019-08-08', '2019-08-08 17:08:00', '2019-08-08 17:08:00'),
(163, NULL, 'pasang lepas 36', 150000, NULL, '61', '2019-08-08', '2019-08-08 18:08:00', '2019-08-08 18:08:00'),
(165, '15 pulpitis kronis', 'dycal  zinc phospat GIC', 200000, '', '42', '2019-08-09', '2019-08-09 09:41:31', '2019-08-09 09:41:31');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`) VALUES
(1, 'admin', 'e00cf25ad42683b3df678c61f42c6bda', 'admin'),
(2, 'irman', '21232f297a57a5a743894a0e4a801fc3', 'Irman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `perawatan`
--
ALTER TABLE `perawatan`
  ADD PRIMARY KEY (`id_perawatan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `perawatan`
--
ALTER TABLE `perawatan`
  MODIFY `id_perawatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
