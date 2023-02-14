-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 14 2023 г., 21:28
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `e-shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(1, 'Рубашки', 1, 1),
(2, 'Платья', 5, 1),
(3, 'Футболки', 3, 1),
(4, 'Майки', 4, 1),
(5, 'Сумки', 2, 1),
(6, 'Чемоданы', 6, 1),
(7, 'Брюки', 7, 1),
(8, 'Пиджаки', 8, 1),
(9, 'Галстуки', 9, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int NOT NULL,
  `code` int NOT NULL,
  `price` float NOT NULL,
  `avilability` int NOT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_new` int NOT NULL DEFAULT '0',
  `is_recommended` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `avilability`, `brand`, `image`, `description`, `is_new`, `is_recommended`, `status`) VALUES
(1, 'Рубашка ', 1, 1, 10, 1, 'гучи', 'test', 'test', 0, 0, 1),
(2, 'Футболка', 2, 2, 20, 1, 'Гучи', 'test', 'test', 1, 0, 1),
(3, 'Шорты', 3, 3, 15, 1, 'Гучи', 'test', 'test', 0, 0, 1),
(4, 'Сланцы', 4, 4, 12, 1, 'Гучи', 'test', 'test', 0, 0, 1),
(5, 'Носки', 5, 5, 17, 1, 'Гучи', 'test', 'test', 0, 0, 1),
(6, 'Сандали', 6, 6, 11, 1, 'Гучи', 'test', 'test', 0, 0, 1),
(7, 'Галстук', 7, 7, 4, 1, 'гучи', 'test', 'test', 1, 0, 1),
(8, 'Свитер', 8, 8, 19, 1, 'гучи', 'test', 'test', 0, 0, 1),
(9, ' Facere inventore', 1, 1, 34, 1, ' nisi odio', ' nisi odio', 'Asperiores cupiditate eius odio quaerat, quod recusandae totam? Accusamus aliquam aliquid beatae culpa distinctio dolore dolorem ea eaque ipsa iste libero minima minus odit, perferendis provident quos suscipit ut? Adipisci at autem beatae doloremque earum enim fuga impedit ipsa laborum natus nulla officia, pariatur perspiciatis provident quis reiciendis reprehenderit rerum soluta velit voluptate. Accusamus corporis dolores ea eius error magnam natus nisi odio rem, vero? Corporis illum, reprehenderit. Asperiores dolor excepturi incidunt quam quisquam.', 1, 0, 1),
(10, 'Adipisci aperiam', 1, 1, 345, 1, 'dolorem ducimus', 'dolorem ducimus', 'Ad at atque doloremque esse ex fuga hic illum pariatur quod! Animi commodi eius magnam maxime nobis quibusdam sequi sint temporibus? Et eum non officia quia! A accusantium, aliquid blanditiis eaque est excepturi, fugiat nesciunt nobis quibusdam quidem sed sunt ut voluptates? Deleniti nemo, tenetur? Accusamus aliquam architecto asperiores atque, aut cumque dolore dolorem dolores explicabo impedit ipsam labore laudantium nam, optio pariatur perferendis provident qui repudiandae', 0, 0, 1),
(11, 'temporibus tenetur', 1, 1, 543, 1, 'harum id incidunt', 'harum id incidunt', 'Corporis illum, reprehenderit. Asperiores dolor excepturi incidunt quam quisquam. Adipisci aperiam architecto aspernatur autem, cupiditate eius explicabo id incidunt, itaque molestias necessitatibus neque placeat quasi, ratione vel! Asperiores ducimus eaque, eos ipsam magni temporibus velit. A aperiam aspernatur consequuntur illum labore minus optio perspiciatis quo sapiente sit. Ab aliquam asperiores aspernatur at cupiditate, dolorem ducimus est et fugit id inventore ipsam laudantium maxime minima molestias mollitia nam necessitatibus neque nobis odio placeat quia quo quod saepe sapiente similique temporibus vitae.', 0, 0, 1),
(12, 'quas recusandae', 1, 1, 543, 1, 'itaque laboriosam', 'itaque laboriosam', 'Ab adipisci asperiores atque, consectetur consequuntur corporis cumque dolor doloremque dolorum eaque error esse eveniet excepturi, harum id incidunt itaque laboriosam libero minus molestiae quis quod sapiente sequi temporibus tenetur, vero voluptas? Accusamus aliquid aperiam blanditiis debitis dolorem eos eum praesentium quaerat repellendus reprehenderit? Assumenda commodi dolore expedita explicabo ipsa iste libero, modi molestias mollitia natus, nemo nulla placeat quisquam repellat reprehenderit.', 1, 0, 1),
(13, 'Lorem ipsum', 1, 23, 1245, 1, 'Corporis illum', 'Corporis illum', 'Corporis illum, reprehenderit. Asperiores dolor excepturi incidunt quam quisquam. Adipisci aperiam architecto aspernatur autem, cupiditate eius explicabo id incidunt, itaque molestias necessitatibus neque placeat quasi, ratione vel! Asperiores ducimus eaque, eos ipsam magni temporibus velit. A aperiam aspernatur consequuntur illum labore minus optio perspiciatis quo sapiente sit. Ab aliquam asperiores aspernatur at cupiditate, dolorem ducimus est et fugit id inventore ipsam laudantium maxime minima molestias mollitia nam necessitatibus neque nobis odio placeat quia quo quod saepe sapiente similique temporibus vitae.', 1, 0, 1),
(14, 'Deleniti nemo', 1, 245, 7543, 1, 'Adipisci at autem', 'Adipisci at autem', 'Ad at atque doloremque esse ex fuga hic illum pariatur quod! Animi commodi eius magnam maxime nobis quibusdam sequi sint temporibus? Et eum non officia quia! A accusantium, aliquid blanditiis eaque est excepturi, fugiat nesciunt nobis quibusdam quidem sed sunt ut voluptates? Deleniti nemo, tenetur? Accusamus aliquam architecto asperiores atque, aut cumque dolore dolorem dolores explicabo impedit ipsam labore laudantium nam, optio pariatur perferendis provident qui repudiandae, sint veniam voluptas voluptatibus voluptatum? Asperiores cupiditate eius odio quaerat, quod recusandae totam? Accusamus aliquam aliquid beatae culpa distinctio dolore dolorem ea eaque ipsa iste libero minima minus odit, perferendis provident quos suscipit ut? Adipisci at autem beatae doloremque earum enim fuga impedit ipsa laborum natus nulla officia', 1, 1, 1),
(15, 'Asperiores commodi', 1, 144, 43232, 1, 'dolore ea', 'dolore ea', 'Adipisci alias at atque debitis doloribus enim esse est facilis ipsum itaque natus neque, officiis optio perspiciatis provident rem reprehenderit suscipit voluptates. Accusantium assumenda distinctio esse eum illo iste itaque laboriosam magnam nobis praesentium quod rem rerum, sunt tenetur unde vitae voluptate voluptatibus? Ad architecto aspernatur assumenda atque, beatae commodi consectetur delectus doloremque eaque earum illo iste iure molestias nam nobis numquam odit, possimus ratione sunt suscipit tempora veritatis vitae voluptas. Ab autem deleniti, dolore eaque enim, est harum illo magni', 1, 0, 1),
(16, 'Accusamus architecto', 1, 3421, 5434, 1, 'illo illum', 'illo illum', 'Accusamus architecto aut culpa deleniti doloremque dolorum ducimus eaque, error fuga fugiat harum illo illum itaque labore maxime minus molestiae nam, nihil, nobis quas quo reprehenderit sapiente sequi sunt voluptatum? Ad dolor eligendi laboriosam nemo ratione sunt tempore temporibus. Accusantium aliquam aperiam consequuntur distinctio eaque eum in nesciunt optio pariatur, porro quia quibusdam quis quisquam recusandae repellat', 1, 1, 1),
(17, 'Adipisci aliquam', 2, 345, 43232, 1, 'dolore ea', 'dolore ea', 'Adipisci alias at atque debitis doloribus enim esse est facilis ipsum itaque natus neque, officiis optio perspiciatis provident rem reprehenderit suscipit voluptates. Accusantium assumenda distinctio esse eum illo iste itaque laboriosam magnam nobis praesentium quod rem rerum, sunt tenetur unde vitae voluptate voluptatibus? Ad architecto aspernatur assumenda atque, beatae commodi consectetur delectus doloremque eaque earum illo iste iure molestias nam nobis numquam odit, possimus ratione sunt suscipit tempora veritatis vitae voluptas. Ab autem deleniti, dolore eaque enim, est harum illo magni', 1, 0, 1),
(18, 'Aliquam amet', 1, 34, 5434, 1, 'illo illum', 'illo illum', 'Accusamus architecto aut culpa deleniti doloremque dolorum ducimus eaque, error fuga fugiat harum illo illum itaque labore maxime minus molestiae nam, nihil, nobis quas quo reprehenderit sapiente sequi sunt voluptatum? Ad dolor eligendi laboriosam nemo ratione sunt tempore temporibus. Accusantium aliquam aperiam consequuntur distinctio eaque eum in nesciunt optio pariatur, porro quia quibusdam quis quisquam recusandae repellat', 1, 1, 1),
(19, 'Ad dicta', 2, 33, 1255, 1, 'Ad architecto', 'Ad architecto', 'Accusantium aliquam aperiam consequuntur distinctio eaque eum in nesciunt optio pariatur, porro quia quibusdam quis quisquam recusandae repellat! Adipisci, aliquid animi beatae cum distinctio dolor dolorem doloremque dolorum eos est exercitationem fugit illum laborum libero magnam minima modi necessitatibus omnis, saepe sed? Eligendi, ipsa ullam? Deleniti dignissimos doloremque ducimus est excepturi facilis fuga hic illum mollitia nemo', 0, 0, 1),
(20, ' laudantium nihi', 2, 42, 5433, 1, 'laudantium magnam', 'laudantium magnam', 'Eligendi, ipsa ullam? Deleniti dignissimos doloremque ducimus est excepturi facilis fuga hic illum mollitia nemo, nisi, nostrum odio, optio pariatur totam vero vitae. Adipisci aliquam assumenda atque beatae consectetur consequuntur, cum debitis esse eum exercitationem expedita id nam nihil odit unde ut veniam. Aliquam amet at atque commodi, cupiditate debitis deserunt distinctio, eaque exercitationem hic id iusto magni maiores molestias neque numquam officiis possimus reprehenderit totam voluptatum! Ab accusamus ad amet asperiores dignissimos ea ex, impedit magnam, modi nostrum odit quas quo quos repellat repellendus sapiente tenetur ut voluptatibus. Accusamus adipisci aut ea eligendi, fugiat illo ipsam laudantium nihil pariatur qui quis quisquam sed soluta! Architecto assumenda ducimus enim ex, facilis fugiat, hic incidunt ipsum iste libero minima nisi, nostrum officia saepe soluta sunt voluptatum. Adipisci aperiam, architecto beatae dignissimos, eligendi eveniet fugit id labore laudantium magnam maiores maxime, odio perferendis quia sequi voluptate voluptates. Quo!\r\n', 0, 1, 1),
(21, 'Architecto eligendi', 1, 422, 6766, 1, ' Accusamus, alias', ' Accusamus, alias', 'Asperiores commodi doloribus enim explicabo ipsam labore repellat! Alias aliquam amet architecto deleniti deserunt, dolore ea eaque eligendi esse eum expedita hic id magnam minus nesciunt nisi omnis pariatur quaerat quia quibusdam quo repellat rerum saepe sapiente sed similique sit ut voluptas voluptatibus voluptatum. Aliquid asperiores autem consectetur delectus, distinctio eligendi incidunt libero non obcaecati possimus praesentium quis repellat, similique vel vitae voluptates voluptatibus? Adipisci alias at atque debitis doloribus enim esse est facilis ipsum itaque natus neque, officiis optio perspiciatis provident rem reprehenderit suscipit voluptates. Accusantium assumenda distinctio esse eum illo iste itaque laboriosam magnam nobis praesentium quod rem rerum, sunt tenetur unde vitae voluptate voluptatibus?', 1, 0, 1),
(22, 'Accusantium adipisci', 1, 543, 3466, 1, 'voluptas voluptatibus', 'voluptas voluptatibus', 'Asperiores commodi doloribus enim explicabo ipsam labore repellat! Alias aliquam amet architecto deleniti deserunt, dolore ea eaque eligendi esse eum expedita hic id magnam minus nesciunt nisi omnis pariatur quaerat quia quibusdam quo repellat rerum saepe sapiente sed similique sit ut voluptas voluptatibus voluptatum. Aliquid asperiores autem consectetur delectus, distinctio eligendi incidunt libero non obcaecati possimus praesentium quis repellat, similique vel vitae voluptates voluptatibus? Adipisci alias at atque debitis doloribus enim esse est facilis ipsum itaque natus neque, officiis optio perspiciatis provident rem reprehenderit suscipit voluptates. Accusantium assumenda distinctio esse eum illo iste itaque laboriosam magnam nobis praesentium quod rem rerum, sunt tenetur unde vitae voluptate voluptatibus?', 0, 1, 1),
(23, 'eligendi', 2, 65, 6766, 1, ' Accusamus, alias', ' Accusamus, alias', 'Asperiores commodi doloribus enim explicabo ipsam labore repellat! Alias aliquam amet architecto deleniti deserunt, dolore ea eaque eligendi esse eum expedita hic id magnam minus nesciunt nisi omnis pariatur quaerat quia quibusdam quo repellat rerum saepe sapiente sed similique sit ut voluptas voluptatibus voluptatum. Aliquid asperiores autem consectetur delectus, distinctio eligendi incidunt libero non obcaecati possimus praesentium quis repellat, similique vel vitae voluptates voluptatibus? Adipisci alias at atque debitis doloribus enim esse est facilis ipsum itaque natus neque, officiis optio perspiciatis provident rem reprehenderit suscipit voluptates. Accusantium assumenda distinctio esse eum illo iste itaque laboriosam magnam nobis praesentium quod rem rerum, sunt tenetur unde vitae voluptate voluptatibus?', 1, 0, 1),
(24, 'adipisci', 1, 543, 3466, 1, 'voluptas voluptatibus', 'voluptas voluptatibus', 'Asperiores commodi doloribus enim explicabo ipsam labore repellat! Alias aliquam amet architecto deleniti deserunt, dolore ea eaque eligendi esse eum expedita hic id magnam minus nesciunt nisi omnis pariatur quaerat quia quibusdam quo repellat rerum saepe sapiente sed similique sit ut voluptas voluptatibus voluptatum. Aliquid asperiores autem consectetur delectus, distinctio eligendi incidunt libero non obcaecati possimus praesentium quis repellat, similique vel vitae voluptates voluptatibus? Adipisci alias at atque debitis doloribus enim esse est facilis ipsum itaque natus neque, officiis optio perspiciatis provident rem reprehenderit suscipit voluptates. Accusantium assumenda distinctio esse eum illo iste itaque laboriosam magnam nobis praesentium quod rem rerum, sunt tenetur unde vitae voluptate voluptatibus?', 0, 1, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
