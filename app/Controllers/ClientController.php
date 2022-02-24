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
   
    public function booking()
    {
        if (isset($_SESSION['client'])) {
        View::load('Client/booking');
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
      
}