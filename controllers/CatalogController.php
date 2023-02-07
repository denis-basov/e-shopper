<?php

include ROOT.'/models/Category.php';
include ROOT.'/models/Product.php';

// контроллер каталога
class CatalogController
{

	// метод главной страницы каталога
	public static function actionIndex(){

		$categories = Category::getCategoriesList(); // получаем список категорий
		$latestProducts = Product::getLatestProducts(); // получаем список товаров

		echo 'каталог';

		require(ROOT . '/views/catalog/index_tpl.php');

		return true;
	}

	// метод страницы категории каталога
	public static function actionCategory($categoryId){

		$categories = Category::getCategoriesList();
		$categoryProducts = Product::GetProductsListByCategory($categoryId);

		echo 'категория';

		require(ROOT.'/views/catalog/category_tpl.php');

		return true;
	}

}