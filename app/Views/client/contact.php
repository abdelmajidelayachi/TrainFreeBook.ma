<?php include(VIEWS . 'inc/header.php'); ?>

<title>Contact</title>
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
            <a class="nav-link" href="lastBooking">My Bookings</a>
          </li>

          <?php else: ?>
            <li class="nav-item px-4 py-1 ">
            <a class="nav-link " aria-current="page" href="<?= 'home' ?>">Home</a>
          </li>
          <li class="nav-item px-4 py-1">
            <a class="nav-link" href="<?= 'booking' ?>">My Bookings</a>
          </li>

          <?php endif; ?>
          <?php if (isset($_SESSION['client'])) : ?>
          <li class="nav-item px-4 py-1">
            <a class="nav-link active" href="<?= 'contact' ?>">contact Us</a>
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
              <a class="nav-link" aria-current="page" style="color:red;" href="<?= 'logout' ?>">Logout</a>
            </li>
            <?php endif; ?>

          </ul>
        </ul>
      </div>

    </div>
  </nav>

<div id="img-cont">

  <div class="container">

    <div class="container mt-5 p-5" id="form-search">
      <div class="row text-center">
     <h1 class="p-1" style="color:whitesmoke;"> CONTACT US</h1>
     <h3 class="p-1" style="color:whitesmoke;">We would love to hear from you...why not get in touch?</h3>

        </div>
      </div>
    </div>
  </div>

</div>
<br><br>
<div class="container">
  <div class="row">
    <div class="col-md-7 col-lg-8">
      <?php if(isset($success)): ?>
    <div class="alert alert-success" role="alert">
  <h4 class="alert-heading p-1">Message Sent!</h4>
  <p>Thank you for your message.</p>

</div>
<?php endif; ?>
      <form action="<?php url('client/report') ?>" method="post">
      <div class="col-sm-12 mb-3">
        <label for="lastName" class="form-label">Full name </label>
        <input type="text" name="name" class="form-control" id="lastName" placeholder="Abdelmajid El Ayachi" value="" required>

      </div>
      <div class="my-3 ">
        <label for="exampleFormControlInput1" class="form-label">Email address</label>
        <input type="email" class="form-control" name="email" id="exampleFormControlInput1" placeholder="name@example.com" required>
      </div>
      <div class="my-3">
        <label for="exampleFormControlTextarea1" class="form-label">Message</label>
        <textarea class="form-control"  name="message" id="exampleFormControlTextarea1" rows="3" required></textarea >
      </div>
      <button type="submit" name="submit" class="btn btn-primary btn-lg px-3 mb-3">Send Message</button>
      </form>
    </div>
  </div>
</div>

<br><br><br>
<?php include(VIEWS . 'inc/footer.php'); ?>