-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2020 pada 16.10
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

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
-- Struktur dari tabel `data_hasil_klasifikasi`
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
-- Dumping data untuk tabel `data_hasil_klasifikasi`
--

INSERT INTO `data_hasil_klasifikasi` (`id`, `id_siswa`, `jenis_kelamin`, `usia`, `sekolah`, `jawaban_a`, `jawaban_b`, `jawaban_c`, `jawaban_d`, `kelas_hasil`, `id_rule`) VALUES
(1, 1, 'L', 15, 'Swasta', 4, 10, 5, 21, 'Plegmatis', 1),
(2, 8, 'L', 16, 'Negeri', 3, 9, 11, 17, 'Plegmatis', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_latih`
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
-- Dumping data untuk tabel `data_latih`
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
(10, 'Moh. Inas Ramadhan', 'L', 13, 'Swasta', 16, 12, 7, 5, 'Sanguin'),
(11, 'Akmal Thoriq M', 'L', 15, 'Swasta', 9, 14, 10, 7, 'Koleris'),
(12, 'Abdullah Yusuf F R', 'L', 13, 'Swasta', 8, 6, 11, 15, 'Plegmatis'),
(13, 'Akhdan Muhammad F', 'L', 13, 'Swasta', 12, 11, 9, 8, 'Sanguin'),
(14, 'Faris Saifullah', 'L', 14, 'Swasta', 15, 8, 10, 7, 'Sanguin'),
(15, 'M Riza A.K', 'L', 13, 'Swasta', 16, 6, 7, 11, 'Sanguin'),
(16, 'M. Lazuardy F', 'L', 13, 'Swasta', 12, 8, 10, 10, 'Sanguin'),
(17, 'M Zidan Al Baihaqi', 'L', 14, 'Swasta', 9, 4, 5, 22, 'Plegmatis'),
(18, 'Abdul Allam', 'L', 15, 'Swasta', 10, 3, 12, 15, 'Plegmatis'),
(19, 'Sauqi Hilmi M', 'L', 14, 'Swasta', 11, 2, 6, 21, 'Plegmatis'),
(20, 'Ahzami Asy-Syhadi', 'L', 13, 'Swasta', 9, 9, 10, 12, 'Plegmatis'),
(21, 'Nashrul Fatih Y', 'L', 13, 'Swasta', 13, 6, 9, 12, 'Sanguin'),
(22, 'Qomaruddin Zaki', 'L', 14, 'Swasta', 8, 12, 10, 10, 'Koleris'),
(23, 'Ichsanul A Sholeh', 'L', 13, 'Swasta', 15, 2, 8, 15, 'Sanguin'),
(24, 'Syahaq', 'L', 13, 'Swasta', 10, 9, 9, 12, 'Plegmatis'),
(25, 'Betelgeuse W F K', 'L', 14, 'Swasta', 12, 14, 9, 5, 'Koleris'),
(26, 'Dian Izza Nadiya', 'P', 15, 'Swasta', 10, 8, 15, 7, 'Melankolis'),
(27, 'Ivana Thynaba Nareza', 'P', 14, 'Swasta', 5, 4, 11, 20, 'Plegmatis'),
(28, 'Cia', 'P', 14, 'Swasta', 24, 10, 2, 4, 'Sanguin'),
(29, 'Rahmadita Nurdian K', 'P', 14, 'Swasta', 16, 11, 6, 7, 'Sanguin'),
(30, 'Shofiyyah R Aisy', 'P', 13, 'Swasta', 5, 2, 17, 16, 'Melankolis'),
(31, 'Sabrina Salsa Oktavia', 'P', 14, 'Swasta', 14, 11, 6, 9, 'Sanguin'),
(32, 'Anis', 'P', 14, 'Swasta', 8, 2, 8, 22, 'Plegmatis'),
(33, 'Khansa F Nirwasita', 'P', 13, 'Swasta', 21, 8, 5, 6, 'Sanguin'),
(34, 'Aisyah Regina P', 'P', 15, 'Swasta', 8, 10, 9, 13, 'Plegmatis'),
(35, 'Syafina M Firdaus', 'P', 13, 'Swasta', 12, 11, 10, 7, 'Sanguin'),
(36, 'M Yasmin', 'P', 13, 'Swasta', 6, 15, 8, 11, 'Koleris'),
(37, 'Umu Latifatul Jannah', 'P', 13, 'Swasta', 14, 5, 6, 15, 'Plegmatis'),
(38, 'Amara Rida Z', 'P', 15, 'Swasta', 7, 8, 12, 13, 'Plegmatis'),
(39, 'Shofiatur Rahmah', 'P', 15, 'Swasta', 5, 20, 10, 5, 'Koleris'),
(40, 'Urfi Zukhrufa', 'P', 13, 'Swasta', 12, 1, 12, 15, 'Plegmatis'),
(41, 'Namira Aaiilah S', 'P', 13, 'Swasta', 8, 4, 15, 13, 'Melankolis'),
(42, 'Putri Annisa Aura D', 'P', 14, 'Swasta', 9, 4, 9, 18, 'Plegmatis'),
(43, 'Aisyah Lailai Habibah Firdausi', 'P', 14, 'Swasta', 17, 4, 7, 12, 'Sanguin'),
(44, 'Deffanie Aulia R', 'P', 15, 'Swasta', 10, 10, 14, 6, 'Melankolis'),
(45, 'Khanita Najla Nazhifa', 'P', 13, 'Swasta', 9, 11, 7, 13, 'Plegmatis'),
(46, 'Rosy Fatati qonita', 'P', 15, 'Swasta', 9, 4, 10, 17, 'Plegmatis'),
(47, 'Bilqis Belvana Enesia', 'P', 15, 'Swasta', 7, 11, 10, 12, 'Plegmatis'),
(48, 'Rr. Mahira Muntaz', 'P', 13, 'Swasta', 14, 6, 11, 9, 'Sanguin'),
(49, 'Nabila Salsabila', 'P', 13, 'Swasta', 7, 6, 15, 12, 'Melankolis'),
(50, 'Syahidatul Izzah A', 'P', 13, 'Swasta', 17, 11, 6, 6, 'Sanguin'),
(51, 'M. Syarifuddin N. R', 'L', 13, 'Negeri', 9, 9, 10, 12, 'Plegmatis'),
(52, 'S. Agung Setiawan', 'L', 13, 'Negeri', 8, 6, 11, 15, 'Plegmatis'),
(53, 'Bagas Septian P', 'L', 13, 'Negeri', 10, 10, 14, 6, 'Melankolis'),
(54, 'M. Ramadhan', 'L', 13, 'Negeri', 12, 4, 13, 11, 'Melankolis'),
(55, 'Dwi Agus Wijayanto', 'L', 13, 'Negeri', 9, 5, 10, 16, 'Plegmatis'),
(56, 'Septian Priana A', 'L', 13, 'Negeri', 10, 13, 5, 12, 'Koleris'),
(57, 'M. Rifan N', 'L', 14, 'Negeri', 9, 5, 6, 20, 'Plegmatis'),
(58, 'Akbar Bagus P', 'L', 13, 'Negeri', 10, 15, 6, 9, 'Koleris'),
(59, 'Miftachul Arista M.', 'L', 13, 'Negeri', 10, 10, 13, 7, 'Melankolis'),
(60, 'Miracle Nathanael P', 'L', 14, 'Negeri', 7, 6, 8, 19, 'Plegmatis'),
(61, 'Andika Aji P', 'L', 13, 'Negeri', 10, 11, 9, 10, 'Koleris'),
(62, 'M Naufal Adib H', 'L', 13, 'Negeri', 6, 11, 14, 9, 'Melankolis'),
(63, 'Kevin Alifiano Bassam', 'L', 13, 'Negeri', 13, 9, 8, 10, 'Sanguin'),
(64, 'M Ilham Nur Rahmi', 'L', 13, 'Negeri', 15, 5, 9, 11, 'Sanguin'),
(65, 'Ach.Fahrudin N', 'L', 13, 'Negeri', 15, 9, 10, 6, 'Sanguin'),
(66, 'Nifa Lazwardy S', 'L', 13, 'Negeri', 15, 12, 5, 8, 'Sanguin'),
(67, 'Rido Dimas Permadi', 'L', 14, 'Negeri', 12, 14, 10, 4, 'Koleris'),
(68, 'M. Daffa Amrullah', 'L', 14, 'Negeri', 5, 14, 10, 11, 'Koleris'),
(69, 'Moch.Rico Zaenoni', 'L', 14, 'Negeri', 15, 12, 6, 7, 'Sanguin'),
(70, 'Amsal A Setyono', 'L', 14, 'Negeri', 14, 5, 8, 13, 'Sanguin'),
(71, 'Khoirul Anam', 'L', 15, 'Negeri', 6, 12, 6, 16, 'Plegmatis'),
(72, 'Muhammad Adam F', 'L', 13, 'Negeri', 14, 8, 8, 10, 'Sanguin'),
(73, 'Yudistira Dimas S', 'L', 13, 'Negeri', 10, 10, 8, 12, 'Plegmatis'),
(74, 'Muhammad S', 'L', 14, 'Negeri', 12, 9, 5, 14, 'Plegmatis'),
(75, 'M. Abdullah Ilham A', 'L', 14, 'Negeri', 13, 6, 9, 12, 'Sanguin'),
(76, 'Yati Nur Azizah', 'P', 13, 'Negeri', 13, 7, 8, 12, 'Sanguin'),
(77, 'Berlian Sabilillah R', 'P', 13, 'Negeri', 14, 7, 10, 9, 'Sanguin'),
(78, 'Safira Putri Frandika', 'P', 14, 'Negeri', 11, 14, 7, 8, 'Koleris'),
(79, 'Fasta Itfina', 'P', 14, 'Negeri', 12, 7, 13, 8, 'Melankolis'),
(80, 'Putri Sofiyana N', 'P', 14, 'Negeri', 5, 12, 15, 8, 'Melankolis'),
(81, 'Arni Nur Unaifah', 'P', 13, 'Negeri', 14, 18, 5, 3, 'Koleris'),
(82, 'Kharisma Yogi C', 'P', 13, 'Negeri', 7, 15, 10, 8, 'Koleris'),
(83, 'Nandy Lava B. Utomo', 'P', 13, 'Negeri', 12, 2, 16, 10, 'Melankolis'),
(84, 'Emilia Nur Rohmah', 'P', 13, 'Negeri', 10, 4, 14, 12, 'Melankolis'),
(85, 'Racgmalia Nur Fitri', 'P', 14, 'Negeri', 9, 6, 7, 18, 'Plegmatis'),
(86, 'Zillanatus V Aaliyah', 'P', 13, 'Negeri', 4, 11, 11, 14, 'Plegmatis'),
(87, 'Rahma Nilam Cahya', 'P', 13, 'Negeri', 8, 9, 14, 9, 'Melankolis'),
(88, 'Denok Handayani', 'P', 13, 'Negeri', 6, 8, 16, 10, 'Melankolis'),
(89, 'Tiara Fauzul Islam', 'P', 13, 'Negeri', 7, 12, 13, 8, 'Melankolis'),
(90, 'Cici Farida A. P', 'P', 13, 'Negeri', 4, 4, 17, 15, 'Plegmatis'),
(91, 'Adhelia Putri P', 'P', 13, 'Negeri', 12, 5, 6, 17, 'Plegmatis'),
(92, 'Arinta Agustine', 'P', 14, 'Negeri', 13, 11, 10, 6, 'Sanguin'),
(93, 'Ameliatur Zahro', 'P', 14, 'Negeri', 18, 9, 6, 7, 'Sanguin'),
(94, 'Elsandra Nur Maidah', 'P', 14, 'Negeri', 17, 4, 11, 8, 'Sanguin'),
(95, 'Citra Indiana Putri', 'P', 13, 'Negeri', 9, 9, 8, 14, 'Plegmatis'),
(96, 'Ayu Febri Wulandari', 'P', 13, 'Negeri', 6, 5, 8, 21, 'Plegmatis'),
(97, 'Fischa Aditiyah W', 'P', 14, 'Negeri', 13, 10, 7, 10, 'Sanguin'),
(98, 'Isma Marista Riyanti', 'P', 13, 'Negeri', 13, 12, 8, 7, 'Sanguin'),
(99, 'Khodijah Febriyanti', 'P', 13, 'Negeri', 12, 8, 11, 9, 'Sanguin'),
(100, 'Citra Tsabitan A', 'P', 13, 'Negeri', 18, 9, 8, 5, 'Sanguin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_siswa`
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
-- Dumping data untuk tabel `data_siswa`
--

INSERT INTO `data_siswa` (`id`, `nama_siswa`, `jenis_kelamin`, `usia`, `sekolah`, `id_user`) VALUES
(1, 'Coba Siswa', 'L', 15, 'Swasta', 2),
(8, 'Obet', 'L', 16, 'Negeri', 26),
(9, 'Pengguna', 'P', 21, 'Swasta', 27);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_soal`
--

CREATE TABLE `data_soal` (
  `id` int(11) NOT NULL,
  `pilihan_a` text,
  `pilihan_b` text,
  `pilihan_c` text,
  `pilihan_d` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_soal`
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
(10, 'Punya rasa humor yang cemerlang dan bisa membuat cerita apa saja menjadi peristiwa yang menyenangkan. (Funny)', 'Pribadi yang mendominasi dan mampu menyebabkan orang lain ragu - ragu untuk melawannya. (Forceful)', 'Secara konsisten dapat diandalkan, teguh, setia, dan mengabdi, bahkan terkadang tanpa alasan. (Faithful)', 'Orang yang menang-gapi. Bukan orang yang punya inisiatif untuk memulai per-cakapan. (Friendly)'),
(11, 'Orang yang me-nyenangkan sebagai teman. (Delightful)', 'Bersedia mengambil resiko tanpa kenal takut. (Daring)', 'Melakukan segala sesuatu secara ber-urutan dengan ingatan yang jernih akan segala hal yang terjadi. (Detailed)', 'Berurusan dengan orang lain secara penuh siasat, perasa, dan sabar. (Diplomatic)'),
(12, 'Secara konsisten memiliki semangat yang tinggi dan suka membagkan ke-bahagiaan kepada orang lain. (Cheerful)', 'Percaya diri dan yakin akan kemampuan dan kesuksesannya sendiri. (Confifent)', 'Orang yang perhatiannya melibat-kan sesuatu yang berhubungan dengan intelektual dan artistik. (Cultured)', 'Tetap memiliki ke-seimbangan secara emosional, me-nanggapi sebagaimana yang diharapkan orang lain. (Consisten)'),
(13, 'Mendorong orang lain untuk bekerja dan ter-libat serta membuat seluruhnya menyenangkan. (Inspiring)', 'Memenuhi diri sendiri, mandiri, penuh percaya diri dan nampak tidak begitu memerlukan bantuan. (Independent)', 'Memvisualisasikan hal-hal dalam bentuk yang sempurna dan perlu memenuhi standar itu sendiri. (Idealistic)', 'Tidak pernah me-ngatakan atau me-nyebabkan apapun yang tidak me-nyenangkan atau menimbulkan rasa keberatan. (Inoffensive)'),
(14, 'Terang-terangan me-nyatakan emosi terutama rasa sayang dan tidak ragu menyentuh ketika berbicara dengan orang lain. (Demonstrative)', 'Orang yang mempunyai kemampuan membuat penilaian yang cepat dan tuntas. (Decisive)', 'Intensif dan introspektif tanpa rasa senang pada percakapan dan pengajaran yang pulasan. (Deep)', 'Memperlihatkan ke-pandaian bicara yang mengigit\'. Biasanya kalimat satu baris yang sifatnya sarkastik. (Dryhumor)'),
(15, 'Menyukai pesta dan tidak bisa menunggu untuk bertemu setiap orang dalam ruangan, tidak pernah meng-anggap orang lain asing. (Mixes-easily)', 'Terdorong oleh keperluan untuk produktif, pemimpin yang dituruti orang lain. (Mover)', 'Punya apresiasi mendalam untuk musik, punya komitmen kepada musik sebagai bentuk seni, bukan hanya kesenangan pertunjukan. (Musical)', 'Secara konsisten mencari peranan merukunkan pertikaian supaya bisa meng-hindari konflik. (Mediator)'),
(16, 'Terus-menerus ber-bicara, biasanya men-ceritakan kisah lucu yang dapat menghibur setiap orang di sekitar-nya, merasa perlu mengisi kesunyian agar orang lain merasa senang. (Talker)', 'Memegang teguh dengan keras kepala dan tidak mau melepaskan hingga tujuan tercapai. (Tenacious)', 'Orang yang tanggap dan mengingat setiap kesempatan istimewa, cepat memberi isyarat yang baik. (Thoightful)', 'Mudah menerima pemikiran dan cara orang lain tanpa perlu tidak menyetujuinya. (Tolerant)'),
(17, 'Penuh kehidupan, kuat, dan penuh semangat. (Lively)', 'Pemberi pengarahan karena pembawaan yang terdorong untuk memimpin dan sering merasa sulit mem-percayai bahwa orang lain bisa melakukan pekerjaan dengan sama baiknya. (Leader)', 'Setia pada seseorang, gagasan, dan pekerja-an, terkadang dapat melampaui alasan. (Loyal)', 'Selalu bersedia men-dengarkan apa yang orang lain katakan. (Listener)'),
(18, 'Tak ternilai harganya, dicintai, pusat perhatian. (Cute)', 'Memegang ke-pemimpinan dan meng-harapkan orang lain mengikuti. (Chief)', 'Mengatur kehidupan, tugas, dan pemecahan masalah dengan membuat daftar. (Chartmaker)', 'Mudah puas dengan apa yang dimiliki, jarang iri hati. (Contented)'),
(19, 'Orang yang suka menghidupkan pesta sebagai diinginkan orang sebagai tamu pesta. (Populer)', 'Harus terus-menerus bekerja atau mencapai sesuatu, sering merasa sulit ber-istirahat. (Productive)', 'Menempatkan standar tinggi pada dirinya maupun orang lain. Menginginkan segala-galanya pada urutan semestinya.(Perfectionist)', 'Mudah bergaul, bersifat terbuka, mudah diajak bicara. (Pleasant)'),
(20, 'Kepribadian yang hidup, berlebihan, penuh tenaga. (Bouncy)', 'Tidak kenal takut, berani, terus terang, tidak takut akan resiko. (Bold)', 'Secara konsisten ingin membawa diri di dalam batas-batas apa yang dirasakan semestinya. (Behafed)', 'Kepribadian yang stabil dan berada di tengah-tengah. (Balanced)'),
(21, 'Memperlihatkan sedikit emosi / mimik. (Blank)', 'Menghindari perhatian akibat rasa malu. (Bashful)', 'Suka pamer, mem-perlihatkan apa yang gemerlap   dan kuat, terlalu bersuara. (Brassy)', 'Suka memerintah, mendominasi, kadang-kadang mengesalkan antar hubungan orang dewasa. (Bossy)'),
(22, 'Kurang teraturan-nya mempengaruhi hampir semua bidang ke-hidupannya. (Undisipline)', 'Merasa sulit mengenali masalah dan perasaan orang lain. (Unsympathetic)', 'Sulit memaafkan dan melupakan sakit hati yang pernah dilakukan, biasa mendendam. (Unforgiving)', 'Cenderung tidak ber-gairah, sering merasa bahwa bagaimana-pun sesuatu tidak akan berhasil. (Unenthusiastic)'),
(23, 'Suka menceritakan kembali suatu kisah tanpa menyadari bahwa cerita tersebut pernah diceritakan sebelumnya, selalu perlu sesuatu untuk dikatakan. (Repetitious)', 'Berjuang, melawan untuk menerima cara lain yang tidak sesuai dengan cara yang diinginkan. (Resistant)', 'Sering memendam rasa tidak senang akibat merasa tersinggung oleh sesuatu. (Resenful)', 'Tidak bersedia ikut terlibat terutama bila rumit. (Reticent)'),
(24, 'Punya ingatan kurang kuat, biasa-nya berkaitan dengan kurang disiplin dan tidak mau repot-repot mencatat hal-hal yang tidak menyenangkan. (Forgetful)', 'Langsung, blak-blakan, tidak sungkan mengatakan apa yang dipikirkan. (Farank)', 'Bersikeras tentang persoalan sepele, minta perhatian besar pada persoalan yang tidak penting. (Fussy)', 'Sering merasa sangat khawatir, sedih, dan gelisah. (Fearful)'),
(25, 'Lebih banyak bicara daripada mendengar-kan, bila sudah bicara sulit berhenti. (Interrupts)', 'Sulit bertahan untuk menghadapi kekesal-an. (Impatient)', 'Kurang percaya diri. (Insecure)', 'Sulit dalam membuat keputusan. (Indesecive)'),
(26, 'Bisa bergairah sesaat dan sedih pada saat berikutnya. Bersedia membantu kemudian menghilang. Berjanji akan datang tapi kemudian lupa untuk muncul. (Unpredictable)', 'Merasa sulit mem-perlihatkan kasih sayang dengan terbuka. (Unaffectionate)', 'Tuntutannya akan kesempurnaan terlalu tinggi dan dapat membuat orang lain menjauhinya. (Unpopular)', 'Tidak tertarik pada perkumpulan atau kelompok. (Uninfolved)'),
(27, 'Tidak punya cara yang konsisten untuk melakukan banyak hal. (Haphazard)', 'Bersikeras memaksa-kan caranya sendiri. (Headstrong)', 'Standar yang ditetapkan begitu tinggi sehingga orang lain sulit memuaskannya. (Hard to Please)', 'Lambat dalam bergerak dan sulit untuk ikut terlibat. (Hesitant)'),
(28, 'Memperbolehkan orang lain, termasuk anak-anak untuk melakukan apa saja sesukanya untuk menghindari diri kita tidak disukai. (Permissive)', 'Punya harga diri tinggi dan menganggap diri selalu benar dan yang terbaik dalam pekerja-an. (Proud)', 'Dalam mengharapkan yang terbaik, biasanya melihat sisi buruk sesuatu terlebih dahulu. (Pessimistic)', 'Memiliki kepribadian yang biasa saja dan tidak suka mem-perlihatkan banyak emosi. (Plain)'),
(29, 'Memiliki perangai seperti anak-anak yang mengutarakan diri dengan ngambek dan berbuat ber-lebihan tetapi kemudian melupakan-nya seketika. (Angered-Easily)', 'Mudah merasa ter-asing dari orang lain dikarenakan rasa tidak aman atau takut jangan-jangan orang lain tidak merasa senang bersamanya. (Alienated)', 'Mengobarkan per-debatan karena biasanya selalu benar dan terkadang tidak peduli bagaimana situasi saat itu. (Argumentative)', 'Bukan orang yang suka menetapkan tujuan dan tidak berharap menjadi orang yang seperti itu. (Aimless)'),
(30, 'Memiliki perspektif yang sederhana dan kekanak-kanakan, kurang pengertian terhadap tingkat kehidupan yang lebih mendalam. (Naive)', 'Penuh keyakinan, semangat, dan keberanian (sering dalam pengertian negatif). (Nervy)', 'Sikapnya jarang positif dan sering hanya melihat sisi buruk dari setiap situasi. (Negative-Atitude)', 'Mudah bergaul, tidak peduli, dan masa bodoh. (Nonchalat)'),
(31, 'Merasa senang mendapat pengharga-an dari orang lain. Sebagai penghibur menyukai tepuk tangan, tawa, dan penerimaan penonton. (Wants-Credit)', 'Menetapkan tujuan secara agresif serta harus terus produktif, merasa bersalah bila beristirahat, bukan ter-dorong oleh keinginan untuk sempurna melainkan imbalan. (Workaholic)', 'Suka menarik diri dan memerlukan banyak waktu untuk sendirian atau mengasingkan diri. (Withdrawn)', 'Secara konsisten merasa terganggu atau resah. (Worrier)'),
(32, 'Suka berbicara dan sulit mendengarkan. (Talkative)', 'Kadang-kadang me-nyatakan diri dengan cara yang agak menyinggung perasaan dan kurang per-timbangan. (Tactless)', 'Terlalu introspektif dan mudah tersinggung kalau disalahpahami. (Too Sensitive)', 'Lebih suka mundur dari situasi sulit. (Timid)'),
(33, 'Kurang memiliki ke-mampuan dalam membuat kehidupan menjadi teratur. (Disorganized)', 'Dengan paksa mengambil kontrol atas situasi atau orang lain, biasanya dengan mengatakan apa yang harus dilakukan. (Domineering)', 'Hampir sepanjang waktu merasa tertekan. (Depressed)', 'Mempunyai ciri khas selalu tidak tetap dan kurang keyakinan bahwa suatu hal akan berhasil. (Doubtful)'),
(34, 'Tidak menentu, serba berlawanan dengan tindakan dan emosi yang tidak berdasar-kan logika. (Inconsistant)', 'Tampaknya tidak bisa menerima sikap, pandangan, dan cara orang lain. (Intolerant)', 'Pemikiran dan perhatian ditujukan ke dalam, hidup di dalam diri sendiri. (Introvert)', 'Merasa bahwa ke-banyakan hal tidak penting dalam suatu cara atau cara yang lain. (Indifferent)'),
(35, 'Hidup dalam keadaan tidak teratur, tidak dapat menemukan banyak benda. (Messy)', 'Mempengaruhi dengan cerdik dan penuh tipu untuk kepentingan sendiri; dengan suatu cara dapat memaksakan kehendak. (Manipulative)', 'Bicara pelan kalau didesak, tidak mau repot-repot bicara dengan jelas. (Mumbles)', 'Tidak punya emosi yang tinggi, tetapi biasanya semangatnya merosot sekali, apalagi bila merasa tidak dihargai. (Moody)'),
(36, 'Perlu menjadi pusat perhatian, ingin dilihat. (Show Off)', 'Bertekad memaksakan kehendaknya, tidak mudah dibujuk, keras kepala. (Stubborn)', 'Tidak mudah percaya, mempertanyakan motif di balik suatu perkataan. (Skeptical)', 'Tidak sering bertindak atau berpikir cepat, sangat mengganggu. (Slow)'),
(37, 'Tawa dan suaranya dapat didengar di atas suara lainnya di di dalam ruangan. (Loud)', 'Tidak ragu-ragu mengatakan benar dan dapat memegang kendali. (Lord Over)', 'Memerlukan banyak waktu pribadi dan cenderung meng-hindari orang lain. (Loner)', 'Menilai pekerjaan dan kegiatan dengan ukuran berapa banyak tenaga yang dibutuhkan. (Lazy)'),
(38, 'Tidak punya kekuatan untuk berkonsentrasi atau menaruh per-hatian pada sesuatu. (Scatterbrained)', 'Punya kemarahan yang menuntut berdasarkan ketidak-sabaran. Kemarahan yang dinyatakan saat orang lain tak bergerak cukup cepat atau tidak menyelesaikan apa yang diperintahkan. (Short-Tempered)', 'Cenderung mencurigai atau tidak mempercayai gagasan orang lain. (Suspicious)', 'Lambat untuk me-mulai, perlu dorongan yang kuat untuk termotivasi. (Sluggish)'),
(39, 'Menyukai kegiatan baru terus-menerus karena tidak merasa senang melakukan hal yang sama sepanjang waktu. (Restless)', 'Bisa bertindak tergesa-gesa tanpa memikirkan dengan tuntas terlebih dahulu, biasanya karena ketidaksabaran. (Rash)', 'Secara sadar maupun tidak mendendam, menghukum orang yang melanggar, diam-diam menahan persahabatan /kasih sayang. (Revengeful)', 'Tidak bersedia untuk ikut terlibat dalam suatu hal. (Reluctant)'),
(40, 'Rentang perhatian kekanak-kanakan dan pendek, butuh banyak perubahan dan variasi supaya tak merasa bosan. (Changeable)', 'Cerdik, orang yang selalu bisa menemu-kan cara untuk mencapai tujuan yang diinginkan. (Crafty)', 'Selalu mengevaluasi dan membuat penilaian, sering memikirkan dan menyatakan reaksi negatif. (Critical)', 'Sering mengendur kan pendiriannya, bahkan ketika merasa benar untuk menghindari terjadinya konflik. (Comrimissing)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_uji`
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
-- Dumping data untuk tabel `data_uji`
--

INSERT INTO `data_uji` (`id`, `nama`, `jenis_kelamin`, `usia`, `sekolah`, `jawaban_a`, `jawaban_b`, `jawaban_c`, `jawaban_d`, `kelas_asli`, `kelas_hasil`, `id_rule`) VALUES
(1, 'Mafaza Al-Aufa', 'L', 13, 'Swasta', 5, 7, 15, 13, 'Melankolis', 'Plegmatis', 8),
(2, 'Farhan Syah', 'L', 13, 'Swasta', 8, 13, 8, 11, 'Koleris', 'Koleris', 4),
(3, 'Hilmi Tajudin', 'L', 15, 'Swasta', 5, 4, 14, 17, 'Plegmatis', 'Plegmatis', 8),
(4, 'Firyal Aqillah Tahaani', 'P', 13, 'Swasta', 13, 10, 9, 8, 'Sanguin', 'Sanguin', 14),
(5, 'Abidah Mukhlishoh', 'P', 14, 'Swasta', 7, 3, 13, 17, 'Plegmatis', 'Plegmatis', 9),
(6, 'Moch. Yoland Pradana', 'L', 13, 'Negeri', 6, 16, 4, 14, 'Koleris', 'Koleris', 4),
(7, 'Syifa Arrosyid', 'L', 14, 'Negeri', 18, 7, 8, 7, 'Sanguin', 'Sanguin', 14),
(8, 'Barkatul Mirojiah', 'P', 14, 'Negeri', 13, 9, 7, 11, 'Sanguin', 'Sanguin', 28),
(9, 'Tiara Rossabilla ', 'P', 14, 'Negeri', 6, 6, 10, 18, 'Plegmatis', 'Plegmatis', 1),
(10, 'Risma Dewi Septiawati', 'P', 14, 'Negeri', 10, 5, 14, 11, 'Melankolis', 'Plegmatis', 9),
(11, 'Obet', 'L', 16, 'Negeri', 3, 9, 11, 17, 'Plegmatis', NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gain`
--

CREATE TABLE `gain` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `atribut` varchar(100) DEFAULT NULL,
  `gain` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gain`
--

INSERT INTO `gain` (`id`, `node_id`, `atribut`, `gain`) VALUES
(1, 1, 'jenis_kelamin', 0.251),
(2, 1, 'sekolah', 0.251),
(3, 1, 'Jawaban A v=5', 0),
(4, 1, 'Jawaban A v=10', 0),
(5, 1, 'Jawaban A v=15', 0.251),
(6, 1, 'Jawaban A v=20', 0),
(7, 1, 'Jawaban B v=5', 0.251),
(8, 1, 'Jawaban B v=10', 0),
(9, 1, 'Jawaban B v=15', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban_kuisioner`
--

CREATE TABLE `jawaban_kuisioner` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL DEFAULT '0',
  `id_siswa` int(11) NOT NULL DEFAULT '0',
  `id_soal` int(11) NOT NULL DEFAULT '0',
  `jawaban` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jawaban_kuisioner`
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
(10, 2, 1, 10, 'D'),
(11, 2, 1, 11, 'B'),
(12, 2, 1, 12, 'C'),
(13, 2, 1, 13, 'D'),
(14, 2, 1, 14, 'A'),
(15, 2, 1, 15, 'D'),
(16, 2, 1, 16, 'B'),
(17, 2, 1, 17, 'D'),
(18, 2, 1, 18, 'B'),
(19, 2, 1, 19, 'B'),
(20, 2, 1, 20, 'B'),
(21, 2, 1, 21, 'D'),
(22, 2, 1, 22, 'D'),
(23, 2, 1, 23, 'D'),
(24, 2, 1, 24, 'D'),
(25, 2, 1, 25, 'D'),
(26, 2, 1, 26, 'D'),
(27, 2, 1, 27, 'D'),
(28, 2, 1, 28, 'C'),
(29, 2, 1, 29, 'A'),
(30, 2, 1, 30, 'D'),
(31, 2, 1, 31, 'B'),
(32, 2, 1, 32, 'D'),
(33, 2, 1, 33, 'C'),
(34, 2, 1, 34, 'D'),
(35, 2, 1, 35, 'B'),
(36, 2, 1, 36, 'D'),
(37, 2, 1, 37, 'D'),
(38, 2, 1, 38, 'D'),
(39, 2, 1, 39, 'C'),
(40, 2, 1, 40, 'D'),
(41, 26, 8, 1, 'C'),
(42, 26, 8, 2, 'B'),
(43, 26, 8, 3, 'D'),
(44, 26, 8, 4, 'D'),
(45, 26, 8, 5, 'D'),
(46, 26, 8, 6, 'B'),
(47, 26, 8, 7, 'D'),
(48, 26, 8, 8, 'D'),
(49, 26, 8, 9, 'D'),
(50, 26, 8, 10, 'D'),
(51, 26, 8, 11, 'C'),
(52, 26, 8, 12, 'D'),
(53, 26, 8, 13, 'B'),
(54, 26, 8, 14, 'C'),
(55, 26, 8, 15, 'D'),
(56, 26, 8, 16, 'D'),
(57, 26, 8, 17, 'D'),
(58, 26, 8, 18, 'B'),
(59, 26, 8, 19, 'C'),
(60, 26, 8, 20, 'D'),
(61, 26, 8, 21, 'B'),
(62, 26, 8, 22, 'B'),
(63, 26, 8, 23, 'C'),
(64, 26, 8, 24, 'C'),
(65, 26, 8, 25, 'C'),
(66, 26, 8, 26, 'B'),
(67, 26, 8, 27, 'A'),
(68, 26, 8, 28, 'D'),
(69, 26, 8, 29, 'D'),
(70, 26, 8, 30, 'A'),
(71, 26, 8, 31, 'C'),
(72, 26, 8, 32, 'B'),
(73, 26, 8, 33, 'A'),
(74, 26, 8, 34, 'C'),
(75, 26, 8, 35, 'D'),
(76, 26, 8, 36, 'D'),
(77, 26, 8, 37, 'C'),
(78, 26, 8, 38, 'B'),
(79, 26, 8, 39, 'C'),
(80, 26, 8, 40, 'D');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rasio_gain`
--

CREATE TABLE `rasio_gain` (
  `id` int(11) NOT NULL,
  `opsi` varchar(10) DEFAULT NULL,
  `cabang1` varchar(50) DEFAULT NULL,
  `cabang2` varchar(50) DEFAULT NULL,
  `rasio_gain` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rasio_gain`
--

INSERT INTO `rasio_gain` (`id`, `opsi`, `cabang1`, `cabang2`, `rasio_gain`) VALUES
(1, 'opsi1', '14', '13 , 15', 0.574),
(2, 'opsi2', '13', '15 , 14', 0.385),
(3, 'opsi3', '15', '14 , 13', 0.574);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_keputusan`
--

CREATE TABLE `t_keputusan` (
  `id` int(11) NOT NULL,
  `parent` text,
  `akar` text,
  `keputusan` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_keputusan`
--

INSERT INTO `t_keputusan` (`id`, `parent`, `akar`, `keputusan`) VALUES
(1, '(jawaban_a<=10) AND (jawaban_c<=10)', '(jawaban_b<=10)', 'Plegmatis'),
(2, '(jawaban_a<=10) AND (jawaban_c<=10) AND (jawaban_b>10)', '(jawaban_d<=10)', 'Koleris'),
(3, '(jawaban_a<=10) AND (jawaban_c<=10) AND (jawaban_b>10) AND (jawaban_d>10)', '(usia=\'14\')', 'Koleris'),
(4, '(jawaban_a<=10) AND (jawaban_c<=10) AND (jawaban_b>10) AND (jawaban_d>10) AND (usia=\'13\' OR usia=\'15\') AND (usia=\'13\')', '(jenis_kelamin=\'L\')', 'Koleris'),
(5, '(jawaban_a<=10) AND (jawaban_c<=10) AND (jawaban_b>10) AND (jawaban_d>10) AND (usia=\'13\' OR usia=\'15\') AND (usia=\'13\')', '(jenis_kelamin=\'P\')', 'Koleris'),
(6, '(jawaban_a<=10) AND (jawaban_c<=10) AND (jawaban_b>10) AND (jawaban_d>10) AND (usia=\'13\' OR usia=\'15\')', '(usia=\'15\')', 'Plegmatis'),
(7, '(jawaban_a<=10) AND (jawaban_c>10)', '(jawaban_d<=10)', 'Melankolis'),
(8, '(jawaban_a<=10) AND (jawaban_c>10) AND (jawaban_d>10)', '(jenis_kelamin=\'L\')', 'Plegmatis'),
(9, '(jawaban_a<=10) AND (jawaban_c>10) AND (jawaban_d>10) AND (jenis_kelamin=\'P\')', '(usia=\'14\')', 'Plegmatis'),
(10, '(jawaban_a<=10) AND (jawaban_c>10) AND (jawaban_d>10) AND (jenis_kelamin=\'P\') AND (usia=\'13\' OR usia=\'15\') AND (usia=\'13\') AND (sekolah=\'Negeri\')', '(jawaban_a<=5)', 'Plegmatis'),
(11, '(jawaban_a<=10) AND (jawaban_c>10) AND (jawaban_d>10) AND (jenis_kelamin=\'P\') AND (usia=\'13\' OR usia=\'15\') AND (usia=\'13\') AND (sekolah=\'Negeri\')', '(jawaban_a>5)', 'Melankolis'),
(12, '(jawaban_a<=10) AND (jawaban_c>10) AND (jawaban_d>10) AND (jenis_kelamin=\'P\') AND (usia=\'13\' OR usia=\'15\') AND (usia=\'13\')', '(sekolah=\'Swasta\')', 'Melankolis'),
(13, '(jawaban_a<=10) AND (jawaban_c>10) AND (jawaban_d>10) AND (jenis_kelamin=\'P\') AND (usia=\'13\' OR usia=\'15\')', '(usia=\'15\')', 'Plegmatis'),
(14, '(jawaban_a>10) AND (jawaban_d<=10) AND (jawaban_b<=10)', '(jawaban_c<=10)', 'Sanguin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text,
  `level` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1'),
(2, 'Siswa', 'siswa', 'bcd724d15cde8c47650fda962968f102', '2'),
(27, 'Pengguna', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', '2'),
(26, 'Obet', 'obet', 'ac8052eb700a9d93f7ff3762a39abd1a', '2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_hasil_klasifikasi`
--
ALTER TABLE `data_hasil_klasifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_latih`
--
ALTER TABLE `data_latih`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_soal`
--
ALTER TABLE `data_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_uji`
--
ALTER TABLE `data_uji`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gain`
--
ALTER TABLE `gain`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jawaban_kuisioner`
--
ALTER TABLE `jawaban_kuisioner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rasio_gain`
--
ALTER TABLE `rasio_gain`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_keputusan`
--
ALTER TABLE `t_keputusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_hasil_klasifikasi`
--
ALTER TABLE `data_hasil_klasifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `data_latih`
--
ALTER TABLE `data_latih`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `data_siswa`
--
ALTER TABLE `data_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `data_soal`
--
ALTER TABLE `data_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `data_uji`
--
ALTER TABLE `data_uji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `gain`
--
ALTER TABLE `gain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `jawaban_kuisioner`
--
ALTER TABLE `jawaban_kuisioner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `rasio_gain`
--
ALTER TABLE `rasio_gain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `t_keputusan`
--
ALTER TABLE `t_keputusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
