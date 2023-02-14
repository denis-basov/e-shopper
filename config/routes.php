<?php

return [
	'product/([0-9+])' => 'product/view/$1', // просмотр товара детально - ProductController & actionView

	'catalog' => 'catalog/index', // главная страница каталога - CatalogController & actionIndex

	'category/([0-9]+)/page-([0-9]+)' => 'catalog/category/$1/$2',// страница пагинации - CatalogController &
	// actionCategory
	'category/([0-9+])' => 'catalog/category/$1', // страница категории каталога - CatalogController & actionCategory



  '' => 'site/index', // SiteController & actionIndex - главная страница
];
