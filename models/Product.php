<?php


// модель для работы c таблицей товаров
class Product
{

  const SHOW_BY_DEFAULT = 3;

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
	public static function getProductsListByCategory($categoryId = false, $page = 1){

  	if($categoryId){

  		$page = intval($page);
  		$offset = ($page - 1) * self::SHOW_BY_DEFAULT;


			$db = DBConnect::getConnection();

			return $db->query("SELECT id, name, price, image, is_new
                                FROM product
                                WHERE status = 1
																AND category_id = $categoryId
                                ORDER BY id DESC 
                                LIMIT ". self::SHOW_BY_DEFAULT ."
																OFFSET " . $offset)
								->fetchAll(PDO::FETCH_ASSOC);
		}

  }


	// получение одного товара по id
  public static function getProductById($productId){

		$db = DBConnect::getConnection();

		return $db->query("SELECT * FROM product WHERE id=$productId")
							->fetch(PDO::FETCH_ASSOC);
	}

	// получение кол-ва товаров в категории
	public static function getTotalProductsInCategory($categoryId){
		$db = DBConnect::getConnection();

		return $db->query("SELECT count(id) AS count 
																   FROM product
																   WHERE status=1
																   AND category_id=$categoryId")
					    ->fetch(PDO::FETCH_ASSOC)['count'];
	}
}