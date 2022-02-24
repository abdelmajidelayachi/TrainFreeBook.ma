<?php
session_start();

class AdminController
{

  public function login()
  {
    if (!isset($_SESSION['AdminName'])) {
      View::load('Admin/login');
    }else{
      header('location:' . BURL . 'admin/home');
    }
  }

  public function home()
  {
    if (isset($_SESSION['AdminName'])) {
      $db = new Travel();
      $data['travels'] = $db->getAllTravels();

      View::load('Admin/home', $data);
    }else{
      header('location:' . BURL . 'admin/login');
    }
  }
  public function clients()
  {
    if (isset($_SESSION['AdminName'])) {
      $db = new Client();
      $data['clients'] = $db->getAllclients();

      View::load('Admin/clients', $data);
    }else{
      header('location:' . BURL . 'admin/login');
    }
  }
  public  function createTrip()
  {
    if (isset($_SESSION['AdminName'])) {
      if (isset($_POST['submit'])) {
        $destinationStart = $_POST['destinationStart'];
        $destinationEnd = $_POST['destinationEnd'];
        $departureTime = $_POST['departureTime'];
        $arrivalTime = $_POST['arrivalTime'];

        $price = $_POST['price'];
        $trainId = $_POST['trainId'];

        $data = array("destinationStart" => $destinationStart, "destinationEnd" => $destinationEnd, "departureTime" => $departureTime, "arrivalTime" => $arrivalTime, "price" => $price, "trainId" => $trainId);

        $db = new Travel();
        $db->insertTravel($data);
        header('location:' . BURL . 'admin/home');
      }
    }else{
      header('location:' . BURL . 'admin/login');
    }
  }
  public function deleteTrip($id)
  {
    if (isset($_SESSION['AdminName'])) {
      $db = new Travel();
      $db->deleteTravel($id);
      header('location:' . BURL . 'admin/home');
    }else{
      header('location:' . BURL . 'admin/login');
    }
  }

  public function updateTrip($id)
  {
    if (isset($_SESSION['AdminName'])) {

      if (isset($_POST['submit'])) {
        $destinationStart = $_POST['destinationStart'];
        $destinationEnd = $_POST['destinationEnd'];
        $departureTime = $_POST['departureTime'];
        $arrivalTime = $_POST['arrivalTime'];

        $price = $_POST['price'];
        $trainId = $_POST['trainId'];

        $data = array("destinationStart" => $destinationStart, "destinationEnd" => $destinationEnd, "departureTime" => $departureTime, "arrivalTime" => $arrivalTime, "price" => $price, "trainId" => $trainId);
        //   var_dump($data);
        $db = new Travel();
        $db->updateTravel($data, $id);
        header('location:' . BURL . 'admin/home');
      }
    }else{
      header('location:' . BURL . 'admin/login');
    }
  }

  public function loginCheck()
  {
    //Sanitize post data

    //init data
    
      if (isset($_POST['submit'])) {
        $data = [
          'email' => trim($_POST['adminEmail']),
          'password' => trim($_POST['adminPwd'])
        ];
        // var_dump($data);
        if (empty($data['email']) || empty($data['password'])) {
          echo '<script>alert("Invalid inputs");</script>';
          header('location:' . BURL . 'admin/login');
          exit();
        } else {
          $init = new Admin();
          if ($init->loginAd($data)) {


            header('location:' . BURL . 'admin/home');
          } else {
            echo '<script>alert("Invalid inputs");</script>';
            header('location:' . BURL . 'admin/login');
          }
        }
        
    }
  }


  public function logout()
  {
    if(isset($_SESSION['AdminName']))
    {
        session_destroy();
        header('location:' . BURL . 'admin/login');
    }else{
      header('location:' . BURL . 'admin/login');
    }

  }

  public function deleteClient($id)
  {
      if (isset($_SESSION['AdminName'])) {
          $db = new Client();
          $db->deleteClient($id);
          header('location:' . BURL . 'admin/clients');
        }else{
          header('location:' . BURL . 'admin/login');
        }
  }
  public function profile()
  {
      if (isset($_SESSION['AdminName'])) {
         
        View::load('Admin/profile');
        }else{
          header('location:' . BURL . 'admin/login');
        }
  }
}
