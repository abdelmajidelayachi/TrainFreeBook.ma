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

}