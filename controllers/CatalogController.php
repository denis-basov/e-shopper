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

		require(ROOT . '/views/catalog/index_tpl.php');

		return true;
	}

	// метод страницы категории каталога
	public static function actionCategory($categoryId){

		$categories = Category::getCategoriesList(); // получаем список категорий
		$categoryProducts = Product::GetProductsListByCategory($categoryId); // получаем товары нужной категории

		require(ROOT.'/views/catalog/category_tpl.php');

		return true;
	}

}