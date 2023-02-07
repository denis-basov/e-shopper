<?php


// модель для работы c таблицей товаров
class Product
{

  const SHOW_BY_DEFAULT = 10;

  // получение определенного кол-ва товаров
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

  // получение товаров по категории
	public static function getProductsListByCategory($categoryId){

  	$db = DBConnect::getConnection();

		return $db->query("SELECT id, name, price, image, is_new
                                FROM product
                                WHERE status = 1
																AND category_id = $categoryId
                                ORDER BY id DESC 
                                LIMIT ". self::SHOW_BY_DEFAULT)
							->fetchAll(PDO::FETCH_ASSOC);
	}

	// получение одного товара по id
  public static function getProductById($productId){

		$db = DBConnect::getConnection();

		return $db->query("SELECT * FROM product WHERE id=$productId")->fetch(PDO::FETCH_ASSOC);
	}
}