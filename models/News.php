<?php

// модель для работы с новостями
class News
{

  // получение списка новостей
  public static function getNewsList(){
    // запрос к бд
    return [1,2,3,4,5];
  }

  // получение одной новости по идентификатору
  public static function getNewsItemById($id){
    $id = (int)$id;
    if($id){
      // подключаемся к бд
      $db = DBConnect::getConnection();
      // запрос к бд
      return [9,8,7,6,5];
    }
  }
}