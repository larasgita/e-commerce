-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2018 at 12:08 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `IdProduk` int(11) NOT NULL,
  `KodeProduk` varchar(8) DEFAULT NULL,
  `NamaProduk` varchar(50) DEFAULT NULL,
  `MerkProduk` varchar(30) DEFAULT NULL,
  `HargaProduk` int(10) DEFAULT NULL,
  `KetProduk` text,
  `Jumlah` int(5) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `bestseller` int(11) NOT NULL,
  `new` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`IdProduk`, `KodeProduk`, `NamaProduk`, `MerkProduk`, `HargaProduk`, `KetProduk`, `Jumlah`, `foto`, `bestseller`, `new`) VALUES
(1, '01HL01', 'Tamagohada Ultimate Mild Peeling Face Wash', 'Hada Labo', 50000, 'â€¢Kombinasi AHA/BHA dengan lembut mengikis permukaan sel kulit mati dan mengangkat kotoran dan minyak yang menyumbat pori-pori. â€¢Memperbaiki kulit kusam dan merawat tekstur kulit sehingga terlihat lebih lembut dan cerah.', 100, '01HL01.jpg', 1, 0),
(2, '01HL02', 'Shirojyun Ultimate Whitening Face Wash', 'Hada Labo', 40000, '1.	Mengangkat kotoran dan minyak dari kulit sekaligus mencerahkan. 2.	Diperkaya dengan Arbutin dan whitening Extract untuk efek pencerah ganda. 3.	Membantu membuat warna kulit lebih merata sehingga terlihat lebih cerah. 4.	Mengandung Hyaluronic Acid untuk meningkatkan kelembaban secara intensif sehingga kulit terasa tetap elastis.', 100, '01HL02.jpg', 0, 1),
(3, '01HL03', 'Gokujyun Ultimate Moisturizing Face Wash', 'Hada Labo', 40000, 'Sabun pembersih wajah, mengandung 2 jenis Hyaluronic Acid yang mampu mengangkat kotoran serta minyak di kulit wajah tanpa menyebabkan kulit menjadi kering sehingga kelembaban tetap terjaga.', 100, '01HL03.jpg', 0, 0),
(4, '01HL04', 'Gokujyun Alpha Series', 'Hada Labo', 45000, 'Terdiri dari 3 keunggulan Anti Aging; Retinol Derivate (Vitamin A), Collagen dan Improved Hyaluronic Acid, menutrisi kulit secara efektif, memudarkan garis-garis halus dan kerutan pada wajah.', 100, '01HL04.jpg', 0, 0),
(5, '02MZ05', 'Blush Me Up', 'Mizzu', 65000, 'Blusher dengan hasil natural untuk pemakaian sehari hari', 30, '02MZ05.jpg', 0, 0),
(6, '02MZ06', 'Eyelash The Iconic', 'Mizzu', 35000, 'Terbuat dari bahan alami dan lembut saat dipakai serta dapat dipakai berulang kali', 30, '02MZ06.jpg', 0, 0),
(7, '02MZ07', 'Alter Ego Contour &amp; Highlight Kit Pallete-Bana', 'Mizzu', 110000, 'Terdiri dari powder contour, powder highlighter and powder bronzer untuk menampilkan ilusi wajah lebih tirus', 30, '02MZ07.jpg', 0, 0),
(8, '02CR08', 'Sun Lover Glow Bronzing Powder', 'Catrice', 88000, 'Bronzing Powder yang lembut dan lembut dengan ultrafine, pigmen yang memantulkan sinar memastikan aksen bercahaya serta tampilan yang disamak secara halus - sepanjang tahun. Tekstur sutera yang lembut dan halus beradaptasi dengan semua warna kulit dan mengubah bubuk menjadi mutlak yang harus dimiliki di setiap tas make-up.', 30, '02CR08.jpg', 0, 0),
(9, '02CR09', 'Rock Couture Extreme Volume Mascara Lifestyleproof', 'Catrice', 72000, 'maskara kinerja tahan air memastikan XXL-volume dan air mata, olahraga dan bukti keringat. Berkat ukurannya yang ringkas dan praktis serta sikat elastomer yang halus, aplikasi yang cepat dan mudah dijamin dan bahkan bulu mata terkecil tercakup dalam warna hitam pekat. ', 30, '02CR09.jpg', 1, 0),
(10, '03BB10', 'Sunscreen Lotion Tropical Sport Extra Protection S', 'Bali Breeze', 176000, 'Sunscreen halal tanpa parabean untuk melindungi kulit anda dari sinar uv', 50, '03BB10.jpg', 0, 0),
(11, '03BF11', 'Baby Foot Smoothing Gel 30 gr', 'Baby Foot', 100500, 'Baby Foot Smoothing Gel a smoothing gel for Baby Foot that can be used after use Baby Foot until the peeling procedure is completely done.', 50, '03BF11.jpg', 1, 1),
(12, '04CL12', 'Dry Shampoo Exotic', 'Colab Dry Shampoo', 148000, 'COLAB Dry Shampoo membantu mengurangi dan menyerap minyak berlebih pada rambut dan kulit kepala.  Mengunakan formula khusus, COLAB Dry Shampoo TIDAK meninggalkan serbuk putih seperti merk dry shampoo lain dan di sebut Invisible Formula Dry Shampoo.', 30, '04CL12.jpg', 0, 1),
(13, '05SH13', 'Men Moisturizing Emulsion', 'Shiseido', 420000, 'A creamy, quick-absorbing emulsion that minimizes the appearance of fine lines and protects against environmental stress and dryness. By delivering exceptional moisture and comfort to skin, it counteracts and soothes razor burn and roughness, leaving skin feeling incredibly smooth.', 30, '05SH13.jpg', 0, 1),
(14, '05SH14', 'Men Moisturizing Recovery Cream', 'Shiseido', 600000, 'This moisturizing cream is immediately effective on rough skin due to dryness and daily damage caused by shaving. Generously hydrates skin with a smooth, comforting texture for a vital, healthy-looking complexion. Preserves moisture levels in skin for 24 hours. Protects against environmental stress.', 20, '05SH14.jpg', 0, 0),
(15, '02KL15', 'Pro Palette', 'Klara', 300000, 'A revolution in eyeshadow. Create soft neutral glam or intense and vibrant looks with these highly pigmented versatile palettes filled with hues of cream, brown, bronze, purple and orange. Our buttery soft matte and shimmer formulas offer incredible colour payoff whilst blending out seamlessly!', 30, '02KL15.jpg', 0, 0),
(16, '01KL16', 'Dragons Blood Face Mask', 'Klara', 180000, 'Dragonâ€™s Blood is a natural resin sourced from an Amazonian tree, also known as Sangre de drago or Blood of the Dragonâ€. It is extracted from the Croton Lechleri tree that grows in the Amazonian regions of South America. Dragonâ€™s Blood sap is a strong antioxidant that stimulates cellular renewal and the repair of damaged tissue.', 30, '01KL16.jpg', 0, 0),
(17, '02CC17', 'Matte Lip Cream- Peanut', 'Candy Color', 89000, 'Matte Lip Cream- Gummy Bear', 50, '02CC17.jpg', 1, 0),
(18, '03ER18', 'Erhalogy Hydrating Body Wash', 'Erha', 91000, 'Hydrating Body Wash diformulasikan secara khusus untuk membantu menjaga kelembapan dan kesehatan kulit, terutama untuk kulit yang cenderung kering.', 50, '03ER18.jpg', 0, 0),
(19, '03ER19', 'Erhalogy Brulief Skin Restoring Cream', 'Erha', 75500, 'Krim untuk mencegah, mengurangi serta mengatasi purpura dan hematoma sekaligus menjaga kelembapan dan elastisitas kulit.', 50, '03ER19.jpg', 0, 0),
(20, '02ER20', 'Erha 21 Acne Care Lab Face Powder', 'Erha', 89000, 'Bedak tabur yang sangat ringan ini dirancang khusus untuk jenis kulit berjerawat dan sangat berminyak. Efektif meratakan warna kulit wajah, menyerap minyak berlebih sekaligus membantu mencegah timbulnya jerawat karena mengandung talcum serta bahan antiseptik. Selain menjaga sistem pertahanan kulit, Acne Face Powder juga berfungsi sebagai tabir surya dan pelembab yang melindungi kulit dari bahaya sinar matahari UVA dan UVB.', 50, '02ER20.jpg', 0, 0),
(21, '02CC21', 'Matte Lip Cream- Gummy Bear', 'Candy Color', 89000, 'Light and matte, soft and airy. The yummy cream will melts in your lips and sets almost instantly to a beautiful matte finish that lasts. Enriched with Vitamin E, antioxidants, and UV Filter. Vegan, Cruelty Free. Made with love.', 50, '02CC21.jpg', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`IdProduk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `IdProduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
