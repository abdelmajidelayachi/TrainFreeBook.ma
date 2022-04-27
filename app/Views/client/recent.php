<?php include(VIEWS . 'inc/header.php'); ?>

<title>my Bookings</title>
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light" id="Header">
    <div class="container-fluid">
      <a class="navbar-brand px-5" href="#"><img src="/assets/images/logo.svg" alt="logo"></a>
      <button class="navbar-toggler mx-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>


      <div class="collapse navbar-collapse justify-content-end " id="navbarNavDropdown">
        <ul class="navbar-nav ">
          <?php if (isset($_SESSION['client'])) : ?>
            <li class="nav-item px-4 py-1 ">
              <a class="nav-link " aria-current="page" href="<?= 'home' ?>">Home</a>
            </li>
            <li class="nav-item px-4 py-1">
              <a class="nav-link active" href="lastBooking">My Bookings</a>
            </li>

          <?php else : ?>
            <li class="nav-item px-4 py-1 ">
              <a class="nav-link " aria-current="page" href="<?= 'home' ?>">Home</a>
            </li>
            <li class="nav-item px-4 py-1">
              <a class="nav-link active" href="<?= 'booking' ?>">My Bookings</a>
            </li>

          <?php endif; ?>
          <?php if (isset($_SESSION['client'])) : ?>
            <li class="nav-item px-4 py-1">
              <a class="nav-link " href="<?= 'contact' ?>">contact Us</a>
            </li>
            <li class="nav-item px-4 ">
              <a class="nav-link" href="<?= 'profile' ?>"><i class="fa fa-2x fa-user"></i></i></a>
            </li>
          <?php endif; ?>
          <ul class="navbar-nav ">
            <?php if (!isset($_SESSION['client'])) : ?>
              <li class="nav-item px-4 py-1">
                <a class="nav-link" aria-current="page" href="<?= 'login' ?>">Login</a>
              </li>
            <?php else : ?>
              <li class="nav-item px-4 py-1">
                <a class="nav-link" style="color:red;" aria-current="page" href="<?= 'logout' ?>">Logout</a>
              </li>
            <?php endif; ?>

          </ul>
        </ul>
      </div>

    </div>
  </nav>
  <br><br><br>

  <main style=" min-height: 52vh;">
    <div class="container">
      <div class="row g-5">
        <div class="col-md-5 col-lg-4 order-md-last">



          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-primary p-1">Recent booking</span>

          </h4>

          <?php foreach ($RBookings as $RBooking) :

            // echo '<pre>';
            // print_r($RBooking);
            // echo '</pre>';
          ?>

            <ul class="list-group mb-3 d-flex">
              <li class="list-group-item lh-sm">
                <div class="d-flex justify-content-between p-1">

                  <h6 class="my-0 pb-2">From : <span><?= $RBooking['destinationStart']; ?></span> </h6>
                  <h6 class="my-0 pb-2">At : <span><?= date("H", strtotime($RBooking['departureTime'])) . "H" . date("i", strtotime($RBooking['departureTime'])) . "min"; ?></span> </h6>

                </div>
                <div class="d-flex justify-content-between p-1">

                  <h6 class="my-0 py-2">TO : <span><?= $RBooking['destinationEnd']; ?></span> </h6>
                  <h6 class="my-0 py-2">At : <span><?= date("H", strtotime($RBooking['arrivalTime'])) . "H" . date("i", strtotime($RBooking['arrivalTime'])) . "min"; ?></span> </h6>

                </div>

                <div class="d-flex justify-content-between p-1">

                  <h6 class="my-0 pb-2">Day : <span><?= date("F d Y", strtotime($RBooking['departureTime'])); ?></span> </h6>
                  <h6 class="my-0 pb-2">Price : <span><?= $RBooking['price'] ?></span>DH </h6>
                </div>

                <div class="d-flex justify-content-between p-1">

                  <?php // echo (date("Y-m-d H:i:s")-date("Y-m-d H:i:s",strtotime($RBooking['bookingTime'])))
                  // date_default_timezone_set('Casablanca');
                  date_default_timezone_set('africa/casablanca');
                   $departureTime  = new DateTime(date("Y-m-d H:i:s",strtotime($RBooking['departureTime'])));
                   $arrivalTime  = new DateTime(date("Y-m-d H:i:s",strtotime($RBooking['arrivalTime'])));
                   $now = new DateTime(date("Y-m-d H:i:s"));
                  // print_r($now) ;
                  // exit;
                   
                 
                   $intvl = $departureTime->diff($now);

 
                   $timeLeft= $intvl->y * 365 * 24 * 60 + $intvl->m * 30 * 24 * 60 + $intvl->d * 24 * 60 + $intvl->h * 60 + $intvl->i;
                  //  echo date('m/d/Y H:i:s', time());
                  //  exit;

                  if($RBooking['Valid']==0):?>
                  <span class="text-muted"><button class="btn btn-danger"> Cancelled </button></span> 
                  <span class="text-muted"><a href="<?php url('client/deleting/'.$RBooking['reservationId']);?>"> <button class="btn btn-danger"><i class="fa fa-trash fa-lg p-1"></i></button></a></span> 
                  <?php else:?>
                    <?php
                  if ($RBooking['status']==0) :
                    ?>

                    <span class="text-muted"><button class="btn btn-danger" style="pointer-events: none;">Trip cancelled</button></span>
                    <span class="text-muted"><a href="<?php url('client/deleting/'.$RBooking['reservationId']);?>"> <button class="btn btn-danger"><i class="fa fa-trash fa-lg p-1"></i></button></a></span> 
                    <?php else: ?>
                      <span class="text-muted"><a href="<?php url('client/viewTicket/'.$RBooking['reservationId']);?>"><button class="btn btn-primary">View ticket</button></a></span>
                      <h1><?php $timeLeft ?></h1>

                      <?php if($timeLeft>60 && $departureTime>$now): ?>
                        <span class="text-muted"><a href="<?php url('client/cancelled/'.$RBooking['reservationId']);?>"><button class="btn btn-warning"> Cancel </button></a></span>
                       
                      <?php elseif($arrivalTime > $now):
                        
                    ?>
                       <span class="text-muted"><button class="btn btn-success" style="pointer-events: none;"> Confirmed</button></span>
                      <?php else:
                         ?>

                        <span class="text-muted"><button class="btn btn-secondary" style="pointer-events: none;"> Expired </button></span>
                        <?php  
                        endif;
                  ?>
                   
                   
                  <?php
                  endif;
                ?> 
                 
                <?php endif;
                   ?>
                
                   
                 
                          
                  <!-- // $bookingTime  = new DateTime(date("Y-m-d H:i:s",strtotime($RBooking['departureTime'])));
                  // $now = new DateTime(date("Y-m-d H:i:s"));
                  // $intvl = $bookingTime->diff($now);

                  // $timeLeft= $intvl->y * 365 * 24 * 60 + $intvl->m * 30 * 24 * 60 + $intvl->d * 24 * 60 + $intvl->h * 60 + $intvl->i;
                  // echo $timeLeft;
                    if($timeLeft>60):
                  ?>
               <span class="text-muted"><a href="<php url('client/cancelled/'.$RBooking['reservationId']);?>"><button class="btn btn-warning"> Cancel </button></a></span>
                  <php else:
                    if($arrivalTime<$now){
                    ?>
                       <span class="text-muted"><button class="btn btn-success"> Confirmed </button></span>
                      <php }else{?>

                        <span class="text-muted"><button class="btn btn-success"> Expired </button></span>
                        <php  
                  }?>
                  
                    
                   <span class="text-muted"><button class="btn btn-danger"> Cancelled </button></span>  -->
                  
                  
                </div>
              </li>



            </ul>
          <?php endforeach;
          // echo date("Y-m-d H:i:s");


          ?>
         
          
        </div>
        <div class="col-md-7 col-lg-8">
          <h4 class="mb-3 p-1">For book New trip </h4>




          <a href="
          home"><button class="w-100 btn btn-primary btn-lg" name="submit" type="submit">Select Trip</button></a>

        </div>
      </div>
  </main>
  <br><br><br>
  <?php include(VIEWS . 'inc/footer.php'); ?>
