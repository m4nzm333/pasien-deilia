-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 08, 2019 at 11:34 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.10

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
(38, 'eva apriliana', 'Perempuan', '20', '1999-04-04', 'peg swasta', 'barejulat', '00000000000', 'alergi kambing', '2019-07-24 17:07:04', '2019-08-22 11:55:47'),
(42, 'khaerul gam', 'Laki-laki', '26', '1992-11-11', 'pns', 'btn tampar tampar', NULL, 'tidak ada', '2019-07-24 17:07:15', '2019-07-24 17:07:15'),
(43, 'aven/sovia', 'Perempuan', '16', '2000-09-24', 'siswa', 'bunkate', '087761539302', 'tidak ada', '2019-07-24 17:07:51', '2019-07-24 17:07:51'),
(44, 'titis', 'Perempuan', '20', '1999-07-08', 'mahasiswa', 'puyung', NULL, 'tidak ada', '2019-07-24 18:07:52', '2019-07-24 18:07:52'),
(45, 'munawarah', 'Perempuan', '29', '1990-11-20', 'ibu rumah tangga', 'puyung', NULL, 'tidak ada', '2019-07-24 18:07:49', '2019-07-24 18:07:49'),
(46, 'saadah', 'Perempuan', '48', '1971-12-31', 'pns', 'waker', NULL, 'tidak ada', '2019-07-25 09:07:43', '2019-07-25 09:07:43'),
(47, 'baiq putri', 'Perempuan', '19', '1999-07-28', 'mahasiswa', 'marong', '00000000000', 'tidak ada', '2019-07-25 09:07:42', '2019-08-13 08:47:24'),
(48, 'surianingsih', 'Perempuan', '32', '1985-03-31', 'pns', 'pringgrata', NULL, 'tidak ada', '2019-07-25 09:07:42', '2019-07-25 09:07:42'),
(49, 'gita', 'Perempuan', '15', '1992-03-15', 'siswa', 'bonjeruk', NULL, 'tidak ada', '2019-07-25 09:07:09', '2019-07-25 09:07:48'),
(50, 'nurul sani', 'Perempuan', '16', '1992-03-15', 'siswa', 'bonjeruk', NULL, 'tidak ada', '2019-07-25 09:07:34', '2019-07-25 09:07:34'),
(51, 'dadek', 'Laki-laki', '23', '1992-03-15', 'wiraswasta', 'praya', NULL, 'tidak ada', '2019-07-25 09:07:51', '2019-07-25 09:07:51'),
(52, 'nurhuwaida', 'Perempuan', '30', '1992-03-15', 'guru', 'jelantik', NULL, 'tidak ada', '2019-07-25 09:07:08', '2019-07-25 09:07:08'),
(53, 'nana', 'Perempuan', '24', '1992-03-15', 'perawat', 'kelebuh', NULL, 'tidak ada', '2019-07-25 09:07:43', '2019-07-25 09:07:43'),
(54, 'eki', 'Laki-laki', '16', '2002-10-10', 'siswa', 'jelantik', '087757858230', 'tidak ada', '2019-07-25 18:07:15', '2019-07-25 18:07:15'),
(55, 'hikmah', 'Perempuan', '18', '2001-12-31', 'wiraswasta', 'gontoran', NULL, 'tidak ada', '2019-07-25 18:07:35', '2019-07-25 18:07:35'),
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
(88, 'Tiwi', 'Perempuan', '28', '1993-02-28', '0', 'praya', NULL, 'tidak ada', '2019-08-07 18:08:46', '2019-08-07 18:08:46'),
(90, 'ustazah yayik', 'Perempuan', '32', '1989-09-10', 'guru', 'praya', '0000000000', 'tidak ada', '2019-08-16 13:52:31', '2019-08-16 13:52:31'),
(91, 'salwa', 'Perempuan', '5', '2014-05-01', 'siswa', 'puyung', '0000000000', 'tidak ada', '2019-08-20 10:11:48', '2019-08-20 10:11:48'),
(92, 'fuji khaerani', 'Perempuan', '29', '1991-08-16', 'dosen bagu', 'mantang', '0000000000', 'tidak ada', '2019-08-22 11:47:52', '2019-08-22 11:47:52'),
(93, 'penta', 'Perempuan', '23', '1996-05-18', 'wiraswasta', 'barejulat', '0000000000', 'tidak ada', '2019-08-22 11:51:22', '2019-08-22 11:51:22'),
(94, 'balada', 'Perempuan', '24', '1992-03-15', 'apoteker', 'langko', '0000000000', 'tidak ada', '2019-08-22 11:58:44', '2019-08-22 11:58:44'),
(97, 'rossi', 'Perempuan', '17', '2001-12-02', 'siswa', 'bunkate', '', '', '2019-08-24 11:30:36', '2019-08-24 11:30:36'),
(98, 'hj.hariatun', 'Perempuan', '57', '1976-12-31', 'wiraswasta', 'narmada', '', '', '2019-08-24 11:37:30', '2019-08-24 11:37:30'),
(100, 'ibu mariam', 'Perempuan', '44', '1962-12-31', 'wiraswasta', 'puyung', '', '', '2019-08-24 11:42:53', '2019-08-24 11:42:53'),
(101, 'ibu rusida', 'Perempuan', '54', '1973-12-31', 'wiraswasta', 'puyung', '', '', '2019-08-24 11:45:36', '2019-08-24 11:45:36'),
(102, 'ibu hariati', 'Perempuan', '32', '1985-12-31', 'ibu rumah tangga', 'puyung', '', '', '2019-08-24 11:47:45', '2019-08-24 11:47:45'),
(103, 'rossiana', 'Perempuan', '49', '1968-12-31', 'ibu rumah tangga', 'praya', '', '', '2019-08-24 11:51:34', '2019-08-24 11:51:34'),
(104, 'sahrul ependi', 'Laki-laki', '17', '2004-02-21', 'siswa', 'bunkawang', '', '', '2019-08-24 11:54:07', '2019-08-24 11:54:07'),
(105, 'sahrul ependi', 'Laki-laki', '17', '2004-02-21', 'siswa', 'bunkawang', '', '', '2019-08-24 11:54:08', '2019-08-24 11:54:08'),
(106, 'didik', 'Laki-laki', '29', '1989-12-07', 'guru', 'bunkate', '', '', '2019-08-24 11:56:53', '2019-08-24 11:56:53'),
(108, 'yayak', 'Perempuan', '17', '2002-05-03', 'siswa', 'bonjeruk', '', '', '2019-08-24 12:00:02', '2019-08-24 12:00:02'),
(109, 'moh.alpian', 'Laki-laki', '22', '1997-02-27', 'mahasiswa', 'puyung', '', '', '2019-08-24 12:04:24', '2019-08-24 12:04:24'),
(110, 'calisa', 'Perempuan', '10', '2009-10-05', 'siswa', 'gelondong', '', '', '2019-08-24 12:06:19', '2019-08-24 12:06:19'),
(111, 'iq.wahyu', 'Perempuan', '42', '1977-12-31', 'ibu rumah tangga', 'bonjeruk', '', '', '2019-08-27 10:11:39', '2019-08-27 10:11:39'),
(112, 'iq.wahyu', 'Perempuan', '42', '1977-12-31', 'ibu rumah tangga', 'bonjeruk', '', '', '2019-08-27 10:11:42', '2019-08-27 10:11:42'),
(116, 'sari', 'Perempuan', '36', '1983-07-26', 'pns', 'mataram', '', '', '2019-08-27 10:14:15', '2019-08-27 10:14:15'),
(117, 'sari', 'Perempuan', '36', '1983-07-26', 'pns', 'mataram', '', '', '2019-08-27 10:14:16', '2019-08-27 10:14:16'),
(119, 'sirlaili fitriana', 'Perempuan', '22', '1997-02-09', 'mahasiswa', 'praya', '', '', '2019-08-27 10:19:04', '2019-08-27 10:19:04'),
(120, 'sirlaili fitriana', 'Perempuan', '22', '1997-02-09', 'mahasiswa', 'praya', '', '', '2019-08-27 10:19:06', '2019-08-27 10:19:06'),
(121, 'h.danum', 'Laki-laki', '56', '1963-12-31', 'guru', 'praya', '', '', '2019-08-27 10:21:18', '2019-08-27 10:21:18'),
(122, 'h.danum', 'Laki-laki', '56', '1963-12-31', 'guru', 'praya', '', '', '2019-08-27 10:21:18', '2019-08-27 10:21:18'),
(123, 'h.danum', 'Laki-laki', '56', '1963-12-31', 'guru', 'praya', '', '', '2019-08-27 10:21:20', '2019-08-27 10:21:20'),
(124, 'Lia kusmala', 'Perempuan', '16', '2003-09-12', 'Siswa', 'Pujut', '0000000000', 'Tidak ada', '2019-08-29 09:54:25', '2019-08-29 09:54:25'),
(125, 'Yendri', 'Perempuan', '16', '2003-03-29', 'Siswa', 'Barejulat', '0000000000', 'Tidak ada', '2019-08-29 10:13:18', '2019-08-29 10:13:18'),
(126, 'Sudirman', 'Laki-laki', '36', '1983-01-09', 'Wiraswasta', 'Puyung', '0000000000', 'Tidak ada', '2019-08-29 10:36:54', '2019-08-29 10:36:54'),
(127, 'Lina', 'Perempuan', '28', '1991-04-13', 'Guru', 'Lajut', '0000000000', 'Tidak ada', '2019-08-31 09:36:32', '2019-08-31 09:36:32'),
(129, 'mala', 'Perempuan', '23', '1996-01-04', 'wiraswasta', 'ubung', '', '', '2019-09-02 11:26:45', '2019-09-02 11:26:45'),
(130, 'bq mega', 'Perempuan', '23', '1996-11-05', 'wiraswasta', 'praya', '', '', '2019-09-02 11:28:56', '2019-09-02 11:28:56'),
(131, 'sulis', 'Perempuan', '17', '2003-03-05', 'siswa', 'ketare pujut', '', '', '2019-09-02 11:31:42', '2019-09-02 11:31:42'),
(132, 'bpk saparudin', 'Laki-laki', '44', '1975-07-14', 'wiraswasta', 'marde', '', '', '2019-09-02 11:33:56', '2019-09-02 11:33:56'),
(134, 'Urwa', 'Perempuan', '16', '2003-04-30', 'Siswa', 'Praya', '0000000000', 'Dingin', '2019-09-05 09:15:00', '2019-09-05 09:15:00'),
(135, 'wiwin', 'Perempuan', '24', '1995-04-06', 'ibu rumah tangga', 'pengenjek', '0000000000', 'tidak ada', '2019-09-10 11:22:25', '2019-09-10 11:22:25'),
(136, 'kandi', 'Laki-laki', '35', '1986-12-31', 'wiraswasta', 'pujut', '0000000000', 'tidak ada', '2019-09-10 11:26:16', '2019-09-10 11:26:16'),
(137, 'sri miriyanti', 'Perempuan', '31', '1988-12-30', 'wiraswasta', 'pringgarate', '', '', '2019-09-10 11:33:56', '2019-09-10 11:33:56'),
(139, 'iq.muhtar', 'Perempuan', '75', '1944-12-31', 'ibu rumah tangga', 'jago', '', '', '2019-09-10 11:42:32', '2019-09-10 11:42:32'),
(140, 'karina', 'Perempuan', '23', '1996-09-27', 'mahasiswa', 'puyung', '', '', '2019-09-10 11:44:04', '2019-09-10 11:44:04'),
(141, 'h.junaidi', 'Laki-laki', '65', '1954-12-31', 'wiraswasta', 'puyung', '', '', '2019-09-10 11:47:07', '2019-09-10 11:47:07'),
(142, 'bpk.rafik', 'Laki-laki', '40', '1979-12-31', 'wiraswasta', 'sukarare', '', '', '2019-09-10 11:49:11', '2019-09-10 11:49:11'),
(143, 'bpk.safarudin', 'Laki-laki', '44', '1975-07-14', 'wiraswasta', 'marde', '', '', '2019-09-10 11:53:57', '2019-09-10 11:53:57'),
(144, 'sulis', 'Perempuan', '28', '1991-05-09', 'dosen lotim ', 'puyung', '', '', '2019-09-10 11:57:10', '2019-09-10 11:57:10'),
(145, 'nurul ulya', 'Perempuan', '29', '1990-08-14', 'wiraswasta', 'waker puyung', '', '', '2019-09-10 11:59:44', '2019-09-10 11:59:44'),
(146, 'ibu.maemunah50', 'Perempuan', '50', '1969-12-31', 'ibu rumah tangga', 'gemal', '', '', '2019-09-10 12:02:08', '2019-09-10 12:02:08'),
(147, 'naura qolbi ', 'Perempuan', '4,5', '2014-12-31', 'siswa', 'bonjeruk', '', '', '2019-09-10 12:04:35', '2019-09-10 12:04:35'),
(148, 'zaidan', 'Laki-laki', '6,5', '2012-12-20', 'siswa', 'praya', '', '', '2019-09-10 12:06:13', '2019-09-10 12:06:13'),
(149, 'rumi', 'Perempuan', '31', '1988-01-09', 'ibu rumah tangga', 'ubung', '', '', '2019-09-10 12:07:52', '2019-09-10 12:07:52'),
(151, 'ahmd irwansyah', 'Laki-laki', '33', '1986-01-01', 'wiraswasta', 'bonjeruk', '', '', '2019-09-10 12:15:09', '2019-09-10 12:15:09'),
(152, 'panji', 'Laki-laki', '20', '1999-08-20', 'mahasiswa', 'ketangge', '', '', '2019-09-10 12:16:36', '2019-09-10 12:16:36'),
(153, 'ibu.emi', 'Perempuan', '39', '1980-05-09', 'pns', 'sukarare', '', '', '2019-09-10 12:18:00', '2019-09-10 12:18:00'),
(154, 'moh.izan', 'Laki-laki', '12', '2008-11-13', 'siswa', 'sukarare', '', '', '2019-09-10 12:19:53', '2019-09-10 12:19:53'),
(155, 'ibu.sukarwatun', 'Perempuan', '42', '1976-12-05', '', 'sukarare', '', '', '2019-09-10 12:22:40', '2019-09-10 12:22:40'),
(157, 'susisusanti', 'Perempuan', '31', '1987-10-10', '', 'nyerot', '', '', '2019-09-11 10:48:08', '2019-09-11 10:48:08'),
(158, 'bpk.amir', 'Laki-laki', '51', '1961-12-31', 'wiraswasta', 'puyung', '', '', '2019-09-11 10:50:06', '2019-09-11 10:50:06'),
(159, 'bpk.abdulrahman', 'Laki-laki', '54', '1964-12-31', 'wiraswasta', 'juring', '', '', '2019-09-11 10:54:11', '2019-09-11 10:54:11'),
(162, 'h.sudirman', 'Laki-laki', '65', '1954-12-31', 'wiraswasta', 'pringgarata', '', '', '2019-09-12 11:43:35', '2019-09-12 11:43:35'),
(163, 'marfin f', 'Laki-laki', '20', '1999-08-12', 'mahasiswa ipdn ', 'papua', '', '', '2019-09-12 11:46:02', '2019-09-12 11:46:02'),
(165, 'ibu.munawaroh', 'Perempuan', '39', '1980-12-31', 'ibu rumah tangga', 'puyung', '', '', '2019-09-12 11:50:05', '2019-09-12 11:50:05'),
(166, 'nurul dian', 'Perempuan', '19', '1999-05-14', 'mahasiswa ipdn', 'sulbar', '', '', '2019-09-12 11:51:34', '2019-09-12 11:51:34'),
(167, 'bpk.sisiawan', 'Laki-laki', '52', '1967-12-31', 'pns', 'praya', '', '', '2019-09-12 11:54:29', '2019-09-12 11:54:29'),
(168, 'bq.suhartini', 'Perempuan', '43', '1978-12-31', 'ibu rumah tangga', 'batu tulis', '', '', '2019-09-12 11:55:45', '2019-09-12 11:55:45'),
(169, 'ibu.napsiah', 'Perempuan', '35', '1984-01-18', 'ibu rumah tangga', 'jelantik', '', '', '2019-09-12 11:58:49', '2019-09-12 11:58:49'),
(170, 'bpk.khusni', 'Laki-laki', '43', '1975-12-31', 'wiraswasta', 'praya', '', '', '2019-09-12 12:00:01', '2019-09-12 12:00:01'),
(171, 'Mei', 'Perempuan', '26', '1994-05-11', 'Pns', 'Mataram', '0000000000', 'Tidak ada', '2019-09-17 08:58:12', '2019-09-17 08:58:12'),
(172, 'Hesty', 'Perempuan', '26', '1993-01-05', 'Pns', 'Praya', '0000000000', 'Tidak ada', '2019-09-17 09:27:59', '2019-09-17 09:27:59'),
(173, 'Rohana', 'Perempuan', '38', '1981-12-31', 'Bidan', 'Praya', '0000000000', 'Tidak ada', '2019-09-20 08:50:22', '2019-09-20 08:50:22'),
(174, 'Diah', 'Perempuan', '29', '1990-08-11', 'Guru', 'Manggong', '0000000000', 'Tidak ada', '2019-09-28 10:04:36', '2019-09-28 10:04:36'),
(176, 'dini', 'Perempuan', '22', '1995-12-01', 'ibu rumah tangga', 'sukarare', '0000000000', 'tidak ada', '2019-09-28 11:02:34', '2019-09-28 11:02:34'),
(178, 'jamiah', 'Perempuan', '33', '1986-12-31', 'kapal pesiar', 'janapria', '0000000000', 'tidak ada', '2019-09-28 11:08:46', '2019-09-28 11:08:46'),
(179, 'gadis', 'Perempuan', '25', '1994-11-16', 'polwan', 'bima', '0000000000', 'tidak ada', '2019-09-28 11:13:05', '2019-09-28 11:13:05'),
(180, 'nci/yanti', 'Perempuan', '40', '1977-12-31', 'wiraswasta', 'praya', '0000000000', 'tidak ada', '2019-09-28 11:15:54', '2019-09-28 11:15:54'),
(181, 'dewi sartika', 'Perempuan', '17', '2002-03-31', 'siswa', 'sukarare', '0000000000', 'tidak ada', '2019-09-28 11:19:52', '2019-09-28 11:19:52'),
(182, 'jibril', 'Laki-laki', '16', '2019-06-27', 'siswa', 'bunkate', '0000000000', 'tidak ada', '2019-09-28 11:24:23', '2019-09-28 11:24:23'),
(183, 'iq.rifal', 'Perempuan', '50', '1969-12-31', 'ibu rumah tangga', 'barejulat', '0000000000', 'tidak ada', '2019-09-28 11:40:35', '2019-09-28 11:40:35'),
(184, 'Widi nur istiqomah', 'Perempuan', '22', '1996-10-30', 'Mahasiswi', 'Mataram', '082144619719', 'Tidak ada', '2019-09-30 09:41:18', '2019-09-30 09:41:18'),
(185, 'Didik', 'Laki-laki', '29', '1990-04-12', 'Peg swasta', 'Puyung', '087738900400', 'Alergi telur', '2019-10-03 10:04:50', '2019-10-03 10:04:50'),
(186, 'Sri', 'Perempuan', '32', '1987-04-26', 'Wiraswasta', 'Batutulis', '0000000000', 'Tidak ada', '2019-10-05 11:21:26', '2019-10-05 11:21:26'),
(187, 'Ratna kartika', 'Perempuan', '25', '1993-11-05', 'Guru sdit', 'Penujak', '0000000000', 'Tidak ada', '2019-10-11 10:52:16', '2019-10-11 10:52:16'),
(188, 'Dr dini', 'Perempuan', '26', '1993-05-23', 'Pns', 'Puyung', '087865403794', 'Tidak ada', '2019-10-15 09:08:51', '2019-10-15 09:08:51'),
(189, 'Puspa', 'Perempuan', '40', '1979-12-31', 'Pns', 'Praya', '0000000000', 'Tidak ada', '2019-10-15 09:18:04', '2019-10-15 09:18:04'),
(190, 'Teti yuningsih', 'Perempuan', '24', '1995-06-16', 'Wiraswasta', 'Praya', '0000000000', 'Tidak ada', '2019-10-16 10:46:21', '2019-10-16 10:46:21'),
(191, 'Baiq maliya', 'Perempuan', '15', '2004-06-20', 'Siswa', 'Praya', '0000000000', 'Tidak ada', '2019-10-21 11:40:25', '2019-10-21 11:40:25'),
(192, 'Muhammad zaelani', 'Laki-laki', '19', '2000-08-01', 'Siswa', 'Bunkate', '0000000000', 'Tidak ada', '2019-10-24 09:30:56', '2019-10-24 09:30:56'),
(193, 'Muhammad abd azis', 'Laki-laki', '18', '2001-03-01', 'Siswa', 'Mantang', '0000000000', 'Tidak ada', '2019-10-28 09:13:50', '2019-10-28 09:13:50'),
(194, 'Lisna safitri', 'Perempuan', '22', '1997-08-04', 'Peg swasta', 'Jago', '0000000000', 'Tidak ada', '2019-11-01 09:25:29', '2019-11-01 09:25:29');

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
(133, 'Crossbite 12\r\nKaries profunda 36\r\nPulpitis kronis 24', 'Insersi orto RA\r\n36 hydcal gic\r\n24 eugenol Ts', 2250000, '', '65', '2019-07-27', '2019-07-27 13:07:00', '2019-09-13 10:11:03'),
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
(148, 'protrusi RA RB\r\npost orto dr tukang gigi', 'insersi RA RB', 4000000, '', '75', '2019-07-30', '2019-07-30 18:07:00', '2019-08-28 09:13:13'),
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
(165, '15 pulpitis kronis', 'dycal  zinc phospat GIC', 200000, '', '42', '2019-08-09', '2019-08-09 09:41:31', '2019-08-09 09:41:31'),
(166, '', 'kontrol, pasang lepas BT 26,36,46, ganti BT 26\r\n', 200000, '', '47', '2018-10-13', '2019-08-13 09:57:10', '2019-08-13 09:57:10'),
(167, 'crowded RA', 'insersi orto RA', 1500000, '', '90', '2019-08-16', '2019-08-16 13:54:02', '2019-08-16 13:54:02'),
(168, '', 'power C 25, 45', 150000, '', '73', '2019-08-20', '2019-08-20 09:09:27', '2019-08-20 09:09:27'),
(169, '', 'Kontrol power O\r\nPasang lepas 35\r\nExo GR 14', 250000, '', '62', '2019-08-22', '2019-08-22 09:57:30', '2019-08-22 09:57:30'),
(170, 'pindah kontrol', 'niti 012 RA, pasang lepas 25, power o', 200000, '', '92', '2019-08-22', '2019-08-22 11:49:12', '2019-08-22 11:49:12'),
(171, '36 46 pulpitis kronis \r\n16 karies dentin\r\ngingivitis RA RB', '36 46 eugenol ts\r\n16 gic\r\nscaling ra rb', 600000, 'premed', '93', '2019-08-22', '2019-08-22 11:53:50', '2019-08-22 11:53:50'),
(172, '', 'power C', 200000, '', '94', '2019-08-22', '2019-08-22 11:59:31', '2019-08-22 11:59:31'),
(173, 'protrusi RA', 'insersi orto RA', 2000000, '', '38', '2019-07-12', '2019-08-22 12:00:59', '2019-08-22 12:00:59'),
(174, '', 'pasang lepas', 150000, '', '38', '2019-08-22', '2019-08-22 12:01:50', '2019-08-22 12:01:50'),
(175, 'Protrusi ra rb', 'Pasang lepas 36 35 46 \r\nPower O', 200000, '', '75', '2019-08-28', '2019-08-28 09:12:41', '2019-08-28 09:12:41'),
(176, '', 'Power C RA', 100000, '', '32', '2019-08-28', '2019-08-28 09:22:44', '2019-08-28 09:22:44'),
(177, 'Multiple diastema Ra Rb', 'Insersi orto RA RB', 3500000, '', '124', '2019-08-29', '2019-08-29 09:56:34', '2019-08-29 09:56:34'),
(178, 'Crowded RA', 'Insersi orto RA', 2000000, '', '125', '2018-06-29', '2019-08-29 10:33:49', '2019-08-29 10:33:49'),
(179, '', 'Pasang lepas 26\r\nPower O', 50000, '', '125', '2019-08-29', '2019-08-29 10:34:15', '2019-08-29 10:34:15'),
(180, 'Diastema closure', 'Distalisasi RA RB\r\nGanti 016 RB\r\nPasang lepas 31 46', 300000, '', '17', '2019-08-31', '2019-08-31 09:12:40', '2019-08-31 09:12:40'),
(181, 'Multiple diastema dg intrusi 12 12', 'Insersi orto RA', 2000000, '', '127', '2019-08-31', '2019-08-31 09:37:26', '2019-08-31 09:37:26'),
(182, 'Karies dentin ', 'Composite', 500000, '', '97', '2019-08-24', '2019-08-31 09:40:04', '2019-08-31 09:40:04'),
(183, 'Diastema', 'Diastema closure wt composite\r\nScaling wt occo', 700000, '', '102', '2019-08-24', '2019-08-31 09:42:27', '2019-08-31 09:42:27'),
(184, 'Edentulous 34 35', 'Tambah akrilik', 150000, '', '98', '2019-08-24', '2019-08-31 09:43:29', '2019-08-31 09:43:29'),
(185, '', 'fiksasi RA RB wire 016x016 niti ', 200000, '', '52', '2019-09-02', '2019-09-02 10:31:22', '2019-09-02 10:31:22'),
(186, 'diastema 15, lepas 15', 'pasang lepas 15, power O', 150000, '', '79', '2019-09-02', '2019-09-02 11:05:56', '2019-09-02 11:05:56'),
(187, 'Diastema RA RB \r\nProtrusi RA RB', 'Distalisasi 13 23 33 43\r\nGanti kawat niti 016x016 RA', 250000, '', '37', '2019-09-02', '2019-09-02 11:29:56', '2019-09-02 11:29:56'),
(188, '28 pulpitis akut ', '28 eugenol TS', 100000, '', '132', '2019-09-02', '2019-09-02 11:49:38', '2019-09-02 11:49:38'),
(189, '', 'exo 24', 100000, '', '75', '2019-09-03', '2019-09-10 11:20:39', '2019-09-10 11:20:39'),
(190, '', 'exo 34', 100000, '', '75', '2019-09-10', '2019-09-10 11:21:09', '2019-09-10 11:21:09'),
(191, 'gangren pulpa 11\r\nfraktur cervikal ', 'chkm', 1500000, 'balik selasa', '135', '2019-09-06', '2019-09-10 11:24:15', '2019-09-10 11:24:15'),
(192, '', 'cresophen', 0, 'balik sabtu', '135', '2019-09-10', '2019-09-10 11:24:51', '2019-09-10 11:24:51'),
(193, '21 diskolorisasi \r\ngangren\r\nabses', 'drainase', 1500000, '', '136', '2019-08-27', '2019-09-10 11:28:05', '2019-09-10 11:28:05'),
(194, '', 'chkm', 0, '', '136', '2019-09-03', '2019-09-10 11:28:34', '2019-09-10 11:28:34'),
(195, '', 'Pasang lepas 26 34 45', 150000, '', '30', '2019-09-11', '2019-09-11 10:39:44', '2019-09-11 10:39:44'),
(196, '', 'Cresophen', 0, '', '136', '2019-09-11', '2019-09-11 10:54:46', '2019-09-11 10:54:46'),
(197, '', 'Pasang lepas 41 45', 150000, '', '31', '2019-09-11', '2019-09-11 11:42:49', '2019-09-11 11:42:49'),
(198, 'gangren pulpa 46', 'eugenol TS', 150000, '', '163', '2019-09-12', '2019-09-12 12:39:11', '2019-09-12 12:39:11'),
(199, '37 karies dentin\r\n47 post endo', '37 hydcal GIC 250\r\n47 hydcal zinc GIC 400', 650000, '', '166', '2019-09-12', '2019-09-12 12:41:05', '2019-09-12 12:41:05'),
(200, '12 endostem', 'Coil spring 13 11', 150000, '', '65', '2019-09-13', '2019-09-13 10:06:58', '2019-09-13 10:06:58'),
(201, '', 'chkm TS', 0, '', '135', '2019-09-14', '2019-09-14 09:45:16', '2019-09-14 09:45:16'),
(202, '', 'pasang lepas PO', 100000, '', '38', '2019-09-09', '2019-09-14 09:47:59', '2019-09-14 09:47:59'),
(203, '', 'Fiksasi wire\r\nPower O\r\nPasang lepas 15', 200000, '', '81', '2019-09-16', '2019-09-16 11:21:57', '2019-09-16 11:21:57'),
(204, 'Crowded 11 12', 'Insersi orto ra', 2000000, 'Scaling free', '171', '2019-09-17', '2019-09-17 08:58:55', '2019-09-17 08:58:55'),
(205, 'Crowded 11', 'Ganti BT 26\r\nPower o', 200000, '', '172', '2019-09-17', '2019-09-17 09:28:49', '2019-09-17 09:30:57'),
(206, '', 'Insersi orto Ra', 2000000, '', '172', '2017-04-22', '2019-09-17 09:30:15', '2019-09-17 09:30:15'),
(207, '', 'Kontrol power o', 100000, '', '172', '2017-05-24', '2019-09-17 09:32:12', '2019-09-17 09:32:12'),
(208, 'Protrusi', 'RA niti 016x016 distalisasi \r\nRB niti 012 po\r\nPeninggian gigitan 48', 200000, '', '173', '2019-09-20', '2019-09-20 08:54:12', '2019-09-20 08:54:12'),
(209, '', 'Chkm', 0, '', '136', '2019-09-16', '2019-09-20 10:04:02', '2019-09-20 10:04:02'),
(210, '', 'Pengisian', 0, '', '136', '2019-09-20', '2019-09-20 10:04:24', '2019-09-20 10:04:24'),
(211, '', 'Pasang lepas ', 200000, '', '60', '2019-09-20', '2019-09-20 11:33:06', '2019-09-20 11:33:06'),
(212, '', 'RA niti 016x016 distalisasi 25\r\nRB po distalisasi 45', 200000, '', '73', '2019-09-21', '2019-09-21 11:19:56', '2019-09-21 11:19:56'),
(213, '', 'pasang lepas 26 25 36 35', 100000, '', '43', '2019-09-24', '2019-09-24 09:06:28', '2019-09-24 09:06:28'),
(214, '', 'pasang lepas 46 45 34 35', 100000, '', '25', '2019-09-24', '2019-09-24 09:08:03', '2019-09-24 09:08:03'),
(215, '', 'Pasang lepas 11, po', 150000, '', '16', '2019-09-25', '2019-09-25 08:36:30', '2019-09-25 08:36:30'),
(216, '', 'Tambah kawat niti 016x016 RA, power C distalisasi\r\nPasang lepas 15 25', 200000, '', '54', '2019-09-25', '2019-09-25 09:49:04', '2019-09-25 09:49:04'),
(217, '', 'RA distalisasi\r\nRB power po', 150000, '', '69', '2019-09-26', '2019-09-26 08:27:38', '2019-09-26 08:27:38'),
(218, '', 'RA niti 014 , tambah BT 27 ', 300000, '', '62', '2019-09-26', '2019-09-26 09:05:51', '2019-09-26 09:05:51'),
(219, '', 'Pasang lepas 34 35 44 45\r\nPower o', 150000, '', '174', '2019-09-28', '2019-09-28 10:05:35', '2019-09-28 10:05:35'),
(220, '21 abses periapikal, GP', 'endo 21', 1500000, 'DP 1.000.000', '176', '2019-09-24', '2019-09-28 11:03:42', '2019-09-28 11:03:42'),
(221, '', 'cresophen', 0, '', '176', '2019-09-28', '2019-09-28 11:04:17', '2019-09-28 11:04:17'),
(222, '', '48 pre medikasi mefinal sanmol', 50000, '', '67', '2019-09-23', '2019-09-28 11:07:19', '2019-09-28 11:07:19'),
(223, 'ektrusi 16 26', 'insersi orto', 2200000, '', '178', '2019-09-06', '2019-09-28 11:11:37', '2019-09-28 11:11:37'),
(224, '', '016 niti \r\npower o', 150000, '', '178', '2019-09-24', '2019-09-28 11:12:09', '2019-09-28 11:12:09'),
(225, '', 'power o', 50000, '', '179', '2019-09-25', '2019-09-28 11:13:46', '2019-09-28 11:13:46'),
(226, '', 'ganti BT 26', 200000, '', '180', '2019-09-26', '2019-09-28 11:16:39', '2019-09-28 11:16:39'),
(227, 'crossbite anterior RA', 'insersi orto RA', 2000000, '', '181', '2019-02-20', '2019-09-28 11:20:44', '2019-09-28 11:20:44'),
(228, '', 'pasang lepas po', 100000, '', '181', '2019-03-27', '2019-09-28 11:21:42', '2019-09-28 11:21:42'),
(229, '', 'po', 100000, '', '181', '2019-04-20', '2019-09-28 11:22:03', '2019-09-28 11:22:03'),
(230, '', 'po', 100000, '', '181', '2019-06-13', '2019-09-28 11:22:51', '2019-09-28 11:22:51'),
(231, '', 'lepas braket RA', 200000, '', '181', '2019-09-28', '2019-09-28 11:23:19', '2019-09-28 11:23:19'),
(232, 'crowded RA RB', 'insersi RA RB', 4000000, '', '182', '2019-06-27', '2019-09-28 11:34:08', '2019-09-28 11:34:08'),
(233, '', 'exo lido ', 100000, '', '182', '2019-08-23', '2019-09-28 11:37:25', '2019-09-28 11:37:25'),
(234, 'Open bite ant\r\nDiastema anterior', 'Insersi orto Ra Rb', 3600000, '46 karies dentin', '184', '2019-09-30', '2019-09-30 09:49:51', '2019-09-30 09:49:51'),
(235, '', 'RB SS 016, tambah BT 46 \r\nPasang lepas 41 33', 300000, '', '144', '2019-09-30', '2019-09-30 12:53:12', '2019-09-30 12:53:12'),
(236, '', 'Pasang lepas 15\r\nPower o', 150000, '', '79', '2019-10-01', '2019-10-01 09:33:24', '2019-10-01 09:33:24'),
(237, '', 'Chkm', 0, '', '176', '2019-10-02', '2019-10-02 08:15:10', '2019-10-02 08:15:10'),
(238, '', 'Lepas braket RA', 100000, '', '178', '2019-10-02', '2019-10-02 08:55:38', '2019-10-02 08:55:38'),
(239, '', 'Pasang lepas 25 36 35', 200000, '', '124', '2019-10-02', '2019-10-02 11:15:47', '2019-10-02 11:15:47'),
(240, 'Gingivitis ra rb ', 'Pasang lepas 26\r\nPower o', 200000, '', '17', '2019-10-03', '2019-10-03 09:05:43', '2019-10-03 09:05:43'),
(241, '', 'Pasang lepas 36 34', 0, '', '173', '2019-10-04', '2019-10-04 08:46:42', '2019-10-04 08:46:42'),
(242, '', 'Pasang lepas 45 ', 200000, '', '37', '2019-10-04', '2019-10-04 09:13:30', '2019-10-04 09:13:30'),
(243, 'Tambah bt 36\r\nKaries profunda 37', 'Pasang BT 36\r\nEugenol TS', 350000, '', '61', '2019-10-11', '2019-10-04 10:35:54', '2019-10-04 10:35:54'),
(244, 'Multiple diastema RA RB', 'Pasang lepas 16 15 25 27 34 35 45\r\nGanti kawat niti 012 RA RB ', 450000, '', '186', '2019-10-05', '2019-10-05 11:22:43', '2019-10-05 11:22:43'),
(245, '', 'niti 014 pasang lepas 34 35', 100000, '', '78', '2019-10-09', '2019-10-09 09:35:38', '2019-10-09 09:35:38'),
(246, '', 'Pasang lepas 26 25 45', 150000, '', '30', '2019-10-10', '2019-10-10 11:18:40', '2019-10-10 11:18:40'),
(247, '', 'Pasang lepas 45', 150000, '', '31', '2019-10-10', '2019-10-10 11:37:48', '2019-10-10 11:37:48'),
(248, '', 'Niti 016x016 RA RB\r\nBT 46', 300000, '', '23', '2019-10-10', '2019-10-10 12:54:43', '2019-10-10 12:54:43'),
(249, '', 'Pasang lepas\r\nNiti 012 RB', 400000, '', '22', '2019-10-10', '2019-10-10 12:56:22', '2019-10-10 12:56:22'),
(250, 'Multiple diastema', 'Insersi orto RA', 2000000, '', '187', '2019-10-11', '2019-10-11 10:58:04', '2019-10-11 10:58:04'),
(251, '', 'Pasang lepas 26', 150000, '', '73', '2019-10-11', '2019-10-11 12:09:43', '2019-10-11 12:09:43'),
(252, 'Edwntulous 14 24 34 44', 'Niti 016x022 RA RB\r\nDistalisasi 13 23 33 43\r\nPower O', 300000, '', '75', '2019-10-12', '2019-10-12 09:04:40', '2019-10-12 09:04:40'),
(253, '', '016x 016 distalisasi', 150000, '', '27', '2019-10-12', '2019-10-12 09:11:45', '2019-10-12 09:11:45'),
(254, '', 'Niti 016x022 RA', 150000, '', '127', '2019-10-12', '2019-10-12 10:15:43', '2019-10-12 10:15:43'),
(255, '', 'Power o', 100000, '', '171', '2019-10-14', '2019-10-14 08:36:53', '2019-10-14 08:36:53'),
(256, '', 'Distalisasi RA RB', 150000, '', '58', '2019-10-14', '2019-10-14 10:50:07', '2019-10-14 10:50:07'),
(257, '', 'Pasang lepas 35\r\nDistalisasi RA\r\nPower RB', 150000, '', '188', '2019-10-15', '2019-10-15 09:09:43', '2019-10-15 09:09:43'),
(258, 'Protrusi RA RB', 'Insersi orto ', 3000000, '', '188', '2019-02-04', '2019-10-15 09:11:14', '2019-10-15 09:11:14'),
(259, '', 'Niti 016x016 RA RB', 150000, '', '188', '2018-03-04', '2019-10-15 09:12:00', '2019-10-15 09:12:00'),
(260, '', 'Distalisasi', 150000, '', '188', '2018-05-04', '2019-10-15 09:12:24', '2019-10-15 09:12:24'),
(261, '', 'Distalisasi', 150000, '', '188', '2019-06-21', '2019-10-15 09:12:49', '2019-10-15 09:12:49'),
(262, '', 'Distalisasi ra rb', 150000, '', '188', '2019-08-23', '2019-10-15 09:13:16', '2019-10-15 09:13:16'),
(263, 'Multiple diastema', 'Insersi orto RA RB ', 4000000, '', '189', '2019-10-10', '2019-10-15 09:18:39', '2019-10-15 09:18:39'),
(264, '', 'Pasang lepas 15', 0, '', '187', '2019-10-15', '2019-10-15 09:40:52', '2019-10-15 09:40:52'),
(265, 'Protrusi ', 'Insersi orto ra rb', 4150000, 'DP 2.150.000\r\nSisa 2.000.000', '190', '2019-10-16', '2019-10-16 10:48:20', '2019-10-16 10:48:20'),
(266, '', 'Pasang lepas 46 47 36 37', 200000, '', '53', '2019-10-17', '2019-10-17 09:00:52', '2019-10-17 09:00:52'),
(267, '', 'Pasang lepas 21\r\nPower o', 150000, '', '92', '2019-10-17', '2019-10-17 09:22:06', '2019-10-17 09:22:06'),
(268, 'Crowded 21', 'Insersi Orto RA', 2000000, '', '191', '2019-10-21', '2019-10-21 11:46:37', '2019-10-21 11:46:37'),
(269, '', 'Pasang lepas 21\r\nNiti 012 RB', 300000, '', '94', '2019-10-21', '2019-10-21 13:15:29', '2019-10-21 13:15:29'),
(270, 'Gp 11\r\nKaries dentin 21', 'Chkm 11\r\nComposite 21', 2000000, '', '192', '2019-10-24', '2019-10-24 09:32:52', '2019-10-24 09:32:52'),
(271, '', 'Tambah bt 46', 100000, 'Tambah dp 500.000\r\nSisa 1.500.000', '190', '2019-10-25', '2019-10-25 09:49:41', '2019-10-25 09:49:41'),
(272, '', 'Niti 012 RB power o \r\nPasang lepas 45 44', 100000, '', '18', '2019-10-26', '2019-10-26 09:27:20', '2019-10-26 09:27:20'),
(273, '', 'Power C RA RB', 150000, '', '69', '2019-10-26', '2019-10-26 09:39:15', '2019-10-26 09:39:15'),
(274, '', 'Fiksasi RB\r\nPower C', 300000, '', '48', '2019-10-26', '2019-10-26 12:31:09', '2019-10-26 12:31:09'),
(275, '', 'Pasang lepas 16 15 26 24 25\r\nNiti 012', 200000, '', '54', '2019-10-28', '2019-10-28 09:06:57', '2019-10-28 09:06:57'),
(276, 'Crowde RA RB', 'Insersi orto ', 4000000, '', '193', '2019-10-28', '2019-10-28 09:15:02', '2019-10-30 04:16:49'),
(277, '', 'Pasang lepas 36', 0, '500.000\r\nSisa 1.000.000', '190', '2019-10-30', '2019-10-30 09:33:26', '2019-10-30 09:33:26'),
(278, '', 'Pasang lepas 45', 150000, '', '25', '2019-10-30', '2019-10-30 09:59:33', '2019-10-30 09:59:33'),
(279, '', 'Pasang lepas 36 ganti bt 35 45 46', 350000, '', '124', '2019-10-30', '2019-10-30 11:34:30', '2019-10-30 11:34:30'),
(280, '', 'RA 016x016 niti \r\nPower o', 200000, '', '79', '2019-10-31', '2019-10-31 10:44:11', '2019-10-31 10:44:11'),
(281, '53 55 63 65 persistensi', 'Insersi orto RA\r\nExo 53 63\r\nScaling RA RB', 2200000, '', '194', '2019-11-01', '2019-11-01 09:27:29', '2019-11-01 09:27:29'),
(282, '', 'Power C ', 200000, '', '34', '2019-11-01', '2019-11-01 09:44:06', '2019-11-01 09:44:06'),
(283, '', 'Pasang lepas 23 35', 200000, '', '130', '2019-11-02', '2019-11-02 09:34:39', '2019-11-02 09:34:39'),
(284, '', 'Power c RB \r\nP o ra distalisasi 13 23', 250000, '', '37', '2019-11-02', '2019-11-02 10:19:06', '2019-11-02 10:19:06'),
(285, '', 'Pasang lepas \r\nPeninggian gigitan ', 200000, '', '173', '2019-11-04', '2019-11-04 09:09:35', '2019-11-04 09:09:35'),
(286, '', 'Ganti BT 36 \r\nPasang lepas ', 300000, '', '184', '2019-11-04', '2019-11-04 09:32:34', '2019-11-04 09:32:34'),
(287, '', 'Pasang lepas\r\nNiti 012 ', 200000, 'Sisa 100.000', '38', '2019-11-06', '2019-11-06 13:23:14', '2019-11-06 13:23:36'),
(288, '', 'RA niti 016x016 \r\nDistalisasi Ra RB', 250000, '', '52', '2019-11-08', '2019-11-08 08:33:25', '2019-11-08 08:33:25');

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
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `perawatan`
--
ALTER TABLE `perawatan`
  MODIFY `id_perawatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
