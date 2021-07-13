-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2021 at 02:08 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kepribadian_c45`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_hasil_klasifikasi`
--

CREATE TABLE `data_hasil_klasifikasi` (
  `id` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `sekolah` varchar(100) DEFAULT NULL,
  `jawaban_a` int(11) DEFAULT NULL,
  `jawaban_b` int(11) DEFAULT NULL,
  `jawaban_c` int(11) DEFAULT NULL,
  `jawaban_d` int(11) DEFAULT NULL,
  `kelas_hasil` varchar(100) DEFAULT NULL,
  `id_rule` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_hasil_klasifikasi`
--

INSERT INTO `data_hasil_klasifikasi` (`id`, `id_siswa`, `jenis_kelamin`, `usia`, `sekolah`, `jawaban_a`, `jawaban_b`, `jawaban_c`, `jawaban_d`, `kelas_hasil`, `id_rule`) VALUES
(1, 1, 'L', 15, 'Swasta', 4, 10, 5, 21, 'Plegmatis', 1),
(2, 8, 'L', 16, 'Negeri', 3, 9, 11, 17, 'Plegmatis', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_latih`
--

CREATE TABLE `data_latih` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `sekolah` varchar(100) DEFAULT NULL,
  `jawaban_a` int(11) DEFAULT NULL,
  `jawaban_b` int(11) DEFAULT NULL,
  `jawaban_c` int(11) DEFAULT NULL,
  `jawaban_d` int(11) DEFAULT NULL,
  `kelas_asli` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_latih`
--

INSERT INTO `data_latih` (`id`, `nama`, `jenis_kelamin`, `usia`, `sekolah`, `jawaban_a`, `jawaban_b`, `jawaban_c`, `jawaban_d`, `kelas_asli`) VALUES
(1, 'Asher Fawwazadzka', 'L', 13, 'Swasta', 19, 4, 5, 12, 'Sanguin'),
(2, 'Wafda Mukrom Q.F', 'L', 13, 'Swasta', 15, 9, 9, 7, 'Sanguin'),
(3, 'Zulham \'Ali Fikri', 'L', 14, 'Swasta', 5, 6, 12, 17, 'Plegmatis'),
(4, 'Qosholis S Al-Usama', 'L', 15, 'Swasta', 13, 8, 9, 10, 'Sanguin'),
(5, 'Muhammad Shodiq', 'L', 15, 'Swasta', 20, 9, 5, 6, 'Sanguin'),
(6, 'Hilmy Aziz M', 'L', 14, 'Swasta', 10, 12, 13, 5, 'Melankolis'),
(7, 'Rafif', 'L', 14, 'Swasta', 13, 7, 12, 8, 'Sanguin'),
(8, 'Muhammad F Attaqi', 'L', 14, 'Swasta', 8, 11, 17, 4, 'Melankolis'),
(9, 'M. Najib Erdyansya', 'L', 13, 'Swasta', 10, 13, 6, 11, 'Koleris'),
(10, 'Moh. Inas Ramadhan', 'L', 13, 'Swasta', 16, 12, 7, 5, 'Sanguin');

-- --------------------------------------------------------

--
-- Table structure for table `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id` int(11) NOT NULL,
  `nama_siswa` varchar(200) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `sekolah` varchar(200) DEFAULT NULL,
  `id_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_siswa`
--

INSERT INTO `data_siswa` (`id`, `nama_siswa`, `jenis_kelamin`, `usia`, `sekolah`, `id_user`) VALUES
(10, 'Baekuni', 'L', 2, 'Negeri', 28);

-- --------------------------------------------------------

--
-- Table structure for table `data_soal`
--

CREATE TABLE `data_soal` (
  `id` int(11) NOT NULL,
  `pilihan_a` text,
  `pilihan_b` text,
  `pilihan_c` text,
  `pilihan_d` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_soal`
--

INSERT INTO `data_soal` (`id`, `pilihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`) VALUES
(1, 'Penuh kehidupan, sering menggunakan isyarat tangan, lengan, dan wajah secara hidup.(Animated)', 'Orang yang mau melakukan sesuatu hal yang baru dan berani bertekad untuk me-nguasainya.(Adventurous)', 'Suka menyelidiki bagian - bagian yang logis. (Analitical)', 'Mudah menyesuaikan diri dan senang dalam setiap situasi. (Adaptable)'),
(2, 'Penuh kesenangan dan selera humor yang baik. (Playful)', 'Meyakinkan se-seorang dengan logika dan fakta, bukan dengan pesona / kekuasaan. (Persuasive)', 'Melakukan sesuatu sampai selesai sebelum memulai yang lain. (Persistent)', 'Tampak tidak ter-ganggu dan tenang serta menghindari setiap bentuk ke-kacauan. (Peaceful)'),
(3, 'Orang yang memandang bersama orang lain sebagai kesempatan untuk bersikap manis dan menghibur, bukannya sebagai tantangan / kesempatan bisnis. (Sociable)', 'Orang yang yakin dengan caranya sendiri. (Strong-Willed)', 'Bersedia mengorban-kan dirinya untuk memenuhi kebutuhan orang lain.', 'Dengan mudah menerima pandang-an / keinginan orang lain tanpa perlu banyak meng-ungkapkan pendapat sendiri. (Submissive)'),
(4, 'Bisa merebut hati orang lain melalui pesona kepribadian. (Convicing)', 'Mengubah setiap situasi, kejadian atau permainan sebagai sebuah kontes dan selalu bermain untuk menang. (Competitive)', 'Menghargai keperluan dan perasaan orang lain. (Considerate)', 'Mempunyai perasaan emosional tapi jarang memperlihatkannya. (Controlled)'),
(5, 'Memperbaharui dan membantu membuat orang lain merasa senang. (Refreshing)', 'Bisa bertindak cepat dan efektif dalam semua situasi. (Resourceful)', 'Memperlakukan orang lain dengan segan sebagai penghormatan dan penghargaan. (Respectfull)', 'Menahan diri dalam menunjukkan emosi atau antusiasme. (Reserved)'),
(6, 'Penuh gairah dalam kehidupan. (Spirited)', 'Orang mandiri yang bisa sepenuhnya mengandal-kan kemampuan dan sumber dayanya sendiri. (Self-Reliant)', 'Secara intensif memperhatikan orang lain maupun hal apapun yang terjadi di sekitar. (Sensitive)', 'Orang yang mudah menerima keadaan atau situasi apa saja. (Satisfied)'),
(7, 'Dapat mendorong atau memaksa orang lain mengikuti dan bergabung melalui pesona kepribadian-nya. (Promoter)', 'Mengetahui segalanya akan beres bila kita yang memimpin. (Positive)', 'Memilih mempersiap-kan aturan yang terinci sebelumnya dalam menyelesaikan suatu proyek dan lebih menyukai keterlibatan dalam tahap-tahap perencanaan dan produk jadi, bukan dalam melaksanakan tugas. (Planner)', 'Tidak terpengaruh oleh penundaan. Tetap tenang dan toleran. (Patient)'),
(8, 'Memilih agar semua kehidupan adalah kegiatan yang impulsif, tidak dipikirkan terlebih dahulu dan tidak terhambat oleh rencana.(Spontaneous)', 'Yakin, tidak ragu-ragu. (Sure)', 'Membuat dan meng-hayati hidup menurut rencana sehari-hari. Tidak menyukai bila rencananya terganggu.(Scheduled)', 'Pendiam, tidak mudah terseret dalam per-cakapan. (Shy)'),
(9, 'Orang yang riang dan dapat meyakinkan diri sendiri & orang lain bahwa semuanya akan beres. (Optimistic)', 'Bicara terang-terangan dan terkadang tidak menahan diri. (Outspoken)', 'Orang yang mengatur segala-galanya secara sistematis dan metodis. (Orderly)', 'menerima apa saja, cepat melakukan sesuatu bahkan dengan cara orang lain.  (Obliging)'),
(10, 'Punya rasa humor yang cemerlang dan bisa membuat cerita apa saja menjadi peristiwa yang menyenangkan. (Funny)', 'Pribadi yang mendominasi dan mampu menyebabkan orang lain ragu - ragu untuk melawannya. (Forceful)', 'Secara konsisten dapat diandalkan, teguh, setia, dan mengabdi, bahkan terkadang tanpa alasan. (Faithful)', 'Orang yang menang-gapi. Bukan orang yang punya inisiatif untuk memulai per-cakapan. (Friendly)');

-- --------------------------------------------------------

--
-- Table structure for table `data_uji`
--

CREATE TABLE `data_uji` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `sekolah` varchar(100) DEFAULT NULL,
  `jawaban_a` int(11) DEFAULT NULL,
  `jawaban_b` int(11) DEFAULT NULL,
  `jawaban_c` int(11) DEFAULT NULL,
  `jawaban_d` int(11) DEFAULT NULL,
  `kelas_asli` varchar(100) DEFAULT NULL,
  `kelas_hasil` varchar(100) DEFAULT NULL,
  `id_rule` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_uji`
--

INSERT INTO `data_uji` (`id`, `nama`, `jenis_kelamin`, `usia`, `sekolah`, `jawaban_a`, `jawaban_b`, `jawaban_c`, `jawaban_d`, `kelas_asli`, `kelas_hasil`, `id_rule`) VALUES
(1, 'Mafaza Al-Aufa', 'L', 13, 'Swasta', 5, 7, 15, 13, 'Melankolis', 'Koleris', 3),
(2, 'Farhan Syah', 'L', 13, 'Swasta', 8, 13, 8, 11, 'Koleris', 'Koleris', 3),
(3, 'Hilmi Tajudin', 'L', 15, 'Swasta', 5, 4, 14, 17, 'Plegmatis', 'Plegmatis', 2),
(4, 'Firyal Aqillah Tahaani', 'P', 13, 'Swasta', 13, 10, 9, 8, 'Sanguin', 'Sanguin', 4),
(5, 'Abidah Mukhlishoh', 'P', 14, 'Swasta', 7, 3, 13, 17, 'Plegmatis', 'Plegmatis', 2),
(6, 'Moch. Yoland Pradana', 'L', 13, 'Negeri', 6, 16, 4, 14, 'Koleris', 'Koleris', 3),
(7, 'Syifa Arrosyid', 'L', 14, 'Negeri', 18, 7, 8, 7, 'Sanguin', 'Sanguin', 4),
(8, 'Barkatul Mirojiah', 'P', 14, 'Negeri', 13, 9, 7, 11, 'Sanguin', 'Sanguin', 4),
(9, 'Tiara Rossabilla ', 'P', 14, 'Negeri', 6, 6, 10, 18, 'Plegmatis', 'Plegmatis', 2),
(10, 'Risma Dewi Septiawati', 'P', 14, 'Negeri', 10, 5, 14, 11, 'Melankolis', 'Plegmatis', 2);

-- --------------------------------------------------------

--
-- Table structure for table `gain`
--

CREATE TABLE `gain` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `atribut` varchar(100) DEFAULT NULL,
  `gain` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gain`
--

INSERT INTO `gain` (`id`, `node_id`, `atribut`, `gain`) VALUES
(1, 1, 'jenis_kelamin', 0),
(2, 1, 'usia', 1),
(3, 1, 'sekolah', 0),
(4, 1, 'Jawaban A v=5', 1),
(5, 1, 'Jawaban A v=10', 0),
(6, 1, 'Jawaban A v=15', 0),
(7, 1, 'Jawaban A v=20', 0),
(8, 1, 'Jawaban B v=5', 0),
(9, 1, 'Jawaban B v=10', 1),
(10, 1, 'Jawaban B v=15', 0),
(11, 1, 'Jawaban B v=20', 0),
(12, 1, 'Jawaban C v=5', 0),
(13, 1, 'Jawaban C v=10', 1),
(14, 1, 'Jawaban C v=15', 0),
(15, 1, 'Jawaban C v=20', 0),
(16, 1, 'Jawaban D v=5', 0),
(17, 1, 'Jawaban D v=10', 0),
(18, 1, 'Jawaban D v=15', 1),
(19, 1, 'Jawaban D v=20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_kuisioner`
--

CREATE TABLE `jawaban_kuisioner` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL DEFAULT '0',
  `id_siswa` int(11) NOT NULL DEFAULT '0',
  `id_soal` int(11) NOT NULL DEFAULT '0',
  `jawaban` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawaban_kuisioner`
--

INSERT INTO `jawaban_kuisioner` (`id`, `id_user`, `id_siswa`, `id_soal`, `jawaban`) VALUES
(1, 2, 1, 1, 'A'),
(2, 2, 1, 2, 'A'),
(3, 2, 1, 3, 'D'),
(4, 2, 1, 4, 'B'),
(5, 2, 1, 5, 'B'),
(6, 2, 1, 6, 'D'),
(7, 2, 1, 7, 'B'),
(8, 2, 1, 8, 'D'),
(9, 2, 1, 9, 'C'),
(10, 2, 1, 10, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `rasio_gain`
--

CREATE TABLE `rasio_gain` (
  `id` int(11) NOT NULL,
  `opsi` varchar(10) DEFAULT NULL,
  `cabang1` varchar(50) DEFAULT NULL,
  `cabang2` varchar(50) DEFAULT NULL,
  `rasio_gain` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rasio_gain`
--

INSERT INTO `rasio_gain` (`id`, `opsi`, `cabang1`, `cabang2`, `rasio_gain`) VALUES
(1, 'opsi1', '14', '13 , 15', 0.574),
(2, 'opsi2', '13', '15 , 14', 0.385),
(3, 'opsi3', '15', '14 , 13', 0.574);

-- --------------------------------------------------------

--
-- Table structure for table `t_keputusan`
--

CREATE TABLE `t_keputusan` (
  `id` int(11) NOT NULL,
  `parent` text,
  `akar` text,
  `keputusan` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_keputusan`
--

INSERT INTO `t_keputusan` (`id`, `parent`, `akar`, `keputusan`) VALUES
(1, '(jawaban_a<=10)', '(jawaban_d<=5)', 'Melankolis'),
(2, '(jawaban_a<=10) AND (jawaban_d>5)', '(usia=\'14\')', 'Plegmatis'),
(3, '(jawaban_a<=10) AND (jawaban_d>5)', '(usia=\'13\')', 'Koleris'),
(4, '', '(jawaban_a>10)', 'Sanguin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text,
  `level` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1'),
(28, 'Baekuni', 'baekuni', '6dec5cf1fe597b1af06dfbcf1c0daf1a', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_hasil_klasifikasi`
--
ALTER TABLE `data_hasil_klasifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_latih`
--
ALTER TABLE `data_latih`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_soal`
--
ALTER TABLE `data_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_uji`
--
ALTER TABLE `data_uji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gain`
--
ALTER TABLE `gain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawaban_kuisioner`
--
ALTER TABLE `jawaban_kuisioner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rasio_gain`
--
ALTER TABLE `rasio_gain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_keputusan`
--
ALTER TABLE `t_keputusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_hasil_klasifikasi`
--
ALTER TABLE `data_hasil_klasifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_latih`
--
ALTER TABLE `data_latih`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `data_siswa`
--
ALTER TABLE `data_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `data_soal`
--
ALTER TABLE `data_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `data_uji`
--
ALTER TABLE `data_uji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gain`
--
ALTER TABLE `gain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `jawaban_kuisioner`
--
ALTER TABLE `jawaban_kuisioner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rasio_gain`
--
ALTER TABLE `rasio_gain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_keputusan`
--
ALTER TABLE `t_keputusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
