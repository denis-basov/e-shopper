<?php

include ROOT.'/models/Category.php';
include ROOT.'/models/Product.php';
include ROOT.'/components/Pagination.php';

// контроллер каталога
class CatalogController
{

	// метод главной страницы каталога
	public static function actionIndex(){

		$categories = Category::getCategoriesList(); // получаем список категорий
		$latestProducts = Product::getLatestProducts(6); // получаем список товаров

		require(ROOT . '/views/catalog/index_tpl.php');

		return true;
	}

	// метод страницы категории каталога
	public static function actionCategory($categoryId, $page = 1){

		$categories = Category::getCategoriesList(); // получаем список категорий
		$categoryProducts = Product::GetProductsListByCategory($categoryId, $page); // получаем товары нужной категории

		$total = Product::getTotalProductsInCategory($categoryId); // получаем общее кол-во товаров в категории

		// создаем объект постраничной навигации
		$pagination = new Pagination($total, $page, Product::SHOW_BY_DEFAULT, 'page-');

		require(ROOT.'/views/catalog/category_tpl.php');

		return true;
	}

}