
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_qldt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(12, 1, 6, 'Smartphone SamSung Z', 21000000, 1, 'samsung Z.jpg'),
(13, 1, 15, 'Keyboard K68', 500000, 1, 'PhimK68.jpg'),
(14, 1, 12, 'Chuột  Corair', 300000, 1, 'ChuotCorair.jpg'),
(15, 1, 13, 'Chuột LigitechG403', 400000, 1, 'ChuotLigitechG403.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 0, 'dgsrsfs', '4213123123', 'tru1510@gmail.com', 'cash on delivery', 'flat no. ádasdasdasdawaeaw, ádasdasdasdăeawe, ăeaweaweawe, ăeaweaw, Việt Nam - 100000', 'Smartphone Iphone 14 (25000000 x 3) - Smartphone SamSung M53 (19000000 x 1) - ', 94000000, '2023-04-13', 'pending'),
(2, 1, 'ưeqwweqwe', '4213123123', 'tru2002@gmail.com', 'cash on delivery', 'flat no. ádasdasdasdawaeaw, ádasdasdasdăeawe, ăeaweaweawe, ăeaweaw, Việt Nam - 100000', 'Smartphone Iphone 13 (19000000 x 1) - Smartphone SamSung M53 (19000000 x 1) - HeadPhone K9 (600000 x 1) - Laptop-AcerB3 (20000000 x 1) - Chuột  Corair (300000 x 1) - ', 58900000, '2023-04-14', 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(4, 'Smartphone Iphone 14', 'Iphone 14 ProMax 1T ', 25000000, 'iphone14 1.jpg', 'iphone14 2.jpg', 'iphone14 3.jpg'),
(5, 'Smartphone SamSung M53', 'SamSung M53 5G', 19000000, 'samsungM53.jpg', 'samsungM53.jpg', 'samsungM53.jpg'),
(6, 'Smartphone SamSung Z', 'SamSung Z 5G', 21000000, 'samsung Z.jpg', 'samsung Z.jpg', 'samsung Z.jpg'),
(7, 'Smartphone Iphone 13', 'Iphone 13 Promax 1T', 19000000, 'iphone13.jpg', 'iphone13.jpg', 'iphone13.jpg'),
(8, 'Smartphone Xiaomi-redmi', 'Xiaomi-redmi Ram 4G ', 12000000, 'xiaomi-redmi.jpg', 'xiaomi-redmi.jpg', 'xiaomi-redmi.jpg'),
(9, 'Laptop-AcerB3', 'Laptop Acer-B3 Core i5 10400H', 20000000, 'Acer-B3.jpg', 'Acer-B3.jpg', 'Acer-B3.jpg'),
(10, 'Laptop-Asus-Gamming', 'Laptop asus-gaming core I7 10400U 144hz 16G', 25000000, 'asus-gaming.jpg', 'asus-gaming.jpg', 'asus-gaming.jpg'),
(11, 'Laptop-Lennovo', 'Laptop lennovo  core I5 5400U 144hz HHD 1T', 22000000, 'lennovo-gaming.jpg', 'lennovo-gaming.jpg', 'lennovo-gaming.jpg'),
(12, 'Chuột  Corair', 'Bảo hành 12 tháng', 300000, 'ChuotCorair.jpg', 'ChuotCorair.jpg', 'ChuotCorair.jpg'),
(13, 'Chuột LigitechG403', 'Bảo hành 6 tháng', 400000, 'ChuotLigitechG403.jpg', 'ChuotLigitechG403.jpg', 'ChuotLigitechG403.jpg'),
(14, 'Keyboard Razer ', 'Bàn phím cơ razer chính hảng bảo hành 12 tháng', 600000, 'PhimRazer.jpg', 'PhimRazer.jpg', 'PhimRazer.jpg'),
(15, 'Keyboard K68', 'Bàn phím cơ K68 bảo hành 6 tháng', 500000, 'PhimK68.jpg', 'PhimK68.jpg', 'PhimK68.jpg'),
(16, 'HeadPhone K8', 'Tai nghe k8 êm tai mic không ồn bảo hành 12 tháng', 600000, 'tainghek8.jpg', 'tainghek8.jpg', 'tainghek8.jpg'),
(17, 'HeadPhone G331', 'Tai nghe gaming G331 bảo hành 12 tháng', 800000, 'taingheG331.jpg', 'taingheG331.jpg', 'taingherapoo.jpg'),
(18, 'HeadPhone K9', 'Tai nghe K9 Bảo hành 12 tháng ', 600000, 'tainghek9.jpg', 'tainghek9.jpg', 'tainghek9.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Huy Trứ', 'tru15@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(2, 'Trung Nguyên', 'trunguyen15@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
