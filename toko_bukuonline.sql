-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2015 at 01:20 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `toko_bukuonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'arief', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `kd_barang` char(5) NOT NULL,
  `nm_barang` varchar(100) NOT NULL,
  `harga_modal` int(12) NOT NULL,
  `harga_jual` int(12) NOT NULL,
  `stok` int(4) NOT NULL,
  `keterangan` text NOT NULL,
  `file_gambar` varchar(100) NOT NULL,
  `kd_kategori` char(4) NOT NULL,
  PRIMARY KEY (`kd_barang`),
  KEY `kd_kategori` (`kd_kategori`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_barang`, `nm_barang`, `harga_modal`, `harga_jual`, `stok`, `keterangan`, `file_gambar`, `kd_kategori`) VALUES
('B0001', 'Barbie In Rock &acute;n Royals  Buku Cerita & Mewarnai', 18000, 36000, 20, '<div class="product_description">\r\n<p>"Serunya Persahabatan"</p>\r\n<p>Gunakan pensil warnamu yang paling cerah untuk memastikan Putri Courtney dan bintang pop Erika tampil cemerlang di panggung! Kamp Kerajaan harus menggabungkan kekuatan dengan Kamp Pop untuk suatu pertunjukan akbar dalam petualangan terbaru Barbie.</p>\r\n</div>', 'B0001.Barbie-in-Rock-n-Royals--Buku-Cerita-&-Mewarnai.jpg', 'K001'),
('B0002', 'Inspirasi Desain Hunian Modern', 60000, 98000, 20, '<p>Langkah pertama yang perlu dilakukan dalam persiapan membangun sebuah hunian adalah melakukan perencanaan dengan matang dari teliti. Perencanaan merupakan sebuah tahap awal dan terpenting dalam proses pembangunan hunian, karena jika perencanaan dilakukan dengan tepat, maka akan menghasilkan sebuah yang fungsional,kuat,hemat/ekonomis dan indah (estetis).</p>', 'B0002.Inspirasi-Desain-Hunian-Modern.jpg', 'K002'),
('B0003', 'Pandai Berbahasa Inggris Ala Kampung Inggris Pare', 30000, 50000, 15, '<p>Pernah mendengar tentang belajar bahasa Inggris di Kampung Inggris Pare? Jika sudah tetapi tidak memiliki kesempatan ke sana, buku ini adalah jawabannya! Kampung Inggris Pare adalah tempat yang sangat terkenal untuk belajar bahasa Inggris di Kediri, Jawa Timur, dan buku ini menyajikan konsep Pare sebagai bentuk pengalaman penulis selama belajar di sana. Pada buku ini akan dibahas Parts of Speech, yang mempelajari kelas kata, fungsi kata, dan penyusunan kata. Di dalamnya juga terdapat berbagai materi seperti satuan gramatikal bahasa Inggris (letter &ndash; sentence), pola-pola frase (noun phrase &ndash; prepositional phrase), penggunaan to dan for pada ditransitive verbs, dan sebagainya. Di samping itu, buku ini dilengkapi dengan latihan beserta kunci jawabannya serta anotasi dan apendiks untuk memperluas pengetahuan para pembaca.<br /> <br /> &ldquo;Buku ini menjelaskan dengan baik apa itu Parts of Speech. Ditambah lagi dengan materi yang jarang sekali dibahas di buku-buku grammar pada umumnya, membuat buku ini sangat recommended.&rdquo;<br /> - Mr. Andre, owner ELFAST, Pare </p>', 'B0003.Pandai-Berbahasa-Inggris-ala-Kampung-Inggris-Pare.jpg', 'K003'),
('B0004', 'Bung Hatta Di Mata Tiga Putrinya', 25000, 60000, 15, '<div class="product_description">\r\n<p>Bung Hatta bagaikan lentera keluarga bagi tiga putrinya. Penuntun, pembimbing, pelindung, sekaligus menanamkan pendidikan karakter yang tumbuh hingga saat ini.</p>\r\n<p>Bung Hatta yang ditulis sebagaimana adanya. Ada cerita lucu, gembira, menyebalkan bahkan cerita sedih.</p>\r\n</div>', 'B0004.Bung-Hatta-di-Mata-Tiga-Putrinya.jpg', 'K004'),
('B0005', 'Sustainable Financing', 75000, 14000, 20, '<p>Buku ini menyajikan benang merah teori pembangunan ekonomi dengan konsep pembangunan berkelanjutan yang ditransformasikan pada sektor industri jasa keuangan, atau dikenal dengan istilah sustainable financing. Dalam buku ini dijabarkan konsep dasar praktik-praktik sustainable financing pada masing-masing sektor industri jasa keuangan, baik industri Perbankan, Pasar Modal dan industri Keuangan NonBank, beserta kebijakan-kebijakan yang telah disepakati baik nasional maupun internasional.<br /> <br /> &ldquo;Perpaduan antara teori ekonomi pembangunan sampai munculnya konsep pembangunan berkelanjutan telah berhasil dikemas dalam buku ini. Pentingnya penyelenggaraan pembiayaan berkelaniutan yang diselenggarakan oleh seluruh industri jasa keuangan menjadi topik menarik dalam rangka mendukung terciptanya pembangunan berkelanjutan. Buku ini sangat layak untuk dijadikan referensi bagi pelaku industri jasa keuangan, praktisi dan mahasiswa khususnya Jurusan Ekonomi, Keuangan, dan Bisnis.&rdquo;<br /> Prof. Dr. Bunasor Sanim, Guru Besar Emeritus Institut Pertanian Bogor;<br /> Mantan Komisaris Utama Bank Rakyat Indonesia </p>', 'B0005.Sustainable-Financing.jpg', 'K005'),
('B0006', 'Ensiklopedia Tokoh Muslim', 100000, 200000, 23, '<div class="product_description">\r\n<p>Perjalanan sejarah Islam banyak diwarnai oleh sepak terjang sosok manusia-manusia berpengaruh yang memberi kita semesta inspirasi. Saat mendengar namanya, kita jadi ingin tahu dan belajar tentang apa dan bagaimana mereka bagi kehidupan.</p>\r\n<p>&nbsp;</p>\r\n<p>Ensiklopedia ini menghadirkan deretan sosok tokoh-tokoh Muslim berpengaruh yang pernah ada dalam sejarah. Kisah manusia teragung, Muhammad Saw.; Muhammad Ali, sang Legenda Tinju sepanjang masa; atau Soekarno, sang Proklamator; disajikan lengkap secara alfabetis dari A sampai Z, untuk semakin memudahkan Anda membaca ensiklopedia ini.</p>\r\n<p>&nbsp;</p>\r\n<p>Tidak hanya itu, sebagai sebuah buku sejarah, ensiklopedia ini juga menyajikan berbagai keunggulan, di antaranya:</p>\r\n<ul>\r\n<li>Menghadirkan tidak kurang dari 1.000 tokoh Muslim di seluruh dunia.</li>\r\n<li>Menggunakan dua macam penanggalan, Masehi dan Hijriah.</li>\r\n<li>Menyajikan gambaran tokoh yang akurat dan tuntas dengan menggunakan situs Hegira-Gregorian Converter.</li>\r\n</ul>\r\n</div>\r\n<p>&nbsp;</p>', 'B0006.Ensiklopedia-Tokoh-Muslim.jpg', 'K006'),
('B0009', 'Gaya Jilbab Hijaber Untuk Sport', 30000, 70000, 12, '<p>Rasullullah sangat menganjurkan umat muslim agar selalu menjaga kesehatan tubuhnya. Agar dapat beribadah dengan baik dan melakukan kewajibannya dengan maksimal. Karena itu kini semakin banyak muslimah yang mulai sadar untuk hidup sehat dengan berolahraga, dan makan makanan yang sehat. Mencari gaya hijab yang nyaman dikenaka nsaat berolahraga bagi muslimah perlu uji coba<br /> secara terus menerus, hingga menemukan gaya atau style yang cocok. Buku ini menampilkan ide gaya busana hijab yang pas untuk berolahraga. Tentu saja gaya yang sederhana. Disertai tips memilih olahraga yang cocok untuk muslimah, dan juga persiapan sebelum olahraga. Mudah dan simpel untuk dipraktikkan. </p>', 'B0009.Gaya-Jilbab-Hijaber-untuk-Sport.jpg', 'K008'),
('B0010', 'Bootstrap Design Framework', 20000, 48500, 20, '<p>Anda ingin menyelesaikan sebuah proyek website namun terkendala waktu? Anda kurang piawai atau tidak ingin disibukkan dengan pembuatan desain dasar, teknik pewarnaan, dan tata layout web? Gunakan saja Bootstrap! Bootstrap adalah paket aplikasi siap pakai untuk membuat front-end sebuah website. Melalui kode HTML, CSS, dan Javascript yang ada di Bootstrap, Anda cukup merakit elemen tampilan web secara mudah dan cepat dengan hasil yang rapi, konsisten, powerful, dan mobile-friendly. Anda tinggal fokus di sisi coding aplikasi web dan pengerjaan konten webnya. </p>', 'B0010.Bootstrap-Design-Framework.jpg', 'K009'),
('B0008', 'Mastering Composition', 70000, 120000, 15, '<p>Apa saja yang menyebabkan sebuah foto dikatakan bagus? Penulis dan fotografi terkenal Richard Garvey Williams percaya bahwa kesuksesan sebuah foto itu terletak pada kombinasi empat faktor yaitu: subjek yang sangat berpengaruh, komposisi yang dinamis,penggunaan cahaya yang efektif, dan yang mungkin paling penting bahwa gambar mampu memengaruhi emosi orang yang melihatnya.</p>', 'B0008.Mastering-Composition.jpg', 'K007'),
('B0011', 'Membuat Aneka Macam Situs Jual Beli Dengan Wordpress', 20000, 43800, 20, '<p>Sekarang ini situs jual beli sangat beragam, dari mulai toko online shopping cart biasa hingga toko e-marketplace seperti OLX, Bukalapak, dan sebagainya. Buku ini membahas cara menggunakan CMS WordPress terbaru untuk membuat berbagai macam situs jual beli.<br /> <br /> Melalui buku ini, Anda akan dipandu mulai dari awal. Mulai dari mempersiapkan web hosting dan WordPress hingga membuat berbagai jenis situs jual beli sesuai kebutuhan Anda. </p>', 'B0011.Membuat-Aneka-Macam-Situs-Jual-Beli-dengan-Wordpress.jpg', 'K009'),
('B0012', 'Belajar Coding Android Bagi Pemula', 21000, 48900, 20, '<p>Membantu Anda dari dasar dalam pembuatan program Android memakai bahasa pemrograman Java. Pembahasan dimulai dari membuat program sederhana dan mudah hingga pembuatan program database. Anda akan dipandu bagaimana mempersiapkan belajar mulai dari menginstal perangkat lunak hingga membuat program Android. Dalam buku ini juga, Anda dipandu bagaimana memasukkan program Android ke media peralatan, seperti Handphone atau Smartphone.<br /> <br /> Buku ini dapat digunakan oleh pembaca yang baru pertama kali belajar Android. Pembahasan disusun secara sistematis, mudah dan lengkap. Sebaiknya Anda juga membeli buku penulis lainnya sebagai penunjang belajar, yaitu Semua Bisa Menjadi Programmer Android - Basic dan Semua Bisa Menjadi Programmer Android - Case Study.<br /> <br /> Pembahasan dalam buku mencakup:<br /> # Profil Android<br /> # Software yang Digunakan<br /> # Widget Layout<br /> # Menyisipkan Gambar Android<br /> # Activity Android<br /> # Kotak Dialog dan Program Menghitung Rumus<br /> # Database SQLite dan MySQL<br /> # Membuat APK Android<br /> # Upload ke Handphone<br /> # Program Login<br /> Buku ini dapat dipakai untuk Praktisi, Karyawan dan Mahasiswa, yang ingin belajar Android dari awal. </p>', 'B0012.Belajar-CODING-Android-bagi-Pemula.jpg', 'K009'),
('B0013', 'Kekuatan Pikiran', 22000, 55000, 20, '<div class="product_description">\r\n<p>Apakah Anda mengendalikan pikiran atau pikiran yang mengendalikan Anda?</p>\r\n<p>Pikiran kita menciptakan realitas. Setiap hari dengan berbagai cara, kualitas berpikir Anda menentukan kualitas hidup Anda. Masa lalu, masa kini dan masa depan Anda dibentuk oleh pikiran Anda. Ketika Anda mengubah cara berpikir, hidup Anda akan berubah. Pikiran Anda benar-benar dapat mendorong Anda untuk meraih kesuksesan atau sebaliknya, menggagalkan Anda. Kapanpun Anda ingin dapat lebih banyak mengingat dan lebih sedikit merasa khawatir, kendalikan amarah Anda atau bebaskan ambisi Anda. Selalu ada cara untuk mengubah hidup Anda menjadi lebih baik dengan cara mengubah cara berpikir Anda. Dalam buku ini, James Borg menunjukkan kepada Anda bagaimana mengubah cara berpikir dan berperilaku Anda, selamanya. Pikiran menimbilkan efek dengan berbagai cara, buku Kekuatan Pikiran ini akan menunjukkan kepada anda cara mengendalikan pikiran Anda. Dengan langkah sederhana, Anda dapat mempelajari bagaimana membebaskan diri dari pikiran yang<br /> membatasi diri Anda dan menggantinya dengan pikiran yang lebih baik.</p>\r\n</div>', 'B0013.Kekuatan-Pikiran.jpg', 'K010');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `kd_kategori` char(4) NOT NULL,
  `nm_kategori` varchar(100) NOT NULL,
  PRIMARY KEY (`kd_kategori`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kd_kategori`, `nm_kategori`) VALUES
('K001', 'Anak-Anak'),
('K002', 'Arsitektur & Design Interior'),
('K003', 'Bahasa & Kamus'),
('K004', 'Biografi'),
('K005', 'Bisnis Manajemen & Keuangan'),
('K006', 'Ensiklopedia'),
('K007', 'Fotografi'),
('K008', 'Fashion & Beauty'),
('K009', 'Komputer'),
('K010', 'Psikologi');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE IF NOT EXISTS `konfirmasi` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `no_pemesanan` char(5) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `jumlah_transfer` int(12) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `no_pemesanan` (`no_pemesanan`,`tanggal`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id`, `no_pemesanan`, `nm_pelanggan`, `jumlah_transfer`, `keterangan`, `tanggal`) VALUES
(1, 'PS000', 'Rahmat Hidayat', 672632, 'Sudah Ditansfer tadi siang', '2015-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `kd_pelanggan` char(6) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `kelamin` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `username` char(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tgl_daftar` date NOT NULL,
  PRIMARY KEY (`kd_pelanggan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`kd_pelanggan`, `nm_pelanggan`, `kelamin`, `email`, `no_telepon`, `username`, `password`, `tgl_daftar`) VALUES
('P00001', 'Arief Rahman Hakim', 'Laki-laki', 'arif13011995@gmail.com', '08815704374', 'arif13011995', 'd04803e7e9634d6352000f5aaef9b9e6', '2015-11-22'),
('P00002', 'Rahmat Hidayat', 'Laki-laki', 'rahmathidayat112@gmail.com', '082217301632', 'rahmathidayat', 'bf7def6df5697beab36fbd94fa48e9ed', '2015-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `no_pemesanan` char(8) NOT NULL,
  `kd_pelanggan` char(6) NOT NULL,
  `tgl_pemesanan` date NOT NULL,
  `nama_penerima` varchar(100) NOT NULL,
  `alamat_lengkap` varchar(200) NOT NULL,
  `kd_provinsi` char(3) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `kode_pos` char(5) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `status_bayar` enum('Pesan','Lunas','Batal') NOT NULL,
  PRIMARY KEY (`no_pemesanan`),
  KEY `kd_pelanggan` (`kd_pelanggan`,`kd_provinsi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`no_pemesanan`, `kd_pelanggan`, `tgl_pemesanan`, `nama_penerima`, `alamat_lengkap`, `kd_provinsi`, `kota`, `kode_pos`, `no_telepon`, `status_bayar`) VALUES
('PS000001', 'P00001', '2015-11-22', 'Arief Rahman Hakim', 'aaaaaaa', 'P01', 'bukittinggi', '26381', '08815704374', 'Pesan'),
('PS000002', 'P00001', '2015-11-29', 'sdfg', 'gfdsgh', 'P01', 'sdfg', 'sgdfg', '24356', 'Pesan'),
('PS000003', 'P00002', '2015-12-09', 'Rahmat Hidayat', 'jl Soekarno Hatta No45 Bengkulu', 'P05', 'Bengkulu', '12345', '082217301632', 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_item`
--

CREATE TABLE IF NOT EXISTS `pemesanan_item` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `no_pemesanan` char(8) NOT NULL,
  `kd_barang` char(5) NOT NULL,
  `harga` int(12) NOT NULL,
  `jumlah` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `no_pemesanan` (`no_pemesanan`,`kd_barang`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pemesanan_item`
--

INSERT INTO `pemesanan_item` (`id`, `no_pemesanan`, `kd_barang`, `harga`, `jumlah`) VALUES
(1, 'PS000001', 'B0001', 36000, 1),
(2, 'PS000002', 'B0001', 36000, 1),
(3, 'PS000003', 'B0006', 200000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE IF NOT EXISTS `provinsi` (
  `kd_provinsi` char(3) NOT NULL,
  `nm_provinsi` varchar(100) NOT NULL,
  `biaya_kirim` int(12) NOT NULL,
  PRIMARY KEY (`kd_provinsi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`kd_provinsi`, `nm_provinsi`, `biaya_kirim`) VALUES
('P01', 'Sumatera Barat', 25000),
('P02', 'Aceh Darussalam', 33000),
('P03', 'Bali', 20000),
('P04', 'Banten', 13000),
('P05', 'Bengkulu', 24000),
('P06', 'Gorontalo', 48000),
('P07', 'Jakarta', 10000),
('P08', 'Jambi', 20000),
('P09', 'Jawa Barat', 7000),
('P10', 'Jawa Tengah', 16000),
('P11', 'Jawa Timur', 18000),
('P12', 'Jogjakarta', 16000),
('P13', 'Kalimantan Barat', 28000),
('P14', 'Kalimantan Selatan', 28000),
('P15', 'Kalimantan Tengah', 28000),
('P16', 'Kalimantan Timur', 30000),
('P17', 'Kalimantan Utara', 39000),
('P18', 'Bangka Belitung', 25000),
('P19', 'Kep Riau', 25000),
('P20', 'Lampung', 19000),
('P21', 'Maluku', 51000),
('P22', 'Maluku Utara', 41000),
('P23', 'Nusa Tenggara Barat', 28000),
('P24', 'Nusa Tenggara Timur', 39000),
('P25', 'Papua', 77000),
('P26', 'Papua Barat', 102000),
('P27', 'Riau', 25000),
('P28', 'Sulawesi Barat', 47000),
('P29', 'Sulawesi Selatan', 26000),
('P30', 'Sulawesi Tengah', 36000),
('P31', 'Sulawesi Tenggara', 36000),
('P32', 'Sulawesi Utara', 41000),
('P33', 'Sumatera Selatan', 20000),
('P34', 'Sumatera Utara', 25000);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_keranjang`
--

CREATE TABLE IF NOT EXISTS `tmp_keranjang` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `kd_barang` char(5) NOT NULL,
  `harga` int(12) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `kd_pelanggan` char(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kd_barang` (`kd_barang`,`kd_pelanggan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tmp_keranjang`
--

INSERT INTO `tmp_keranjang` (`id`, `kd_barang`, `harga`, `jumlah`, `tanggal`, `kd_pelanggan`) VALUES
(6, 'B0001', 36000, '1', '2015-11-29', 'P00001');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
