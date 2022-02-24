<?php

class HomeController
{
    public function index()
    {
    //     $data['title']= "Home Page";
    //     $data['content']="Content of home page";
    //    View::load('home',$data);
     // echo " this class is : ".__CLASS__." and method " .__METHOD__;
  
     if(isset($_POST['search']))
     {
            //  $departure = $_POST['name'];
            //  $arrival =$_POST['price'];
            // $date = $_POST['description'];
            //  $qty = $_POST['qty'];
          $db=new Travel();
        //   $dat=array(
        //       'destinationStart'=>$_POST['departure'],
        //       'destinationEnd'=>$_POST['arrival']
        //     //   'departureTime'=>$_POST['date']

        //   );
        //     $data['travels']=$db->searchTravel($dat);
        //     View::load('home',$dat);

        //     exit();
    }
        View::load('home');
    

    }

}