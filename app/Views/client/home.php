<?php


include(VIEWS . 'inc/header.php');

?>
<title>home</title>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light" id="Header">
    <div class="container-fluid">
      <a class="navbar-brand px-5" href="<?= 'home' ?>"><img src="/assets/images/logo.svg" alt="logo"></a>
      <button class="navbar-toggler mx-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
     
      
      <div class="collapse navbar-collapse justify-content-end " id="navbarNavDropdown">
        <ul class="navbar-nav ">
        <?php if (isset($_SESSION['client'])) : ?>
          <li class="nav-item px-4 py-1 ">
            <a class="nav-link active" aria-current="page" href="<?= 'home' ?>">Home</a>
          </li>
          <li class="nav-item px-4 py-1">
            <a class="nav-link" href="lastBooking">My Bookings</a>
          </li>

          <?php else: ?>
            <li class="nav-item px-4 py-1 ">
            <a class="nav-link active" aria-current="page" href="<?= 'home' ?>">Home</a>
          </li>
          <!-- <li class="nav-item px-4 py-1">
            <a class="nav-link" href="<= 'booking' ?>">My Bookings</a>
          </li> -->

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
<div id="img">

  <div class="container ">

    <div class="container mt-5 rounded" id="form-search">
      <div class="row">
        <div class="col-lg-6 col-xs-10 p-4" id="form">
          <form action="<?php url('client/searchTrip'); ?> " method="POST">
            <div class="form-group ">
              <label for="exampleInputEmail1">Departure station</label>
              <input type="text" class="form-control" id="exampleInputEmail1" name="departure" aria-describedby="emailHelp" placeholder="Departure station" required>

            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Arrival station</label>
              <input type="text" class="form-control"  name="arrival" id="exampleInputPassword1" placeholder="Arrival station" required>
            </div>
            <div class="form-group py-3">
              <label for="exampleInputPassword1">Date</label>
              <input type="date" class="form-control" name="date" id="exampleInputPassword2" placeholder="01/01/2022" required>
            </div>
            <button type="submit" name="submit" class="btn btn-primary">Search</button>
          </form>
        </div>

      </div>
    </div>
  </div>
</div>
            </div>
<br><br>
<?php 

if(isset($travels)&& !empty($travels)):

  ?>
<div class="container">
  <div class="row">
    <h3  class="p-1">Results : </h3>
    <div class="col-10 d-lg-flex justify-content-around">
      <div class="col-md-5 card-header mt-3 " style="background-color: #F52D70 ">
      <?php foreach($travels as $travel):?>
        Departs the : <?= date("Y-m-d",strtotime($travel['departureTime'])) ;?>   </div>
      <div class="col-md-5 card-header mt-3 " style="background-color: #F52D70 ">From <span><?= $travel['destinationStart'] ?></span> To <span><?= $travel['destinationEnd'] ?></span></div>
      <?php break; endforeach;?>
    </div>
  </div>
</div>

</div>

<div class="container table-responsive">

  <div class="table-responsive-lg">
    <table class="table table-hover ">
      <thead>
        <tr>
          <th scope="col-3">Departure </th>
          <th scope="col-3">Destination</th>
          <th scope="col-3">Price</th>

          <th scope="col-3"></th>
        </tr>
      </thead>
      <tbody>
        <?php foreach($travels as $travel):
      
          ?>
        <tr>
          <th><?= date("H",strtotime( $travel['departureTime']))."H". date("i",strtotime( $travel['departureTime']))."min"; ?></th>
          <td><?=  date("H",strtotime( $travel['arrivalTime']))."H". date("i",strtotime( $travel['arrivalTime']))."min"; ?></td>
          <td><?= $travel['price'] ?>DH </td>

          <td>
            <div class="d-grid gap-2 col-8 mx-auto text-nowrap">
              <button class="btn btn-primary" name="book" type="button"><a href="<?php url('client/bookingT/'.$travel['travelId']); ?>" style="text-decoration:none;color:white;" > BOOK NOW</a></button>
            </div>
          </td>
        </tr>
        
        <?php endforeach;?>
      </tbody>
    </table>
  </div>


</div>
<?php elseif(!isset($travels)):
  
  ?>
  <div class="container">
  <div class="text-center">
    
    <p class='mt-4 fs-2 text fw-bolder'>Select Your Trip information</p>
  </div>
  </div>
<?php else:
 
  
?>
<div class="container">
  <div class="text-center">
    <img src="../assets/images/notfound.png" class="rounded-circle mx-auto d-block img-fluid img-responsive" alt="...">
    <p class='mt-4 fs-2 text fw-bolder'>No Trip result found</p>
  </div>
  
</div>
  


<?php endif;?>









<div class="container text-center p-5">
  <div class="row">
    <div class="col-md-12">
      <h4 class="p-1">why us?</h4>
      <p>
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam culpa nobis ullam fugit praesentium numquam eligendi, molestiae ea corrupti consequuntur quia incidunt assumenda ipsa quisquam, totam voluptatibus illum corporis, harum nulla architecto dolore recusandae cumque repellat. Error ea unde officia est maxime praesentium itaque sapiente natus expedita hic repudiandae accusamus ipsam veritatis rem.
      </p>
    </div>
  </div>
</div>





<?php
include VIEWS . 'inc/footer.php';


?>