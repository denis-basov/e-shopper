<?php

include ROOT.'/models/News.php';

class NewsController
{

  // список новостей
  public static function actionIndex()
  {

    $newsList = News::getNewsList();

    Helper::d($newsList);

    return true;
  }

  public static function actionView($id)
  {
    $newsItem = News::getNewsItemById($id);

    Helper::d($newsItem);

    return true;
  }
}