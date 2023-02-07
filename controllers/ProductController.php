<?php


class ProductController
{

  public static function actionView($id){
    require(ROOT.'/views/product/view_tpl.php');

    return true;
  }
}