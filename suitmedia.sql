-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2024 at 02:56 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suitmedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id_news` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id_news`, `title`, `date`) VALUES
(1, 'Peluang Bisnis Teknologi di Industri F&B: Solusi Digital untuk Restoran dan Kafe', '2024-08-12'),
(2, 'Aplikasi Manajemen Proyek Berbasis Cloud', '2024-08-08'),
(3, 'Platform Edukasi Online dengan Realitas Virtual', '2024-08-09'),
(4, 'Pengembangan Aplikasi IoT untuk Rumah Pintar', '2024-08-01'),
(5, 'Marketplace untuk Jasa Freelance Teknologi', '2024-07-31'),
(6, 'Layanan Cybersecurity untuk UMKM', '2024-07-23'),
(7, 'Aplikasi Pelacakan Keuangan Personal dengan AI', '2024-07-17'),
(8, 'Sistem Otomatisasi Kantor Berbasis IoT', '2024-07-10'),
(9, 'Platform Kolaborasi Tim dengan Integrasi AI', '2024-08-05'),
(10, 'Pengembangan Aplikasi e-Commerce Berbasis AI', '2024-07-25'),
(11, 'Solusi Big Data untuk Industri Kesehatan', '2024-08-07'),
(12, 'Layanan Konsultasi Bisnis Digital', '2024-08-06'),
(13, 'Startup Teknologi Terbaru: Solusi AI untuk Peningkatan Produktivitas', '2024-08-02'),
(14, 'Mengembangkan Aplikasi Berbasis Blockchain: Peluang Bisnis Masa Depan', '2024-08-21'),
(15, 'Inovasi di Dunia Fintech: Bisnis Dompet Digital yang Menguntungkan', '2024-06-11'),
(16, 'Ide Bisnis IoT: Menghubungkan Perangkat untuk Kehidupan yang Lebih Cerdas', '2024-08-06'),
(17, 'Memulai Bisnis SaaS: Menyediakan Layanan Digital untuk Segala Kebutuhan', '2024-07-16'),
(18, 'Keuntungan Memulai Bisnis Marketplace Online di Era Digital', '2024-08-10'),
(19, 'Membangun Platform E-Learning: Peluang Bisnis Edukasi di Era Teknologi', '2024-06-12'),
(20, 'Bisnis Augmented Reality: Menggabungkan Dunia Nyata dan Virtual', '2024-07-11'),
(21, 'Ide Bisnis Startup Teknologi Hijau: Solusi Ramah Lingkungan untuk Masa Depan', '2024-06-10'),
(22, 'Pengembangan Aplikasi Mobile untuk Bisnis: Tren dan Peluang', '2024-06-12'),
(23, 'Startup Teknologi Terbaru: Solusi AI untuk Peningkatan Produktivitas', '2024-08-07'),
(24, 'Mengembangkan Aplikasi Berbasis Blockchain: Peluang Bisnis Masa Depan', '2024-08-21'),
(25, 'Inovasi di Dunia Fintech: Bisnis Dompet Digital yang Menguntungkan', '2024-02-12'),
(26, 'Ide Bisnis IoT: Menghubungkan Perangkat untuk Kehidupan yang Lebih Cerdas', '2024-06-12'),
(27, 'Memulai Bisnis SaaS: Menyediakan Layanan Digital untuk Segala Kebutuhan', '2024-06-03'),
(28, 'Keuntungan Memulai Bisnis Marketplace Online di Era Digital', '2024-05-21'),
(29, 'Membangun Platform E-Learning: Peluang Bisnis Edukasi di Era Teknologi', '2024-04-08'),
(30, 'Bisnis Augmented Reality: Menggabungkan Dunia Nyata dan Virtual', '2024-03-07'),
(31, 'Ide Bisnis Startup Teknologi Hijau: Solusi Ramah Lingkungan untuk Masa Depan', '2024-04-08'),
(32, 'Pengembangan Aplikasi Mobile untuk Bisnis: Tren dan Peluang', '2024-04-25'),
(33, 'Bisnis Teknologi untuk Solusi Pengelolaan Proyek Berbasis Cloud', '2024-08-04'),
(34, 'Peluang Bisnis di Dunia Teknologi Keamanan: Sistem Pemantauan Canggih', '2024-07-08'),
(35, 'Mengembangkan Bisnis Teknologi di Bidang Pariwisata: Panduan Digital untuk Wisatawan', '2024-05-13'),
(36, 'Ide Bisnis Teknologi untuk Solusi Smart Home', '2024-08-29'),
(37, 'Bisnis Teknologi di Industri Periklanan: Memanfaatkan Data untuk Kampanye yang Efektif', '2024-07-23'),
(38, 'Mengembangkan Aplikasi Teknologi Finansial untuk Bisnis Kecil', '2024-05-06'),
(39, 'Peluang Bisnis Teknologi di Sektor Perbankan: Digitalisasi Layanan Keuangan', '2024-04-18'),
(40, 'Bisnis Teknologi Berbasis AR/VR: Menciptakan Pengalaman Virtual yang Mengagumkan', '2024-04-08'),
(41, 'Ide Bisnis Teknologi untuk Solusi Pengelolaan Sumber Daya Alam', '2024-02-16'),
(42, 'Mengembangkan Bisnis Teknologi di Bidang Kecerdasan Buatan', '2024-01-30'),
(43, 'Peluang Bisnis Teknologi untuk Meningkatkan Aksesibilitas', '2024-04-03'),
(44, 'Bisnis Teknologi di Bidang Manufaktur: Solusi Otomatisasi Produksi', '2024-06-12'),
(45, 'Mengembangkan Aplikasi Teknologi untuk Pengelolaan Kesehatan Mental', '2024-07-23'),
(46, 'Ide Bisnis Teknologi untuk Pengembangan Smart City', '2024-07-28'),
(47, 'Peluang Bisnis di Industri Teknologi Konstruksi: Membangun Masa Depan', '2024-06-08'),
(48, 'Bisnis Teknologi Berbasis Cloud untuk Layanan Backup Data', '2024-03-05'),
(49, 'Mengembangkan Aplikasi Teknologi untuk Peningkatan Pengalaman Pengguna', '2024-03-25'),
(50, 'Peluang Bisnis di Dunia Teknologi Pendidikan: Platform Pembelajaran Digital', '2023-11-15'),
(51, 'Bisnis Teknologi di Bidang Kecantikan: Aplikasi dan Solusi Digital', '2023-12-13'),
(52, 'Mengembangkan Solusi Teknologi untuk Peningkatan Keberlanjutan Lingkungan', '2023-12-04'),
(53, 'Peluang Bisnis Teknologi di Industri Energi Terbarukan', '2023-10-11'),
(54, 'Ide Bisnis Teknologi untuk Solusi Logistik Berbasis AI', '2023-10-17'),
(55, 'Mengembangkan Bisnis Teknologi untuk Peningkatan Pengelolaan Bisnis Retail', '2023-12-06'),
(56, 'Bisnis Teknologi di Bidang Olahraga: Solusi Digital untuk Atlet dan Pelatih', '2023-12-27'),
(57, 'Peluang Bisnis Teknologi untuk Pengembangan Ekosistem Mobil Listrik', '2024-01-08'),
(58, 'Mengembangkan Aplikasi Teknologi untuk Peningkatan Kualitas Hidup', '2023-12-15'),
(59, 'Bisnis Teknologi di Sektor Transportasi: Pengembangan Sistem Navigasi Cerdas', '2023-09-14'),
(60, 'Peluang Bisnis Teknologi di Bidang Perbankan: Layanan Keuangan Berbasis AI', '2023-11-07'),
(61, 'Mengembangkan Aplikasi Teknologi untuk Pengelolaan Stok dan Inventaris', '2023-11-07'),
(62, 'Ide Bisnis Teknologi untuk Pengembangan Ekosistem Pertanian Berkelanjutan', '2023-10-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id_news`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id_news` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
