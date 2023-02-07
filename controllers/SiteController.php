<?php


class SiteController
{
  public static function actionIndex(){
    require(ROOT . '/views/site/index_tpl.php');

    return true;
  }
}