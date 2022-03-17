<?php


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
      $tr = New Train();
      $tr->getAllTrains();
      $res=New Reservation();
      $res->getAllTravellers();
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
  public function reports()
  {
    if (isset($_SESSION['AdminName'])) {
      $db = new Report();
      $data['reports'] = $db->getAllReports();

      View::load('Admin/reports', $data);
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
    public function changeStatus($id)
    {
     
        if (isset($_SESSION['AdminName'])) {
          
          $st=new Travel();
          $selectRow=$st->getStatus($id);
          echo $selectRow['status'];
          if($selectRow['status']==1){
            $status=0;
          }else{
            $status=1;
          }
           $data=array("status" => $status);
          $db = new Travel();
          $db->changeStatus($data,$id);
          header('location:' . BURL . 'admin/home');
       
      }else{
        header('location:' . BURL . 'admin/login');
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
        $ad= New Admin();
        $data['infos']= $ad->getAdInfo($_SESSION['email']);
        View::load('Admin/profile',$data);
        }else{
          header('location:' . BURL . 'admin/login');
        }
  }
  

  public function editProfile(){
    if (isset($_SESSION['AdminName'])) {
      $fullname = trim($_POST['name']);
      $email = trim($_POST['email']);
      $nPass = trim($_POST['n-pass']);
      $cPass = trim($_POST['c-pass']);

      $images = $_FILES['profile']['name'];
      $tmp_dir = $_FILES['profile']['tmp_name'];
      $imageSize = $_FILES['profile']['size'];
      //creer un dossier nommer le uploads
  
      $upload_dir = 'uploads/';
      $imgExt = strtolower(pathinfo($images, PATHINFO_EXTENSION));
      $valid_extensions = array('jpeg', 'jpg', 'png', 'gif', 'pdf');
      $picProfile = rand(1000, 1000000) . "." . $imgExt;
      move_uploaded_file($tmp_dir, $upload_dir . $picProfile);
      if($nPass !=$cPass)
      {
        View::load('Admin/profile',['success'=>'Your New password is not match the confirm password']);
        exit;
      }
      if($imageSize==0)
    {
      if(isset($_SESSION['profileAd']))
      {
        $picProfile=$_SESSION['profileAd']; 

      }else{
      $picProfile='default.png'; 
      //  echo 'true';
      // exit;
    }
  }
      if(empty($nPass))
      {
        $nPass= $_SESSION['password'];
      }
      $data = array("fullName" => $fullname, "email" => $email, "password" => $nPass ,"profile"=>$picProfile);
      //   var_dump($data);
      //  exit;
      $ad= New Admin();
        $data['infos']= $ad->getAdInfoEdit($_SESSION['adminId'],$data);
        //  echo '<pre>';
        //  print_r($ad->getAdInfo($_SESSION['email']));
        //  echo'</pre>';
        $_SESSION['AdminName']=$fullname;  
        $_SESSION['email']= $email;  
        $_SESSION['password']= $nPass; 
        $_SESSION['profileAd']=$picProfile;  
        
        header('location:' . BURL . 'admin/profile');
      }else{
        header('location:' . BURL . 'admin/login');
      }
  }
}
