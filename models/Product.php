<?php


// модель для работы в таблицей товаров
class Product
{

  const SHOW_BY_DEFAULT = 10;

  public static function getLatestProducts($count = self::SHOW_BY_DEFAULT){
    $count = (int)$count;
    $db = DBConnect::getConnection();

    return $db->query("SELECT id, name, price, image, is_new
                                FROM product
                                WHERE status = 1
                                ORDER BY id DESC 
                                LIMIT $count")
              ->fetchAll(PDO::FETCH_ASSOC);

  }
}