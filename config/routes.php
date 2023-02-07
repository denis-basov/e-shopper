<?php

return [

	'catalog/([0-9+])' => 'catalog/category/$1', // CatalogController & actionCategory - страница категории каталога
	'catalog' => 'catalog/index', // CatalogController & actionIndex - главная страница каталога

  'product/([0-9+])' => 'product/view/$1', // ProductController & actionView - просмотр товара детально

  '' => 'site/index', // SiteController & actionIndex - главная страница
];
