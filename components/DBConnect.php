<?php

// класс подключения к бд
class DBConnect
{

  // метод подключения к бд
  public static function getConnection(){
    // получаем массив с параметрами
    $params = include(ROOT.'/config/db_params.php');

    // создаем и возвращаем объект подключения к бд
    $dsn = "mysql:host=$params[host]; dbname=$params[dbname]";
    return new PDO($dsn, $params['user'], $params['password']);

  }
}