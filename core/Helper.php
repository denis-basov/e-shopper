<?php


class Helper
{
  public static function d($data){
    echo '<pre>';
    print_r($data);
    echo '</pre>';
  }

  public static function dd($data){
    echo '<pre>';
    print_r($data);
    echo '</pre>';
    die();
  }
}