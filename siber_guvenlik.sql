-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 28 Ağu 2024, 10:38:55
-- Sunucu sürümü: 8.2.0
-- PHP Sürümü: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `siber_guvenlik`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `surname`, `mail`, `phone`, `address`) VALUES
(1, 'mehmet.yildiz', 'mehmet123', 'Mehmet', 'Yıldız', 'mehmet.yildiz@example.com', '555-111-2233', 'Atatürk Caddesi, İstanbul'),
(2, 'ayse.kaya', 'ayse456', 'Ayşe', 'Kaya', 'ayse.kaya@example.com', '555-222-3344', 'Cumhuriyet Mahallesi, Ankara'),
(3, 'ali.can', 'ali789', 'Ali', 'Can', 'ali.can@example.com', '555-333-4455', 'Gazi Caddesi, İzmir'),
(4, 'fatma.durmaz', 'fatma123', 'Fatma', 'Durmaz', 'fatma.durmaz@example.com', '555-444-5566', 'Barış Sokak, Antalya'),
(5, 'mustafa.aksoy', 'mustafa456', 'Mustafa', 'Aksoy', 'mustafa.aksoy@example.com', '555-555-6677', 'Sahil Yolu Cad., Trabzon');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
