-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 04:45 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spkayam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator'),
('admin2', 'f3770595e0cb4d9a988bd5da98d2187d', 'admin2'),
('novia', '21232f297a57a5a743894a0e4a801fc3', 'Novia Arifah'),
('novia2', '827ccb0eea8a706c4c34a16891f84e7b', 'novia');

-- --------------------------------------------------------

--
-- Table structure for table `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `kode_pengetahuan` int(11) NOT NULL,
  `kode_penyakit` int(11) NOT NULL,
  `kode_gejala` int(11) NOT NULL,
  `mb` double(11,1) NOT NULL,
  `md` double(11,1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`kode_pengetahuan`, `kode_penyakit`, `kode_gejala`, `mb`, `md`) VALUES
(26, 3, 12, 0.6, 0.0),
(25, 3, 11, 0.6, 0.0),
(24, 3, 9, 0.6, 0.0),
(23, 3, 7, 0.6, 0.0),
(22, 3, 10, 0.6, 0.0),
(21, 3, 4, 0.8, 0.0),
(20, 3, 3, 0.8, 0.0),
(19, 3, 2, 0.8, 0.0),
(18, 3, 1, 0.8, 0.0),
(17, 2, 13, 0.6, 0.0),
(16, 2, 12, 0.6, 0.0),
(30, 3, 15, 0.6, 0.0),
(29, 3, 14, 0.8, 0.0),
(28, 3, 8, 0.4, 0.0),
(27, 3, 13, 0.6, 0.0),
(15, 2, 17, 0.4, 0.0),
(14, 2, 4, 0.6, 0.0),
(13, 2, 9, 0.8, 0.0),
(12, 2, 8, 0.8, 0.0),
(11, 2, 2, 0.8, 0.0),
(10, 2, 1, 0.8, 0.0),
(9, 1, 16, 0.4, 0.0),
(8, 1, 13, 0.6, 0.0),
(7, 1, 8, 0.6, 0.0),
(6, 1, 4, 0.8, 0.0),
(5, 1, 7, 0.8, 0.0),
(4, 1, 6, 0.8, 0.0),
(3, 1, 5, 0.8, 0.0),
(2, 1, 2, 0.8, 0.0),
(1, 1, 1, 0.8, 0.0);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` int(11) NOT NULL,
  `nama_gejala` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
(16, 'Batuk Tidak Berdahak'),
(15, 'Hilang Bau'),
(14, 'Hilang Rasa'),
(13, 'Diare'),
(12, 'Mual'),
(11, 'Sakit Tenggorokan'),
(10, 'Ingus atau Hidung Tersumbat'),
(9, 'Nyeri Otot'),
(8, 'Menggigil'),
(7, 'Sakit Kepala'),
(1, 'Demam'),
(2, 'Batuk'),
(3, 'Kelelahan'),
(4, 'Sesak Napas'),
(5, 'Rasa Tidak Enak'),
(6, 'Sakit dan Nyeri Tubuh'),
(17, 'Batuk Berdarah');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL DEFAULT '0',
  `penyakit` text NOT NULL,
  `gejala` text NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `hasil_nilai` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `tanggal`, `penyakit`, `gejala`, `hasil_id`, `hasil_nilai`) VALUES
(311, '2021-06-21 12:21:13', 'a:1:{i:3;s:6:\"0.9200\";}', 'a:2:{i:14;s:1:\"1\";i:15;s:1:\"1\";}', 3, '0.9200'),
(310, '2021-06-18 17:51:08', 'a:3:{i:2;s:6:\"0.9488\";i:1;s:6:\"0.9326\";i:3;s:6:\"0.9326\";}', 'a:4:{i:1;s:1:\"2\";i:2;s:1:\"2\";i:13;s:1:\"2\";i:17;s:1:\"3\";}', 2, '0.9488'),
(309, '2021-06-17 22:21:32', 'a:3:{i:3;s:6:\"0.9804\";i:1;s:6:\"0.9342\";i:2;s:6:\"0.9149\";}', 'a:8:{i:1;s:1:\"2\";i:2;s:1:\"3\";i:4;s:1:\"4\";i:7;s:1:\"4\";i:8;s:1:\"4\";i:12;s:1:\"5\";i:14;s:1:\"2\";i:15;s:1:\"4\";}', 3, '0.9804'),
(308, '2021-06-17 21:37:08', 'a:3:{i:3;s:6:\"0.9804\";i:1;s:6:\"0.9342\";i:2;s:6:\"0.9149\";}', 'a:8:{i:1;s:1:\"2\";i:2;s:1:\"3\";i:4;s:1:\"4\";i:7;s:1:\"4\";i:8;s:1:\"4\";i:12;s:1:\"5\";i:14;s:1:\"2\";i:15;s:1:\"4\";}', 3, '0.9804'),
(307, '2021-06-17 17:38:48', 'a:3:{i:2;s:6:\"0.9149\";i:3;s:6:\"0.9059\";i:1;s:6:\"0.9033\";}', 'a:5:{i:1;s:1:\"2\";i:2;s:1:\"3\";i:4;s:1:\"4\";i:8;s:1:\"4\";i:12;s:1:\"5\";}', 2, '0.9149'),
(306, '2021-06-17 17:36:49', 'a:3:{i:1;s:6:\"0.9342\";i:3;s:6:\"0.9187\";i:2;s:6:\"0.9033\";}', 'a:5:{i:1;s:1:\"2\";i:2;s:1:\"3\";i:4;s:1:\"4\";i:7;s:1:\"4\";i:8;s:1:\"4\";}', 1, '0.9342'),
(304, '2021-06-17 17:12:10', 'a:3:{i:3;s:6:\"0.9187\";i:2;s:6:\"0.9033\";i:1;s:6:\"0.8173\";}', 'a:5:{i:1;s:1:\"2\";i:2;s:1:\"3\";i:4;s:1:\"4\";i:7;s:1:\"4\";i:8;s:1:\"4\";}', 3, '0.9187'),
(305, '2021-06-17 17:17:19', 'a:3:{i:1;s:6:\"0.9342\";i:3;s:6:\"0.9187\";i:2;s:6:\"0.9033\";}', 'a:5:{i:1;s:1:\"2\";i:2;s:1:\"3\";i:4;s:1:\"4\";i:7;s:1:\"4\";i:8;s:1:\"4\";}', 1, '0.9342'),
(303, '2021-06-17 17:11:17', 'a:3:{i:2;s:6:\"0.9149\";i:3;s:6:\"0.9059\";i:1;s:6:\"0.7313\";}', 'a:5:{i:1;s:1:\"2\";i:2;s:1:\"3\";i:4;s:1:\"4\";i:8;s:1:\"4\";i:12;s:1:\"5\";}', 2, '0.9149'),
(298, '2021-06-17 02:39:24', 'a:3:{i:3;s:6:\"0.9895\";i:1;s:6:\"0.8128\";i:2;s:6:\"0.7696\";}', 'a:6:{i:1;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"3\";i:7;s:1:\"2\";i:14;s:1:\"3\";i:15;s:1:\"1\";}', 3, '0.9895'),
(299, '2021-06-17 02:41:10', 'a:1:{i:3;s:6:\"0.9200\";}', 'a:2:{i:14;s:1:\"1\";i:15;s:1:\"1\";}', 3, '0.9200'),
(300, '2021-06-17 02:51:08', 'a:0:{}', 'a:0:{}', 0, ''),
(301, '2021-06-17 15:38:42', 'a:3:{i:2;s:6:\"0.9963\";i:3;s:6:\"0.9902\";i:1;s:6:\"0.9377\";}', 'a:8:{i:1;s:1:\"2\";i:2;s:1:\"2\";i:4;s:1:\"3\";i:8;s:1:\"2\";i:9;s:1:\"2\";i:12;s:1:\"3\";i:13;s:1:\"3\";i:17;s:1:\"4\";}', 2, '0.9963'),
(302, '2021-06-17 17:09:08', 'a:3:{i:3;s:6:\"0.9804\";i:2;s:6:\"0.9149\";i:1;s:6:\"0.8173\";}', 'a:8:{i:1;s:1:\"2\";i:2;s:1:\"3\";i:4;s:1:\"4\";i:7;s:1:\"4\";i:8;s:1:\"4\";i:12;s:1:\"5\";i:14;s:1:\"2\";i:15;s:1:\"4\";}', 3, '0.9804'),
(296, '2021-06-17 01:42:39', 'a:0:{}', 'a:2:{i:7;s:1:\"2\";i:8;s:1:\"2\";}', 0, ''),
(297, '2021-06-17 02:19:32', 'a:3:{i:3;s:6:\"0.9984\";i:1;s:6:\"0.9745\";i:2;s:6:\"0.6464\";}', 'a:9:{i:2;s:1:\"4\";i:3;s:1:\"3\";i:6;s:1:\"2\";i:7;s:1:\"1\";i:10;s:1:\"1\";i:11;s:1:\"2\";i:13;s:1:\"2\";i:14;s:1:\"1\";i:15;s:1:\"2\";}', 3, '0.9984'),
(294, '2021-06-17 01:41:12', 'a:0:{}', 'a:7:{i:1;s:1:\"2\";i:2;s:1:\"1\";i:3;s:1:\"4\";i:4;s:1:\"1\";i:6;s:1:\"3\";i:14;s:1:\"1\";i:15;s:1:\"1\";}', 0, ''),
(295, '2021-06-17 01:41:28', 'a:0:{}', 'a:7:{i:1;s:1:\"2\";i:2;s:1:\"1\";i:3;s:1:\"4\";i:4;s:1:\"1\";i:6;s:1:\"3\";i:14;s:1:\"1\";i:15;s:1:\"1\";}', 0, ''),
(293, '2021-06-17 01:40:30', 'a:0:{}', 'a:9:{i:1;s:1:\"2\";i:2;s:1:\"4\";i:5;s:1:\"2\";i:6;s:1:\"3\";i:7;s:1:\"1\";i:9;s:1:\"2\";i:10;s:1:\"2\";i:14;s:1:\"2\";i:15;s:1:\"2\";}', 0, ''),
(291, '2021-06-17 01:39:13', 'a:0:{}', 'a:0:{}', 0, ''),
(292, '2021-06-17 01:39:32', 'a:0:{}', 'a:4:{i:1;s:1:\"2\";i:2;s:1:\"2\";i:3;s:1:\"2\";i:7;s:1:\"3\";}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL,
  `kondisi` varchar(64) NOT NULL,
  `ket` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kondisi`
--

INSERT INTO `kondisi` (`id`, `kondisi`, `ket`) VALUES
(1, 'Pasti', ''),
(2, 'Hampir Pasti', ''),
(3, 'Kemungkinan Besar', ''),
(4, 'Mungkin', ''),
(5, 'Ragu-ragu', '');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` int(11) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `det_penyakit` varchar(500) NOT NULL,
  `srn_penyakit` varchar(500) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `det_penyakit`, `srn_penyakit`, `gambar`) VALUES
(1, 'SARS', 'SARS (Severe Acute Respiratory Syndrome) adalah salah satu jenis penyakit pneumonia.  Penyakit SARS disebabkan oleh virus corona jenis SARS-CoV.', 'lakukan pemeriksaan lanjutan seperti : \r\nTes darah \r\nPemeriksaan sampel kotoran\r\nReverse polymerase chain reaction (RT-PCR)\r\nKultur dahak \r\nRontgen dada atau CT Scan\r\n\r\nTes darah, pemeriksaan sampel feses dan dahak, serta PCR dibutuhkan untuk mengetahui apakah darah dan kotoran Anda benar-benar terinfeksi virus penyebab SARS. Tes ini juga dapat menunjukkan apakah terdapat antigen dari infeksi virus tersebut.\r\n\r\nRadiografi dan Tomografi (CT scan) juga biasanya dilakukan apabila dokter menduga ter', 'sars.jfif'),
(2, 'MERS', 'MERS atau Middle East Respiratory Syndrome coronavirus (umumnya disebut sindrom pernapasan Timur Tengah, MERS, atau MERS-CoV) adalah salah satu penyakit infeksi virus yang menyerang sistem pernapasan. Penyakit ini disebabkan oleh salah satu jenis coronavirus yaitu MERS-CoV. Penyakit MERS pertama kali teridentifikasi di Arab Saudi pada tahun 2012.', 'Lakukan pemeriksaan Tes reverse transcription polymerase chain reaction (RT-PCR) , Tes berfungsi untuk mendeteksi antibodi sekitar 10 hari setelah sakit dimulai. Jika hasil tes negatif 28 hari setelah timbulnya gejala, seseorang itu dianggap tidak mengidap penyakit MERS.\r\n\r\nTes darah mungkin dilakukan jika Anda sudah pernah terinfeksi dengan memeriksa antibodi virus tersebut.', 'MERS.jfif'),
(3, 'COVID-19', 'Covid-19 adalah penyakit yang ditimbulkan oleh infeksi virus corona baru atau SARS-CoV-2 yang berasal dari keluarga corona.', 'Lakukan pemeriksaan RT-PCR untuk mendeteksi virus corona (COVID-19 ) secara lebih akurat', 'covid19.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `kode_post` int(11) NOT NULL,
  `nama_post` varchar(50) NOT NULL,
  `det_post` varchar(15000) NOT NULL,
  `srn_post` varchar(15000) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`kode_post`, `nama_post`, `det_post`, `srn_post`, `gambar`) VALUES
(1, 'SARS ', '<p>SARS (Severe Acute Respiratory Syndrome) adalah infeksi saluran pernapasan berat disertai dengan gejala saluran pencernaan yang disebabkan oleh coronavirus.</p>\r\n\r\n<p><strong>Gejala: </strong></p>\r\n\r\n<p>Gejala SARS diketahui berupa malaise, mialgia, demam, dan diikuti gejala pernapasan berupa batuk disertai kesulitan bernapas. Gejalanya juga dapat disertai dengan diare. Gejala-gejala ini memberat beberapa hari kemudian disertai dengan viraemia, 10 hari setelah onset.</p>\r\n\r\n\r\n\r\n<p><strong>Penyebab dan Faktor Risiko SARS : </strong></p>\r\n\r\n<p>Penyebabnya adalah coronavirus. SARS ditularkan melalui kontak dekat, misalnya pada waktu merawat pengidap, tinggal satu rumah dengan atau kontak langsung dengan sekret/cairan tubuh dari pengidap suspect atau probable. Diduga cara penyebaran utamanya adalah melalui percikan (droplets) dan kemungkinan juga melalui pakaian dan alat-alat yang terkontaminasi.</p>\r\n\r\n<p><strong>Diagnosis SARS :</strong></p>\r\n\r\n<p>Selain dari gejala, diagnosis ditegakkan melalui beberapa metode pemeriksaan laboratorium telah digunakan seperti PCR, ELISA, IFA. Untuk menyatakan suatu tes PCR positif untuk SARS diperlukan paling sedikit 2 spesimen yang berbeda (yaitu spesimen yang diambil dari nasofaring dan tinja)</p>\r\n\r\n', '<p><strong>Pencegahan SARS :</strong></p>\r\n\r\n<p>Vaksin untuk penyakit SARS belum ditemukan, oleh karena itu hindari berkunjung ke negara yang sedang terjangkit SARS, gunakan masker saat bepergian atau menjenguk pasien di RS, hal ini dapat membantu mengurangi penyebaran melalui udara, melalui percikan dan kontak langsung.</p>\r\n\r\n<p><strong>Penanganan SARS :</strong></p>\r\n\r\n<p>Oseltamivir secara oral bersama dengan antibiotika berspektrum luas dan ribavirin intravena dalam dosis yang direkomendasikan, juga memberikan hasil yang kurang meyakinkan. Pada saat ini, penanganan pengidap SARS yang dianggap paling penting adalah terapi suportif, yaitu mengupayakan agar pengidap tidak mengalami dehidrasi dan infeksi ikutan.</p>', 'sars.jpg'),
(2, 'MERS', '<p>MERS (Middle East Respiratory Syndrome) adalah penyakit yang menyerang pernapasan yang terjadi akibat virus Corona yang menyerang saluran pernapasan mulai dari yang ringan sampai berat.</p>\r\n\r\n<p><strong>Faktor Risiko MERS</strong></p>\r\n\r\n<p>Para ahli menduga bahwa terdapat beberapa hal yang meningkatkan risiko seseorang terjangkit MERS. Beberapa faktor risiko tersebut, antara lain: </p>\r\n<ul>\r\n<li>Usia. Orang berusia lanjut nyatanya lebih rentan alami penyakit ini.</li>\r\n\r\n<li>Sistem kekebalan tubuh yang menurun atau lemah, misalnya pada pengidap HIV.</li>\r\n\r\n<li>Penyakit kronis, contohnya orang yang tengah mengidap kanker, diabetes, atau penyakit paru-paru.</li>\r\n\r\n<li>Sering konsumsi daging unta kurang matang atau susu unta mentah.</li>\r\n\r\n<li>Pernah berkunjung ke Arab Saudi atau negara Timur Tengah lain. Jika kamu mengalami demam serta gejala MERS dalam dua minggu setelah bepergian ke negara tersebut, segera periksakan diri ke dokter.</li>\r\n\r\n<li>Sering berada di dekat penderita MERS, misalnya bagi petugas medis yang merawat pengidap di rumah sakit atau keluarga yang tinggal satu atap dengan pengidap.</li>\r\n\r\n<li>Sering berinteraksi dengan unta, karena MERS dapat ditemukan pada beberapa unta.</li>\r\n\r\n</ul>\r\n\r\n\r\n<p><strong>Penyebab MERS</strong></p>\r\n\r\n<p>Penyebab MERS adalah betacoronavirus yang baru ditemukan. Coronavirus adalah virus terbesar dari semua jenis virus RNA. Kemungkinan mekanisme transmisi spesifik penyakit ini adalah antara manusia dan hewan sumber yang belum diketahui dan dapat terjadi penularan dari manusia ke manusia.</p>\r\n\r\n<p><strong>Gejala MERS</strong></p>\r\n<ul>\r\n\r\n<li>Demam.</li>\r\n\r\n<li>Batuk-batuk.</li>\r\n\r\n<li>Napas pendek.</li>\r\n\r\n<li>Gangguan pencernaan, seperti diare, mual, dan muntah.</li>\r\n\r\n<li>Nyeri otot.</li>\r\n</ul>\r\n\r\n<p> Tidak hanya itu, tanda-tanda pneumonia juga sering dialami oleh mereka yang mengidap MERS. Karena tahap-tahap awal penyakit ini sangat mirip dengan gejala flu, MERS termasuk penyakit yang sulit dideteksi. Kamu disarankan untuk mewaspadainya dan segera memeriksakan diri jika mengalami gejala-gejalanya.\r\n\r\nPenting untuk diketahui juga bahwa MERS dengan tingkat keparahan yang tinggi dapat memicu gagal organ, terutama ginjal dan syok sepsis. Oleh karena itu, pengidapnya harus menerima perawatan medis darurat di rumah sakit.</p>\r\n\r\n<p><strong>Diagnosis MERS</strong></p>\r\n\r\n<p>Untuk mendiagnosis seseorang yang dicurigai mengalami MERS, biasanya dokter akan melakukan uji laboratorium. Dua jenis uji laboratorium yang akan dilakukan, antara lain:</p>\r\n<ul>\r\n<li>Uji molekular. Tes ini dilakukan untuk mendiagnosis infeksi MERS aktif.</li>\r\n\r\n<li>Uji serologi. Tes ini dilakukan untuk mengevaluasi tanda-tanda infeksi MERS yang sudah lalu, dengan mendeteksi antibodi terhadap MERS.</li>\r\n</ul>', '<p><strong>Pencegahan :</strong></p>\r\n\r\n<li>Mengenakan masker dan segera mencari petugas medis jika terjadi gejala pernapasan.</li>\r\n\r\n<li>Menjaga kebersihan tangan.</li>\r\n\r\n<li>Menutup hidung dan mulut dengan kertas tisu ketika bersin dan buang kertas tisu kotor di tempat sampah berpenutup.</li>\r\n\r\n<li>Meningkatkan kekebalan tubuh yang baik dengan menjalani diet yang seimbang, olahraga teratur istirahat yang cukup, jangan merokok dan hindari konsumsi alkohol.</li>\r\n\r\n<li>Meskipun virus corona dapat bertahan hidup selama beberapa waktu di lingkungan, tetapi virus tersebut mudah dihancurkan dengan sebagian besar detergen dan agen pembersih.<li>\r\n\r\n<li>Menjaga ventilasi yang baik.</li></ul>\r\n\r\n\r\n<p><strong>Pengobatan MERS</strong></p>\r\n\r\n<p>Belum terdapat pengobatan spesifik dan belum terdapat vaksin. Umumnya, langkah penanganan dari dokter akan dilakukan berdasarkan gejala yang dialami oleh pengidap serta kondisi kesehatannya.</p>', 'MERS.jpg'),
(3, 'COVID-19', '<p>COVID-19 adalah penyakit yang disebabkan oleh Severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2), yang termasuk ke dalam keluarga virus corona.</p>\r\n\r\n<p><strong>Gejala Ringan hingga Berat</strong></p>\r\n\r\n<p>Gejala ringan pada pengidap akan menyerupai gejala flu, yaitu demam, batuk kering, mudah lelah, sakit tenggorokan, sakit kepala, serta pilek. Jika seseorang mengalami gejala ringan, dengan sistem kekebalan tubuh yang baik, kondisi tersebut dapat membaik dengan sendirinya seiring dengan berjalannya waktu dalam 7-10 hari.</p>\r\n\r\n<p>Gejala sedang pada pengidap, yaitu batuk dan demam dalam intensitas yang lebih parah. Gejala juga berlangsung lebih lama, yaitu 7-14 hari. Bukan itu saja, beberapa gejala lainnya ditandai dengan:</p>\r\n<ul>\r\n<li>Napas sesak dan berat.</li>\r\n<li>Mual dan muntah.</li>\r\n<li>Diare.</li>\r\n<li>Mulut kering.</li>\r\n<li>Sakit kepala</li>\r\n<li>Nyeri pada tubuh.</li>\r\n<li>Penurunan nafsu makan.</li>\r\n<li>Penurunan indera penciuman. </li></ul>\r\n\r\n<p>Sedangkan dalam kasus yang berat atau parah, gejala umumnya menyerupai infeksi paru-paru atau pneumonia. Kondisi tersebut ditandai dengan sesak napas parah, bahkan saat sedang beristirahat. Selain sesak napas parah, berikut ini beberapa gejala lainnya:</p>\r\n<ul>\r\n<li>Demam tinggi lebih dari 7 hari.</li>\r\n<li>Kebiruan pada bibir, kulit, dan wajah.</li>\r\n<li>Nyeri dada.</li>\r\n<li>Kulit terlihat pucat.</li>\r\n<li>Keluar keringat dingin.</li>\r\n<li>Linglung.</li>\r\n<li>Peningkatan detak jantung.</li>\r\n<li>Sakit kepala berat.</li>\r\n</ul>\r\n<p> Gejala dalam intensitas yang parah lebih umum terjadi pada pengidap berusia lanjut, atau seseorang yang sudah memiliki riwayat penyakit tertentu. Beberapa penyakit tersebut, yaitu: </p>\r\n<ul>\r\n<li>Penyakit paru-paru kronis, seperti asma dan PPOK.</li>\r\n<li>Gangguan jantung, seperti penyakit jantung koroner dan gagal jantung.</li>\r\n<li>Sistem kekebalan tubuh yang lemah akibat HIV/AIDS, kanker, diabetes, atau prosedur kemoterapi</li>\r\n<li>Obesitas.</li>\r\n<li>Kerusakan organ ginjal atau hati.</li>\r\n</ul>\r\n\r\n<p><strong>Penyebaran di 192 Negara</strong></p>\r\n\r\n<p>Orang yang berusia lanjut dan dengan kondisi medis yang sudah ada sebelumnya (seperti, diabetes, dan penyakit jantung), biasanya lebih rentan terkena COVID-19 dan bisa berdampak menjadi sakit parah. Sejak muncul pada akhir Desember 2019 di Wuhan, Tiongkok, menurut data real-time dari Johns Hopkins CSSE (24 Februari 2021 14:22 WIB), virus ini sudah menyebar ke 192 negara di berbagai dunia, di mana sebanyak 112.116.627 orang terjangkit COVID-19. Korban meninggal dunia sebanyak 2.485.601 jiwa, sedangkan 63.299.560 orang sudah sembuh dari serangan virus ini.</p>', '<p><strong>Mengurangi Risiko Terjangkit COVID-19</strong></p>\r\n\r\n<p>Pemberian vaksin virus corona tidak akan cukup jika tidak dibarengi dengan beberapa langkah pencegahan berikut ini:</p>\r\n<ul>\r\n<li>Sering mencuci tangan dengan sabun dan air mengalir selama 20 detik hingga bersih.</li>\r\n<li>Hindari menyentuh hidung, mulut, dan wajah saat tangan dalam keadaan kotor atau belum dicuci.</li>\r\n<li>Tidak kontak langsung atau berdekatan dengan orang yang sakit.</li>\r\n<li>Tidak menyentuh hewan atau unggas liar. </li>\r\n<li>Membersihkan dan mensterilkan permukaan benda yang sering digunakan. </li>\r\n<li>Tutup hidung dan mulut ketika bersin atau batuk dengan tisu. Kemudian, buanglah tisu dan cuci tangan hingga bersih. </li>\r\n<li>Jangan keluar rumah dalam keadaan sakit.</li>\r\n</ul>\r\n\r\n<p><strong>Waktu Inkubasi COVID-19 dalam Tubuh Manusia</strong></p>\r\n\r\n<p>Masa inkubasi COVID-19 diperkirakan antara 2–11 hari, dan perkiraan ini dapat berubah sewaktu-waktu sesuai kondisi tubuh masing-masing pengidap. Berdasarkan data dari penyakit akibat coronavirus sebelumnya seperti MERS dan SARS, masa inkubasi COVID-19 juga bisa mencapai 14 hari.</p>', 'covid19.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`kode_pengetahuan`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`kode_post`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `kode_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `kode_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `kode_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `kode_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
