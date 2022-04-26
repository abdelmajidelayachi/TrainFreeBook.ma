<?php include(VIEWS . 'inc/header.php'); ?>
<title>Booking</title>
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
            <a class="nav-link" href="booking">My Bookings</a>
          </li>

          <?php else: ?>
            <li class="nav-item px-4 py-1 ">
            <a class="nav-link " aria-current="page" href="<?= 'home' ?>">Home</a>
          </li>
          <li class="nav-item px-4 py-1">
            <a class="nav-link active" href="<?= 'booking' ?>">My Bookings</a>
          </li>

          <?php endif; ?>
          <?php if (isset($_SESSION['client'])) : ?>
          <li class="nav-item px-4 py-1">
            <a class="nav-link" href="<?= 'contact' ?>">contact Us</a>
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
            <?php else: ?>
              <li class="nav-item px-4 py-1">
              <a class="nav-link" aria-current="page" href="<?= 'logout' ?>">Logout</a>
            </li>
            <?php endif; ?>

          </ul>
        </ul>
      </div>

    </div>
  </nav>
<br><br><br>

<main>
<div class="container">
  <div class="row g-5">
    <div class="col-md-5 col-lg-4 order-md-last">
      <h4 class="d-flex justify-content-between align-items-center mb-3">
        <span class="text-primary font-weight-normal p-1">Number of places</span>
        <span class="badge bg-light rounded-pill">
          <form action="<?php      
          url('passenger/bookingT/'.      
         $travel['travelId']
        );?>" method="post">
            <input  type="number" style="background:white;" class="btn" name="ticket-number" id="ticket" value="<?=$travel["places"];?>"  min="1" max="10">
            <input type="submit" class="btn btn-success" name="submit" value="choose">

          </form>



        </span>
      </h4>
      <ul class="list-group mb-3">
        <?php if(isset($travel)&& !empty($travel) ): 
          //var_dump($travel);
          ?>
        <li class="list-group-item d-flex justify-content-between lh-sm">
          <div>
            <h6 class="my-0 pb-2">From : <span><?= $travel[
              'destinationStart'
            ] ;?></span> </h6>
            <h6 class="my-0 py-2">TO : <span><?= $travel[
              'destinationEnd'
            ] ;?></span> </h6>

          </div>
          <span class="text-muted"><?= $travel[
              'price'
            ] ;?> <strong>DH</strong></span>
        </li>
        <?php endif;
    //    echo "<pre>";
    //    print_r($travel);
    // echo "</pre>";
          
    //       echo $travel["places"];
        
        ?>
        

        <li class="list-group-item d-flex justify-content-between">
          <span>Total (DH)</span>
          <strong><?= $travel[
              'price'
            ]* $travel["places"]; ?>DH </strong>
        </li>
      </ul>


    </div>
    <div class="col-md-7 col-lg-8">
      <h4 class="mb-3 p-1">Email Address </h4>
      <form method="POST" action="<?php url('passenger/ticket') ?>">
        <div class="row g-3">


          <div class="col-sm-6">
            <label for="lastName" class="form-label">Full name <span class="text-muted">(Optional)</span></label>
            <input type="text" class="form-control" id="lastName" placeholder="Abdelmajid El Ayachi" value="">

          </div>


          <div class="col-12">
            <label for="email" class="form-label">Email </label>
            <input type="email" class="form-control" id="email" placeholder="you@example.com">
            <div class="invalid-feedback">
              Please enter a valid email address for shipping updates.
            </div>
          </div>

            <input type="hidden" name="destinationStart" value="<?= $travel[
              'destinationStart'
            ] ;?>">
            <input type="hidden" name="destinationEnd" value="<?= $travel[
              'destinationEnd'
            ] ;?>">
            <input type="hidden" name="departureTime" value="<?= $travel[
              'departureTime'
            ] ;?>">
            <input type="hidden" name="arrivalTime" value="<?= $travel[
              'arrivalTime'
            ] ;?>">
            <input type="hidden" name="price" value="<?= $travel[
              'price'
            ] ;?>">
            <input type="hidden" name="status" value="<?= $travel[
              'status'
            ] ;?>">
            <input type="hidden" name="trainId" value="<?= $travel[
              'trainId'
            ] ;?>">
            <input type="hidden" name="places" value="<?= $travel[
              'places'
            ] ;?>">
            <input type="hidden" name="travelId" value="<?= $travel[
              'travelId'
            ] ;?>">
          




          <!-- <hr class="my-4">

          <h4 class="mb-3 pb-1">Payment</h4>

          <div class="my-3">
            <div class="form-check">
              <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required>
              <label class="form-check-label" for="credit">Credit card</label>
            </div>
            <!-- <div class="form-check">
              <input id="debit" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="debit">Debit card</label>
            </div> 
            <div class="form-check">
              <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="paypal">PayPal</label>
            </div>
          </div>

          <div class="row gy-3">
            <div class="col-md-6">
              <label for="cc-name" class="form-label">Name on card</label>
              <input type="text" class="form-control" id="cc-name" placeholder="" required>
              <small class="text-muted">Full name as displayed on card</small>
              <div class="invalid-feedback">
                Name on card is required
              </div>
            </div>

            <div class="col-md-6">
              <label for="cc-number" class="form-label">Credit card number</label>
              <input type="text" class="form-control" id="cc-number" placeholder="" required>
              <div class="invalid-feedback">
                Credit card number is required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-expiration" class="form-label">Expiration</label>
              <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
              <div class="invalid-feedback">
                Expiration date required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-cvv" class="form-label">CVV</label>
              <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
              <div class="invalid-feedback">
                Security code required
              </div>
            </div>
          </div> -->

          <hr class="my-4">
          <button class="w-100 btn btn-primary btn-lg" type="submit" name="submit">Download tickets</button>
      </form>
    </div>
  </div>
  </div>
</main>
<br><br><br><br><br><br>
<?php include(VIEWS . 'inc/footer.php'); ?>