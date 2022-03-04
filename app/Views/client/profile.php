<?php include(VIEWS . 'inc/header.php'); ?>

<title>Profile</title>
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
            <a class="nav-link " href="lastBooking">My Bookings</a>
          </li>

          <?php else: ?>
            <li class="nav-item px-4 py-1 ">
            <a class="nav-link " aria-current="page" href="<?= 'home' ?>">Home</a>
          </li>
          <li class="nav-item px-4 py-1">
            <a class="nav-link " href="<?= 'booking' ?>">My Bookings</a>
          </li>

          <?php endif; ?>
          <?php if (isset($_SESSION['client'])) : ?>
          <li class="nav-item px-4 py-1">
            <a class="nav-link " href="<?= 'contact' ?>">contact Us</a>
          </li>
          <li class="nav-item px-4 ">
            <a class="nav-link active" href="<?= 'profile' ?>"><i class="fa fa-2x fa-user"></i></i></a>
          </li>
          <?php endif; ?>
          <ul class="navbar-nav ">
            <?php if (!isset($_SESSION['client'])) : ?>
            <li class="nav-item px-4 py-1">
              <a class="nav-link" aria-current="page" href="<?= 'login' ?>">Login</a>
            </li>
            <?php else: ?>
              <li class="nav-item px-4 py-1">
              <a class="nav-link" style="color:red;" aria-current="page" href="<?= 'logout' ?>">Logout</a>
            </li>
            <?php endif; ?>

          </ul>
        </ul>
      </div>

    </div>
  </nav>
<div class="container rounded bg-white mt-3">
    <div class="row">
        <div class="col-md-4 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" src="../assets/images/profile.jpg" width="90"><span class="font-weight-bold">EL AYACHI ABDELMAJID</span><span class="text-black-50">elayachiabdel2001@gmail.com</span><span>Morocco</span></div>
        </div>
        <div class="col-md-8">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-center align-items-center mb-1">
                   
                    <h2 class="text-right p-1"> Profile</h2>
                </div>
                <div class="row mt-2  g-3">
                    <div class="col-md-6"><input type="text" class="form-control" placeholder="first name" value="El Ayachi" ></div>
                    <div class="col-md-6"><input type="text" class="form-control" value="Abdelmajid" placeholder="Abdelmajid" ></div>
                </div>
               
                
                <div class="row mt-3 g-3">
                    <div class="col-md-6"><input type="text" class="form-control" placeholder="Bank Name" value="Bank of Morocco" ></div>
                    <div class="col-md-6"><input type="text" class="form-control" value="5043958409584095" placeholder="Account Number" ></div>
                </div>
                <div class="row mt-3  g-3">
                    <div class="col-md-6"><input type="text" class="form-control" placeholder="Email" value="elayachiabdel2001@gmail.com" ></div>
                    <div class="col-md-6"><input type="file" class="form-control"  ></div>
                </div>
                <div class="mt-5 text-right"><button class="btn btn-primary profile-button" type="button">Edit Profile</button></div>
            </div>
        </div>
    </div>
</div>
<br><br><br><br>


<script>
  

</script>

<?php include(VIEWS . 'inc/footer.php'); ?>