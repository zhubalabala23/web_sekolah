-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Okt 2023 pada 11.20
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id`, `foto`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 'galeri1698516949.jpg', 'Kunjungan Industri Yogjakarta', '2023-10-26 15:13:30', '2023-10-29 01:15:49'),
(3, 'galeri1698517014.jpg', 'Wisuda Angkatan 2019', '2023-10-28 18:16:54', NULL),
(4, 'galeri1698517851.jpg', 'Upacara Kemerdekaan 17 Agustus', '2023-10-28 18:30:51', '2023-10-29 17:19:08'),
(5, 'galeri1698567442.jpg', 'Ujian Sertifikasi BNSP Jurusan TKJ', '2023-10-29 08:17:22', NULL),
(6, 'galeri1698567791.jpg', 'Pembukaan Kurikulum Fiber Optik', '2023-10-29 08:23:11', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id`, `judul`, `keterangan`, `gambar`, `created_at`, `updated_at`, `created_by`) VALUES
(3, 'Rapat Guru', 'membawa laptop untuk semua guru pengajar', 'informasi1698336163.jfif', '2023-10-26 16:02:43', '2023-10-29 01:00:21', 2),
(4, 'Libur Natal', 'Tersedia waktu istirahat panjang untuk merayakan liburan Natal! Nikmati momen spesial bersama keluarga dan teman-teman terdekat Anda. Kami mengingatkan untuk tetap berhati-hati dan menjaga keselamatan. Selamat liburan Natal!', 'informasi1698516182.jpg', '2023-10-28 18:03:02', '2023-10-29 01:03:22', 2),
(5, 'Olimpiade Mikrotik', 'Sehubungan dengan adanya lomba mikrotik nasional, untuk perwakilan kelas 12 smk TKJ diwajibkan 3 siswa untuk mewakili lomba tersebut yang diadakan di kota Surabaya. hubungi pak rizal segera jika ingin langsung mendaftar !!', 'informasi1698516476.jpg', '2023-10-28 18:07:56', '2023-10-29 01:24:32', 2),
(6, 'Lomba Competitive Programming', 'Telah dibuka lomba competitive programming yang diadakan oleh PT indonesia pintar id, jika ada dari siswa/siswi yang ingin berpartisipasi dalam lomba ini bisa langsung mengscan barcode yang telah tersedia di papan pengumuman sekolah.', 'informasi1698516784.jpg', '2023-10-28 18:13:04', '2023-10-29 01:13:45', 2),
(7, 'Lowongan Ippi Mart', 'Telah dibutuhkan 1 orang kasir untuk melayani penjualan barang di ippi mart (terbuka untuk siswa/siswi yang membutuhkan PKL).', 'informasi1698517327.jpg', '2023-10-28 18:22:07', NULL, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama`, `keterangan`, `gambar`, `created_at`, `updated_at`) VALUES
(8, 'Otomatisasi Tata Kelola Dan Perkantoran ', 'Jurusan perkantoran adalah bidang studi yang menekankan pada pengetahuan dan keterampilan yang diperlukan untuk bekerja di lingkungan kantor. ', 'jurusan1698514344.jpg', '2023-10-24 12:49:30', '2023-10-29 01:18:04'),
(9, 'Akuntansi Dan Keuangan Lembaga ', 'Jurusan Akuntansi Keuangan adalah disiplin yang fokus pada pemahaman dan pengelolaan informasi keuangan dalam sebuah entitas, seperti perusahaan atau organisasi. ', 'jurusan1698514258.jpg', '2023-10-24 12:51:00', '2023-10-29 01:17:40'),
(10, 'Teknik Komputer Jaringan', 'Jurusan TKJ adalah singkatan dari Teknik Komputer dan Jaringan. Jurusan ini fokus pada pengembangan dan manajemen sistem komputer serta jaringan komunikasi data. ', 'jurusan1698514386.jfif', '2023-10-24 12:59:49', '2023-10-29 01:17:19'),
(11, 'Bisnis Daring Dan Pemasaran ', 'Jurusan BDP merupakan singkatan dari Bisnis Digital dan Pemasaran. Jurusan ini menekankan pada pemahaman tentang pemasaran dan bisnis dalam era digital. ', 'jurusan1698514836.jpg', '2023-10-28 17:34:26', '2023-10-29 01:17:30'),
(12, 'Teknik Kendaraan Ringan ', 'Jurusan TKR merupakan singkatan dari Teknik Kendaraan Ringan. Jurusan ini berfokus pada pemahaman dan penerapan teknologi terkait kendaraan bermotor, terutama kendaraan roda empat dan kendaraan bermesin lainnya. ', 'jurusan1698514643.jpg', '2023-10-28 17:35:12', '2023-10-29 01:18:17'),
(13, 'Rekayasa Perangkat Lunak', 'Jurusan RPL merupakan singkatan dari Rekayasa Perangkat Lunak. Jurusan ini menekankan pada pengembangan perangkat lunak, termasuk analisis, perancangan, pengembangan, pengujian, dan pemeliharaan perangkat lunak.', 'jurusan1698514554.jpg', '2023-10-28 17:35:54', '2023-10-29 01:18:29'),
(14, 'Multimedia', 'Jurusan multimedia merupakan disiplin yang berfokus pada pengembangan dan produksi konten digital yang meliputi elemen-elemen seperti gambar, suara, video, animasi, dan teks. ', 'jurusan1698514956.jpg', '2023-10-28 17:38:52', '2023-10-29 01:18:38'),
(15, 'Fiber Optik', 'Jurusan fiber optics merupakan bidang studi yang berfokus pada teknologi yang berkaitan dengan transmisi data dan informasi melalui serat optik. Dalam jurusan ini.', 'jurusan1698514779.jpg', '2023-10-28 17:39:39', '2023-10-29 01:17:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `logo` varchar(50) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `tentang_sekolah` text NOT NULL,
  `foto_sekolah` varchar(50) NOT NULL,
  `google_maps` text NOT NULL,
  `nama_kepsek` varchar(50) NOT NULL,
  `foto_kepsek` varchar(50) NOT NULL,
  `sambutan_kepsek` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama`, `email`, `telepon`, `alamat`, `logo`, `favicon`, `tentang_sekolah`, `foto_sekolah`, `google_maps`, `nama_kepsek`, `foto_kepsek`, `sambutan_kepsek`, `created_at`, `updated_at`) VALUES
(1, 'SMK YP IPPI ', 'smkypippischool@gmail.com', '(021) 6318984', 'Jl. Petojo Bar. IV No.2, RT.4/RW.4, Petojo Utara, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10130', 'logo-sekolah.jpg', 'favicon-sekolah.jpg', 'Kami Mengucapkan Selamat Datang Di Website Kami SMP - SMK - SMA IT YP IPPI Jakarta Yang Saya Tujukan Untuk Seluruh Unsur Pimpinan, Guru, Karyawan Dan Siswa Serta Khalayak Umum Guna Dapat Mengakses Seluruh Informasi Tentang Segala Profil, Aktifitas/Kegiatan Serta Fasilitas Sekolah Kami.', 'sekolah1698568709.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.7432186977735!2d106.80532637585202!3d-6.1651325104219525!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f676d4a76c7b%3A0x448d26ed36bc2dc!2sSMK%20Yp%20Ippi%20Petojo!5e0!3m2!1sid!2sid!4v1698569180475!5m2!1sid!2sid', 'Wilson Louis S.ss', 'foto-kepsek.jpg', 'Dengan Hormat saya kepala sekolah baru untuk tahun ajar 2023, Semangat terus dalam menuntut ilmu jangan pernah bosan dalam mencari ilmu,  kelak ilmu yang kamu pelajari disini akan bermanfaat di masa yang akan datang, have a nice day.\r\n', '2023-10-28 10:42:43', '2023-10-29 16:54:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('Super Admin','Admin') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `password`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Khalid', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2023-10-19 13:50:36', '2023-10-29 14:08:31'),
(2, 'Tubagus', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2023-10-19 13:51:06', '2023-10-29 14:08:42'),
(6, 'Rama Febriansyah', 'admin3', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2023-10-21 13:56:37', NULL),
(8, 'Niragi Suguru', 'admin4', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2023-10-21 14:43:40', NULL),
(10, 'Naufal Rafif ', 'admin69', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2023-10-22 06:41:50', '2023-10-22 14:02:07'),
(11, 'O\'briann', 'sa', 'e10adc3949ba59abbe56e057f20f883e', 'Super Admin', '2023-10-22 08:25:20', '2023-10-29 14:08:04');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
