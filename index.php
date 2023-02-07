<?php

// 1 общие настройки
ini_set('display_errors', 1);
error_reporting(E_ALL);

// 2 подключение файлов системы
define('ROOT', dirname(__FILE__));
require ROOT . '/components/Router.php';
include ROOT . '/core/Helper.php';

// 3 соединение с БД
require ROOT . '/components/DBConnect.php';

// 4 вызов Router
Router::run();
