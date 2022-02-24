<?php
session_start();
class PassengerController
{
    
    public function login()
    {
      if (!isset($_SESSION['client'])) {
      View::load('Passenger/login');
    }else
    {
      header('location:' . BURL . '');
  }
  }
 
    public function index()
    {
      if (!isset($_SESSION['client'])) {
      View::load('Passenger/index');
      }else
      {
        header('location:' . BURL . '');
    }
      
    }
 

    public function booking()
    {
      if (!isset($_SESSION['client'])) {
        View::load('Passenger/booking');

      }else
      {
        header('location:' . BURL . 'client/booking');
    }

    }
    public function register()
    {
      //if (isset($_SESSION['client'])) {
        if (!isset($_SESSION['client'])) {
        if (isset($_POST['submit'])) {
          $fullName = trim($_POST['fist-name']).' '.trim($_POST['last-name']);
          $email = trim($_POST['email']);
          $password = trim($_POST['pass']);
          $confPassword = trim($_POST['confirm-pass']);
  
          if($password==$confPassword)
          {
             $data = array("fullName" => $fullName,  "email" => $email, "password" => $password);
             //   var_dump($data);
             
            $db = new Client();
            $db->insertClient($data);
            header('location:' . BURL . 'passenger/login');
          }else{

            header('location:' . BURL . 'passenger/index');
          }
        }
        }
      else{
        header('location:' . BURL . '');
      }
    }

    // public function update($id){
    //   if(isset($_POST['submit']))
    //   {
    //     $name = $_POST['name'];
    //     $price =$_POST['price'];
    //     $description = $_POST['description'];
    //     $qty = $_POST['qty'];
    //     $dataDelete=array("name"=>$name,"price"=>$price,"description"=>$description,"qty"=>$qty);

    //     $db = new Client();
    //     if($db->updateClient($id,$dataDelete))
    //     {
    //       View::load("Client/edit",["success"=>"Data updated Successfully",'row'=>$db->getRow($id)]);

    //     }else{
    //       View::load("Client/edit",['row'=>$db->getRow($id)]);
    //     }
       
    //   }
    // }

    // public function getAll()
    // {
    //   $dt=Client::getAll();
    //   return $dt;
    // }
      
  public function loginCheck()
  {
    //Sanitize post data

    //init data
    if (!isset($_SESSION['client'])) {
      if (isset($_POST['submit'])) {
        $data = [
          'email' => trim($_POST['email']),
          'password' => trim($_POST['password'])
        ];
        // var_dump($data);
        if (empty($data['email']) || empty($data['password'])) {
          echo '<script>alert("Invalid inputs");</script>';
          header('location:' . BURL . 'passenger/login');
          exit();
        } else {
          $init = new Client();
          if ($init->loginClient($data)) {


            header('location:' . BURL . '');
          } else {
            echo '<script>alert("Invalid inputs");</script>';
            header('location:' . BURL . 'passenger/login');
          }
        }
      }  
    }else
    {
      header('location:' . BURL . '');
  }
  }


  public function logout()
  {
    if(isset($_SESSION['client']))
    {
        session_destroy();
        header('location:' . BURL . '');
    }else{
      header('location:' . BURL . 'passenger/login');
    }

  }


}