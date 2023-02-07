<?php

include ROOT.'/models/Category.php';
include ROOT.'/models/Product.php';

class ProductController
{

  public static function actionView($productId){

		$categories = Category::getCategoriesList(); // получаем список категорий
		$product = Product::getProductById($productId); // получаем нужный продукт


    require(ROOT.'/views/product/view_tpl.php');

    return true;
  }
}