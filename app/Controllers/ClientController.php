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
   
    // public function booking()
    // {
    //     if (isset($_SESSION['client'])) {
    //     View::load('Client/booking');
    //     }else{
    //         header('location:' . BURL . 'passenger/login');
    //     }
   

    // }



    
    public function contact()
    {
        if (isset($_SESSION['client'])) {
        View::load('Client/contact');
        }else{
            header('location:' . BURL . 'passenger/login');
        }
    }
 

      
}