<?php

/**
 *
 * front end controller
 */
class App
{
    protected  $controller = "PassengerController";
    protected $action="goHome";
    protected $params=[];
    public function __construct()
    {
         $this->prepareURL();
         $this->render();


        }

    /**
     * @return void
     */

    private function prepareURL()
    {

        $url = $_SERVER['QUERY_STRING'];

        if (!empty($url)) {
            $url = trim($url, "/");
            $url = explode("/", $url);
            // var_dump($url) ;
            $this->controller = isset($url[0]) ? ucwords(($url[0])) . "controller" : "HomeController";
            $this->action = isset($url[1]) ? $url[1] : "Not exist";
            unset($url[0], $url[1]);
            $this->params = !empty($url) ? array_values($url) : [];

        }
    }

    private function render()
    {

        if(class_exists($this->controller))
        {
            $controller = new $this->controller;
            if(method_exists($controller,$this->action)){
                call_user_func_array([$controller,$this->action],$this->params);
            }else{
                echo "<!doctype html>
                <html lang='en'>
                
                <head>
                  <!-- Required meta tags -->
                  <meta charset='utf-8'>
                  <meta name='viewport' content='width=device-width, initial-scale=1'>
                
                  <!-- font awesome -->
                  <link href='https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css' rel='stylesheet'>
                  <!-- iconscout -->
                  <link rel='stylesheet' href='https://unicons.iconscout.com/release/v4.0.0/css/line.css'>
                  <!-- Bootstrap CSS -->
                  <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css' rel='stylesheet' integrity='sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3' crossorigin='anonymous'>
                  <!-- css  -->
                  <link rel='stylesheet' href='../assets/style/header.css'>
                
                
                <body>
                
                <div class='container'>
                <div class='text-center mx-auto'>
                  <img src='../assets/images/notfound.png' class='rounded-circle mx-auto d-block img-fluid img-responsive' alt='...'>
                  <h1 class='mt-4 fs-2 text fw-bolder p-1'>444 Page Not Found</h1>
                </div>
                
              </div>
              
              </body>
              </html>
              ";
            }


        }else{
            echo "<!doctype html>
            <html lang='en'>
            
            <head>
              <!-- Required meta tags -->
              <meta charset='utf-8'>
              <meta name='viewport' content='width=device-width, initial-scale=1'>
            
              <!-- font awesome -->
              <link href='https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css' rel='stylesheet'>
              <!-- iconscout -->
              <link rel='stylesheet' href='https://unicons.iconscout.com/release/v4.0.0/css/line.css'>
              <!-- Bootstrap CSS -->
              <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css' rel='stylesheet' integrity='sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3' crossorigin='anonymous'>
              <!-- css  -->
              <link rel='stylesheet' href='../assets/style/header.css'>
            
            
            <body>
            
            <div class='container'>
            <div class='text-center mx-auto'>
              <img src='../assets/images/notfound.png' class='rounded-circle mx-auto d-block img-fluid img-responsive' alt='...'>
              <h1 class='mt-4 fs-2 text fw-bolder p-1'>444 Page Not Found</h1>
            </div>
            
          </div>
          
          </body>
          </html>
          ";
        }
    }


}