<?php

class PassengerController
{

  public function login()
  {
    if (!isset($_SESSION['client'])) {
      View::load('Passenger/login');
    } else {
      header('location:' . BURL . 'client/home');
    }
  }

  public function index()
  {
    if (!isset($_SESSION['client'])) {
      View::load('Passenger/index');
    } else {
      header('location:' . BURL . 'Passenger/home');
    }
  }

  public function booking()
  {
    if (!isset($_SESSION['client'])) {
      View::load('Passenger/booking');
    } else {
      header('location:' . BURL . 'Passenger/home');
    }
  }


  public function tickets()
  {
    if (!isset($_SESSION['client'])) {
      $data['tickets'] = $_SESSION['guest'];
      // var_dump($data);
      View::load('Passenger/tickets',$data);
    }else{
      $data['tickets'] = $_SESSION['guest'];
      // var_dump($data);
      View::load('client/tickets',$data);
    }
    
  }


  public function ticket()
  {

    if (!isset($_SESSION['client'])) {
      if (isset($_POST['submit'])) {

        $destinationStart = $_POST['destinationStart'];
        $destinationEnd = $_POST['destinationEnd'];
        $departureTime = $_POST['departureTime'];
        $arrivalTime = $_POST['arrivalTime'];

        $price = $_POST['price'];
        $status = $_POST['status'];
        $trainId = $_POST['trainId'];
        $travelId = $_POST['travelId'];
        $places = $_POST['places'];
        $valid = 1;
        for ($i = 0; $i < $places; $i++) {
          $ticketSeat = new Reservation();

          if (count($ticketSeat->recent($travelId)) > 0) {
            // echo($this->recent($data)["MAX(seat)"]);
            $seat = $ticketSeat->recent($travelId)["MAX(seat)"];
          } else {
            $seat = 1;
          }
          $seat = $seat + 1;
          $code = 'T' . $trainId . ' V' . $travelId . ' S' . $seat;

          $data= array("destinationStart" => $destinationStart, "destinationEnd" => $destinationEnd, "departureTime" => $departureTime, "arrivalTime" => $arrivalTime, "price" => $price, "status" => $status, "trainId" => $trainId, "places" => $places, "valid" => $valid, "code" => $code, "seat" => $seat, "travelId" => $travelId);
          // echo '<pre>';
          // print_r($data); 
          // echo '</pre>';


          $res = new Reservation();

          
           $booked= $res->book($data);
          
          if($booked){
           
          }else{

            
          $resId = new Reservation();
          $IdRes= $resId->getLastId()["MAX(reservationId)"];
          //  var_dump( $IdRes);
          $data['reservationId']= $IdRes;
           
           $ticket= New Ticket();
           $ticket->insertTicket($data);
          }
          $tData[$i]=$data;

        }
       
         $_SESSION['guest']=$tData;
        header('location:' . BURL . 'Passenger/tickets');



        // View::load('Passenger/tickets',$data);

      }
    } else {
      
      if (isset($_POST['submit'])) {
        
        $destinationStart = $_POST['destinationStart'];
        $destinationEnd = $_POST['destinationEnd'];
        $departureTime = $_POST['departureTime'];
        $arrivalTime = $_POST['arrivalTime'];

        $price = $_POST['price'];
        $status = $_POST['status'];
        $trainId = $_POST['trainId'];
        $travelId = $_POST['travelId'];
        $places = $_POST['places'];
        $valid = 1;
        $email = $_SESSION['client'];
        for ($i = 0; $i < $places; $i++) {
          $ticketSeat = new Reservation();

          if (count($ticketSeat->recent($travelId)) > 0) {
            // echo($this->recent($data)["MAX(seat)"]);
            $seat = $ticketSeat->recent($travelId)["MAX(seat)"];
          } else {
            $seat = 1;
          }
          $seat = $seat + 1;
          $code = 'T' . $trainId . ' V' . $travelId . ' S' . $seat;

          $data= array("destinationStart" => $destinationStart, "destinationEnd" => $destinationEnd, "departureTime" => $departureTime, "arrivalTime" => $arrivalTime, "price" => $price, "status" => $status, "trainId" => $trainId, "places" => $places, "valid" => $valid, "code" => $code, "seat" => $seat, "travelId" => $travelId, "email" => $email);
          echo '<pre>';
          print_r($data); 
          echo '</pre>';


          $res = new Reservation();

          
           $booked= $res->book($data);
          
          if($booked){
           
          }else{

            
          $resId = new Reservation();
          $IdRes= $resId->getLastId()["MAX(reservationId)"];
          //  var_dump( $IdRes);
          $data['reservationId']= $IdRes;
           
           $ticket= New Ticket();
           $ticket->insertTicket($data);
          }
          $tData[$i]=$data;

        }
       
         $_SESSION['guest']=$tData;
        header('location:' . BURL . 'client/tickets');
    }
  }
  }


  public function bookingT($id)
  {
    if (!isset($_SESSION['client'])) {


      if (isset($_POST['submit'])) {
        $places = trim($_POST['ticket-number']);
        if ($places > 0 && $places <= 10) {
          $trip = new Travel();
          $data['travel'] = $trip->getTravel($id);
          $data['travel'] += ["places" => $places];


          // var_dump($data);


          View::load('Passenger/booking', $data);
        }
      } else {
        $places = 1;
        if ($places > 0 && $places <= 10) {
          $trip = new Travel();
          $data['travel'] = $trip->getTravel($id);
          $data['travel'] += ['places' => $places];
          // var_dump($data);

          View::load('Passenger/booking', $data);
        }
      }
    } else {
      if (isset($_POST['submit'])) {
        $places = trim($_POST['ticket-number']);
        if ($places > 0 && $places <= 10) {
          $trip = new Travel();
          $data['travel'] = $trip->getTravel($id);
          $data['travel'] += ["places" => $places];


          // var_dump($data);


          View::load('client/booking', $data);
        }
      } else {
        $places = 1;
        if ($places > 0 && $places <= 10) {
          $trip = new Travel();
          $data['travel'] = $trip->getTravel($id);
          $data['travel'] += ['places' => $places];
          // var_dump($data);

          View::load('client/booking', $data);
        }
      }
    }
  }

  public function numberPlaces($id)
  {
    if (!isset($_SESSION['client'])) {
      if (isset($_POST['submit'])) {
        $places = trim($_POST['ticket-number']);
        if ($places > 0 && $places <= 10) {
          $trip = new Travel();
          $data['travel'] = $trip->getTravel($id);
          $data += ["places" => $places];

          // var_dump($data);

          View::load('Passenger/booking', $data);
        }
      }
    } else {

      header('location:' . BURL . 'client/home');
    }
  }


  public function searchTrip()
  {

    if (!isset($_SESSION['client'])) {
      if (isset($_POST['submit'])) {
        $departure = trim($_POST['departure']);
        $arrival = trim($_POST['arrival']);
        $date = trim($_POST['date']);

        $data = array("departure" => $departure,  "arrival" => $arrival, "dates" => $date);
        $db = new Travel();
        if (count($db->searchTravel($data))) {
          $data['travels'] = $db->searchTravel($data);
          // var_dump($data);

          View::load('Passenger/home', $data);
        } else {
          $data['travels'] = $db->searchTravel($data);
          // var_dump($data);
          View::load('Passenger/home', $data);
        }
      } else {

        header('location:' . BURL . 'client/home');
      }
    }else{
      if (isset($_POST['submit'])) {
        $departure = trim($_POST['departure']);
        $arrival = trim($_POST['arrival']);
        $date = trim($_POST['date']);

        $data = array("departure" => $departure,  "arrival" => $arrival, "dates" => $date);
        $db = new Travel();
        if (count($db->searchTravel($data))) {
          $data['travels'] = $db->searchTravel($data);
          // var_dump($data);

          View::load('client/home', $data);
        } else {
          $data['travels'] = $db->searchTravel($data);
          // var_dump($data);
          View::load('client/home', $data);
        }
      } else {

        header('location:' . BURL . 'client/home');
      }
    }
  }
  public function home()
  {
    if (!isset($_SESSION['client'])) {

      View::load('Passenger/home');
    } else {
      header('location:' . BURL . 'client/home');
    }
  }
  public function goHome()
  {

    header('location:' . BURL . 'Passenger/home');
  }
  public function register()
  {
    //if (isset($_SESSION['client'])) {
    if (!isset($_SESSION['client'])) {
      if (isset($_POST['submit'])) {
        $fullName = trim($_POST['fist-name']) . ' ' . trim($_POST['last-name']);
        $email = trim($_POST['email']);
        $password = trim($_POST['pass']);
        $confPassword = trim($_POST['confirm-pass']);

        if ($password == $confPassword) {
          $data = array("fullName" => $fullName,  "email" => $email, "password" => $password);
          //   var_dump($data);

          $db = new Client();
          $db->insertClient($data);
          header('location:' . BURL . 'passenger/login');
        } else {

          header('location:' . BURL . 'passenger/index');
        }
      }
    } else {
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
            $dt=$init->getClient($data);

            $_SESSION['client']=$dt['email'];
            $_SESSION['clientName']=$dt['fullName'];
            $_SESSION['clientId']=$dt['clientId'];
            $_SESSION['password']=$dt['password'];

            header('location:' . BURL . 'client/home');
          } else {
            echo '<script>alert("Invalid inputs");</script>';
            header('location:' . BURL . 'passenger/login');
          }
        }
      }
    } else {
      header('location:' . BURL . 'client/home');
    }
  }


  public function logout()
  {
    if (isset($_SESSION['client'])) {
      session_destroy();
      header('location:' . BURL . '');
    } else {
      header('location:' . BURL . 'passenger/login');
    }
  }
}
