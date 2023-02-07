<?php

// модель для взаимодействия с таблицей категорий товаров
class Category
{

  // возвращает массив ссо списком категорий
  public static function getCategoriesList(){
    $db = DBConnect::getConnection();

    return $db->query('SELECT id, name FROM category ORDER BY sort_order ASC')
              ->fetchAll(PDO::FETCH_ASSOC);
  }
}