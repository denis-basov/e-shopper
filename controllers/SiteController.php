<?php

include ROOT.'/models/Category.php';
include ROOT.'/models/Product.php';

// контроллер главной страницы
class SiteController
{
  public static function actionIndex(){

    $categories = Category::getCategoriesList(); // получаем список категорий
    $latestProducts = Product::getLatestProducts(6); // получаем список товаров


    require(ROOT . '/views/site/index_tpl.php');

    return true;
  }
}