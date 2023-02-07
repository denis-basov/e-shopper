<?php

return [

  'product/([0-9+])' => 'product/view/$1', // ProductController & actionView - просмотр товара детально
  '' => 'site/index', // SiteController & actionIndex - главная страница
];
