<?php

class ClientController extends PassengerController
{
    // public function index()
    // {
    //   $db=new Travel();  
    //   $data['travels']=$db->getAllTravels();
    //   View::load('Client/index',$data);
    // }

    public function profile()
    {
        if (isset($_SESSION['client'])) {
      View::load('Client/profile');
    }else{
        header('location:' . BURL . 'passenger/login');
    }
}
    public function home()
    {
        if (isset($_SESSION['client'])) {
      View::load('Client/home');
    }else{
        header('location:' . BURL . 'passenger/login');
    }
}
   
  



    
    public function contact()
    {
        if (isset($_SESSION['client'])) {
        View::load('Client/contact');
        }else{
            header('location:' . BURL . 'passenger/login');
        }
    }
    public function lastBooking()
    {
        if (isset($_SESSION['client'])) {
            $dt= New Reservation();
            
            $data['RBookings']=$dt->recentBook($_SESSION['client']);
           
           

            View::load('Client/recent',$data);
            }else{
                header('location:' . BURL . 'passenger/login');
            }

    }
    public function cancelled($id)
    {
        $res =New Reservation();
        $res->cancelling($id);
        header('location:' . BURL . 'client/lastBooking');
    
    }
    public function viewTicket($id){
        $ticket= New Reservation();
        $data['ticket']=$ticket->selectTicket($id);
        // var_dump($data);
        View::load('client/viewTicket',$data);
    }
      
  public function report()
  {

    if (isset($_SESSION['client'])) {
      if (isset($_POST['submit'])) {

        $name = $_POST['name'];
        $email = $_POST['email'];
        $message = $_POST['message'];
          $data= array("name" => $name, "email" => $email, "message" => $message);
          // echo '<pre>';
          // print_r($data); 
          // echo '</pre>';
            $mss=New Report();
            if($mss->insertReport($data))
            {
                
                View::load('client/contact');
            }else{
                View::load('client/contact',["success"=>"Message sent Successfully"]);
            }

    
        }
       
      
    } else {

        header('location:' . BURL . 'Passenger/login');
    }
}
public function editProfile(){
    if (isset($_SESSION['client'])) {
        
      $fullname = trim($_POST['name']);
      $email = trim($_POST['email']);
      $nPass = trim($_POST['n-pass']);
      $cPass = trim($_POST['c-pass']);
      if($nPass !=$cPass)
      {
        View::load('client/profile',['success'=>'Your New password is not match the confirm password']);
        exit;
      }
      if(empty($nPass))
      {
        $nPass= $_SESSION['ClientPassword'];
      }
      $data = array("fullName" => $fullname, "email" => $email, "password" => $nPass);
    //     var_dump($data);
    //    exit;
      $ad= New Client();
        $data['infos']= $ad->getClInfoEdit($_SESSION['clientId'],$data);
        //  echo '<pre>';
        //  print_r($ad->getAdInfo($_SESSION['email']));
        //  echo'</pre>';
        $_SESSION['clientName']=$fullname;  
        $_SESSION['client']= $email;  
        $_SESSION['ClientPassword']= $nPass;  
        
        header('location:' . BURL . 'client/profile');
      }else{
        header('location:' . BURL . 'passenger/login');
      }
  }

}