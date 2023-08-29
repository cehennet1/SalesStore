-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 24 Haz 2022, 14:57:53
-- Sunucu sürümü: 10.4.22-MariaDB
-- PHP Sürümü: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `db_enes_olcar_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_kayitt`
--

CREATE TABLE `tbl_kayitt` (
  `kul_id` int(11) NOT NULL,
  `kul_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kul_soyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kul_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kul_adres` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kul_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kul_kulad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kul_sifre` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_kullanici_kayit`
--

CREATE TABLE `tbl_kullanici_kayit` (
  `kul_id` int(11) NOT NULL,
  `kul_ismi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kul_soyismi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kul_tel` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `kul_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kul_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kul_adi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kul_sifresi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kul_tarih` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tbl_kullanici_kayit`
--

INSERT INTO `tbl_kullanici_kayit` (`kul_id`, `kul_ismi`, `kul_soyismi`, `kul_tel`, `kul_adres`, `kul_mail`, `kul_adi`, `kul_sifresi`, `kul_tarih`) VALUES
(1, 'Enes ', 'Olçar', '05362121212', 'Kastamonu/Tosya', 'olcar@gmail.com', 'olcarenes37', 'olcar373701', '0000-00-00 00:00:00'),
(2, 'Vedat', 'Can', '05387894561', 'Kastamonu/Tosya', 'vedatcan@gmail.com', 'calar123', '123calar123', '0000-00-00 00:00:00'),
(3, 'Enes ', 'Ünal', '05486987542', 'İstanbul/Küçükçekmece', 'unal@gmail.com', 'enesUnal', '1unal2', '0000-00-00 00:00:00'),
(4, 'Hulusi', 'Çıkrıkçı', '05398647591', 'Karabük/Safranbolu', 'Hulusi78@gmail.com', 'hulusi011', 'cıkrıkcı.78', '0000-00-00 00:00:00'),
(5, 'Eren', 'Çetin', '05354251523', 'İstanbul/Bağcılar', 'cetin34@gmail.com', 'c4tin34', '34.eren.34', '0000-00-00 00:00:00'),
(6, 'Ahmet', 'Keskin', '05487951275', 'İstanbul/Zeytinburnu', 'keskin34@gmail.com', 'keskin334', 'eren.keskin.123', '0000-00-00 00:00:00'),
(7, 'Recep', 'Kaya', '05312645879', 'Amasya/Merkez', 'kaya@gmail.com', 'recepKaya00', 'recep.kaya.0.&', '0000-00-00 00:00:00'),
(8, 'Yunus', 'Yiğit', '05344651234', 'Kastamonu/Merkez', 'yigit37@gmail.com', 'YunusYigitt', 'yigitYunus*1*', '0000-00-00 00:00:00'),
(9, 'Mehmet', 'Uzun', '05332547842', 'Samsun/Merkez', 'uzun55@gmail.com', 'MehmetUzun', 'Uzun0&Mehmet', '0000-00-00 00:00:00'),
(10, 'Ramazan', 'Torun', '05465212143', 'Çorum/İskilip', 'torun19@gmail.com', 'Torunn19', 'ramazaNN019', '0000-00-00 00:00:00'),
(11, 'Can', 'Yegen', '05396512436', 'Samsun/Merkez', 'yegen55@gmail.com', 'Can_Yegen55', 'C55.yegen0', '0000-00-00 00:00:00'),
(12, 'Selman', 'Çürük', '05468748965', 'Kastamonu/Merkez', 'curuk3737@gmail.com', 'Selooo37', 'CuruKSelm4n', '0000-00-00 00:00:00'),
(13, 'Talha', 'Bacak', '05314685252', 'Çankırı/Merkez', 'bacak18@gmail.com', 'TalhaDerler', 'BacakKktalh4...', '0000-00-00 00:00:00'),
(14, 'dhgfyhdf', 'dfghdfg', 'dfhgdfhg', 'hdfghdfg', 'hdfhgdfhg', 'sdfgsdfgs', 'sdfgsdfg', '2022-06-23 16:07:51'),
(15, 'huseyin', 'yarasir`kayit_tarih`', 'asdfasd', 'asdfasf', 'asdfasf', 'hsyn', 'hsyn', '2022-06-23 16:08:40'),
(16, 'kadir rezan', 'geçeroğlu', '05459223514', 'diyarbakır', 'rezan@gmail.com', 'rezan21', '123', '2022-06-23 16:26:12'),
(18, 'enes', 'olçar', '05454541014', 'kastamonu', 'enes@gmail.com', 'olcar12', '123', '2022-06-24 12:50:22');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_marka`
--

CREATE TABLE `tbl_marka` (
  `marka_id` int(11) NOT NULL,
  `marka_adi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `marka_seri_no` int(20) NOT NULL,
  `urun_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tbl_marka`
--

INSERT INTO `tbl_marka` (`marka_id`, `marka_adi`, `marka_seri_no`, `urun_id`) VALUES
(1, 'Acer', 11, 1),
(2, 'Asus', 12, 2),
(3, 'Casper', 13, 3),
(4, 'Monster', 14, 4),
(5, 'Lenovo', 15, 5),
(6, 'HP', 16, 6),
(7, 'Hometech', 17, 7),
(8, 'Huawei', 18, 8),
(9, 'Apple', 19, 9),
(10, 'Dell', 20, 10),
(11, 'Kingston', 21, 11),
(12, 'KIOXIA', 22, 12),
(13, 'Geforce', 23, 13),
(14, 'Nvıdıa', 24, 14),
(15, 'Geforce', 25, 15),
(16, 'Kingston', 26, 16),
(17, 'Corsair', 27, 17);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_model`
--

CREATE TABLE `tbl_model` (
  `model_id` int(11) NOT NULL,
  `mod_adi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `mod_seri_no` int(20) NOT NULL,
  `urun_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tbl_model`
--

INSERT INTO `tbl_model` (`model_id`, `mod_adi`, `mod_seri_no`, `urun_id`) VALUES
(1, 'Nitro 5', 11, 1),
(2, 'Rog Strix', 12, 2),
(3, 'Excalibur G770', 13, 3),
(4, 'Abra A5', 14, 4),
(5, 'Ideapad 1', 15, 5),
(6, 'Omen 17', 16, 6),
(7, 'Alfa C', 17, 7),
(8, 'MateBook D15', 18, 8),
(9, 'MacBook Air', 19, 9),
(10, 'Vostro', 20, 10),
(11, 'KC2500', 21, 11),
(12, 'MS6', 22, 12),
(13, 'GTX 1660', 23, 13),
(14, 'RTX 3080', 24, 14),
(15, 'RTX 3060', 25, 15),
(16, 'Oem', 26, 16),
(17, 'Vengeance', 27, 17);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_siparis`
--

CREATE TABLE `tbl_siparis` (
  `sipais_id` int(11) NOT NULL,
  `kul_id` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(11) COLLATE utf8_turkish_ci NOT NULL DEFAULT current_timestamp(),
  `ur_id` int(11) NOT NULL,
  `yet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tbl_siparis`
--

INSERT INTO `tbl_siparis` (`sipais_id`, `kul_id`, `tarih`, `ur_id`, `yet_id`) VALUES
(1, '9', 'current_tim', 5, 2),
(2, '7', 'current_tim', 7, 2),
(3, '1', 'current_tim', 5, 1),
(4, '6', 'current_tim', 8, 2),
(5, '2', 'current_tim', 5, 1),
(6, '10', 'current_tim', 7, 1),
(7, '1', 'current_tim', 3, 1),
(8, '8', 'current_tim', 4, 2),
(9, '12', 'current_tim', 10, 1),
(10, '9', 'current_tim', 9, 2),
(11, '11', 'current_tim', 1, 1),
(12, '7', 'current_tim', 6, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_urunler`
--

CREATE TABLE `tbl_urunler` (
  `ur_id` int(11) NOT NULL,
  `ur_adi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `marka_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `model_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ur_seri_no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tbl_urunler`
--

INSERT INTO `tbl_urunler` (`ur_id`, `ur_adi`, `marka_ad`, `model_ad`, `ur_seri_no`) VALUES
(1, 'Laptop', 'Acer', 'Nitro 5', 11),
(2, 'Laptop', 'Asus', 'RogStrix', 12),
(3, 'Laptop', 'Casper', 'Excalibur', 13),
(4, 'Laptop', 'Monster', 'Abra A5', 14),
(5, 'Laptop', 'Lenovo', 'Ideapad 1', 15),
(6, 'Laptop', 'HP', 'Omen 17', 16),
(7, 'Laptop', 'Hometech', 'Alfa C', 17),
(8, 'Laptop', 'Huwawei', 'MateBook D15', 18),
(9, 'Laptop', 'Apple', 'MacBook Air', 19),
(10, 'Laptop', 'Dell', 'Vostro', 20),
(11, 'SSD', 'Kingston', 'KC2500', 21),
(12, 'SSD', 'KIOXIA', 'MS6', 22),
(13, 'Ekran Kartı', 'Geforce', 'GTX 1660', 23),
(14, 'Ekran Kartı', 'Nvıdıa', 'RTX 3080', 24),
(15, 'Ekran Kartı', 'Geforce', 'RTX 3060', 25),
(16, 'Ram Bellek', 'Kingston', 'Oem', 26),
(17, 'Ram Bellek', 'Corsair', 'Vengeance', 27);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_yetkili`
--

CREATE TABLE `tbl_yetkili` (
  `yet_id` int(11) NOT NULL,
  `yet_adi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `yet_soyAdi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `yet_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `yet_tel` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `yet_kul_adi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `yet_kul_sifre` varchar(20) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tbl_yetkili`
--

INSERT INTO `tbl_yetkili` (`yet_id`, `yet_adi`, `yet_soyAdi`, `yet_mail`, `yet_tel`, `yet_kul_adi`, `yet_kul_sifre`) VALUES
(1, 'Abdullah', 'Olçar', 'olcarabdullah37@gmail.com', '05359441170', 'abullah3737', 'olcar3437'),
(2, 'Sefa', 'Yılmaz', 'yilmazsefa@gmail.com', '05354869798', 'yilmazSefa01', '123sefa321');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `tbl_kayitt`
--
ALTER TABLE `tbl_kayitt`
  ADD PRIMARY KEY (`kul_id`);

--
-- Tablo için indeksler `tbl_kullanici_kayit`
--
ALTER TABLE `tbl_kullanici_kayit`
  ADD PRIMARY KEY (`kul_id`);

--
-- Tablo için indeksler `tbl_marka`
--
ALTER TABLE `tbl_marka`
  ADD PRIMARY KEY (`marka_id`);

--
-- Tablo için indeksler `tbl_model`
--
ALTER TABLE `tbl_model`
  ADD PRIMARY KEY (`model_id`);

--
-- Tablo için indeksler `tbl_siparis`
--
ALTER TABLE `tbl_siparis`
  ADD PRIMARY KEY (`sipais_id`);

--
-- Tablo için indeksler `tbl_urunler`
--
ALTER TABLE `tbl_urunler`
  ADD PRIMARY KEY (`ur_id`);

--
-- Tablo için indeksler `tbl_yetkili`
--
ALTER TABLE `tbl_yetkili`
  ADD PRIMARY KEY (`yet_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `tbl_kayitt`
--
ALTER TABLE `tbl_kayitt`
  MODIFY `kul_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_kullanici_kayit`
--
ALTER TABLE `tbl_kullanici_kayit`
  MODIFY `kul_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
