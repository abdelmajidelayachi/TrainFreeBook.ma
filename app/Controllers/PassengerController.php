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
      View::load('Passenger/tickets', $data);
    } else {
      $data['tickets'] = $_SESSION['guest'];
      // var_dump($data);
      View::load('client/tickets', $data);
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
        $train= new Train();
        
        $train = $train->getTrain($trainId);
        
        for ($i = 0; $i < $places; $i++) {
          $ticketSeat = new Reservation();

          if (count($ticketSeat->recent($travelId)) > 0) {
            // echo($this->recent($data)["MAX(seat)"]);
            $seat = $ticketSeat->recent($travelId)["MAX(seat)"];
              if(($seat + $places) > $train['seatNumber']){
                $error = $train['seatNumber'] - $seat;
                
                
                View::load('passenger/Home', ['errorSeat'=>$error]);
                exit;
              }
          } else {
            $seat = 1;
          }
          $seat = $seat + 1;
          $code = 'T' . $trainId . ' V' . $travelId . ' S' . $seat;

          $data = array("destinationStart" => $destinationStart, "destinationEnd" => $destinationEnd, "departureTime" => $departureTime, "arrivalTime" => $arrivalTime, "price" => $price, "status" => $status, "trainId" => $trainId, "places" => $places, "valid" => $valid, "code" => $code, "seat" => $seat, "travelId" => $travelId,"email"=>'');
          // echo '<pre>';
          // print_r($data); 
          // echo '</pre>';
          // exit;

          $res = new Reservation();


          $booked = $res->book($data);

          // exit;

          if ($booked) {
          } else {


            $resId = new Reservation();
            $IdRes = $resId->getLastId()["MAX(reservationId)"];
            //  var_dump( $IdRes);
            $data['reservationId'] = $IdRes;

            $ticket = new Ticket();
            $ticket->insertTicket($data);
          }
          $tData[$i] = $data;
        }

        $_SESSION['guest'] = $tData;
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
        $train= new Train(); 
        $train = $train->getTrain($trainId);
        $client_id = $_SESSION['client_id'];
        // echo $client_id ; 
        // exit;
        
        for ($i = 0; $i < $places; $i++) {
          $ticketSeat = new Reservation();
          if (count($ticketSeat->recent($travelId)) > 0) {
            // echo($this->recent($data)["MAX(seat)"]);
            $seat = $ticketSeat->recent($travelId)["MAX(seat)"];
              if(($seat + $places) > $train['seatNumber']){
                $error = $train['seatNumber'] - $seat;
                
                
                View::load('client/Home', ['errorSeat'=>$error]);
                exit;
              }

         
          } else {
            $seat = 1;
          }
          $seat = $seat + 1;
          $code = 'T' . $trainId . ' V' . $travelId . ' S' . $seat;

          $data = array("destinationStart" => $destinationStart, "destinationEnd" => $destinationEnd, "departureTime" => $departureTime, "arrivalTime" => $arrivalTime, "price" => $price, "status" => $status, "trainId" => $trainId, "places" => $places, "valid" => $valid, "code" => $code, "seat" => $seat, "travelId" => $travelId, "client_id" => $client_id);
          // echo '<pre>';
          // print_r($data);
          // echo '</pre>';


          $res = new Reservation();


          $booked = $res->book($data);


          if ($booked) {
          } else {


            $resId = new Reservation();
            $IdRes = $resId->getLastId()["MAX(reservationId)"];
            //  var_dump( $IdRes);
            $data['reservationId'] = $IdRes;

            $ticket = new Ticket();
            $ticket->insertTicket($data);
          }
          $tData[$i] = $data;
        }

        $_SESSION['guest'] = $tData;
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
    } else {
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

        if (empty(trim($_POST['fist-name']))) {
          View::load('passenger/index', ["ErrorFirstName" => "First name is required"]);
          exit;
        }
        if (empty(trim($_POST['last-name']))) {
          View::load('passenger/index', ["ErrorLastName" => "Last name is required"]);
          exit;
        }
        if (empty($email)) {
          View::load('passenger/index', ["ErrorEmail" => "email is required"]);
          exit;
        }
        if (empty($password)) {
          View::load('passenger/index', ["ErrorPassword" => "password is required"]);
          exit;
        }
        if ($password === $confPassword) {
          $mail = array('email' => $email);
          $cl = new Client();
          if (($cl->getClient($mail)) == false) {
          } else {
            View::load('passenger/index', ['emailExist' => 'This email is already used']);
            exit;
          }
          $data = array("fullName" => $fullName,  "email" => $email, "password" => $password);
          //   var_dump($data);

          $db = new Client();
          $db->insertClient($data);
          View::load('passenger/login', ["regSuccess" => "Registration completed successfully!!"]);
        } else {
          View::load('passenger/index', ['passNotConf' => 'Your  password is not match the confirm password']);
        }
      }
    } else {
      header('location:' . BURL . 'client/home');
    }
  }

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
            $dt = $init->getClient($data);

            $_SESSION['client'] = $dt['email'];
            $_SESSION['client_id']=$dt['clientId'];
     
            $_SESSION['clientName'] = $dt['fullName'];
            $_SESSION['clientId'] = $dt['clientId'];
            $_SESSION['password'] = $dt['password'];
            $_SESSION['profile']= $dt['profile'];

            header('location:' . BURL . 'client/home');
          } else {
            View::load('passenger/login', ['passOrEmailError' => 'Your password or your email is Incorrect']);
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
