<?php



class Router
{
  private static $routes;

  // метод получения массива с маршрутами
  private static function getRoutes()
  {
    self::$routes = include(ROOT . '/config/routes.php');
  }

  // метод получения строки запроса
  private static function getUri()
  {
    if (!empty($_SERVER['REQUEST_URI'])) {
      return trim($_SERVER['REQUEST_URI'], '/');
    }
  }


  // метод обрабатывает строку запроса и подключает нужный контроллер и вызывает нужный метод
  public static function run()
  {
    // получаем маршруты
    self::getRoutes();

    // получаем строку запроса
    $uri = self::getUri();

    // перебираем массив с маршрутами
    foreach (self::$routes as $uriPattern => $path) {

      // если строка запроса совпадает с ключом массива
      if (preg_match("~$uriPattern~", $uri)) {

        // формируем внутренний маршрут, заменяем заглушки на данные из строки запроса
        $internalRoute = preg_replace("~$uriPattern~", $path, $uri);

        $segments = explode('/', $internalRoute);

        // получаем название контроллера
        $controllerName = ucfirst(array_shift($segments)) . 'Controller';

        // получаем имя метода
        $actionName = 'action' . ucfirst(array_shift($segments));

        // забираем аргументы из строки запроса
        $parameters = &$segments;

        // подключаем контроллер
        $controllerFile = ROOT . '/controllers/' . $controllerName . '.php';

        if (file_exists($controllerFile)) {
          include $controllerFile;
        }

        // вызываем нужный метод нужного класса
        $result = $controllerName::$actionName(...$parameters);

        // если метод вызван, прерываем обход массива с маршрутами
        if ($result !== null) {
          break;
        }
      }
    }
  }
}
