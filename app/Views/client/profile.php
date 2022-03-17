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
  <div class="container">


<div class="container rounded bg-white mt-3">
  <div class="row">
    <div class="col-md-4 border-right">
      <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" src="../uploads/<?= $_SESSION['profile']?>" width="90"><span class="font-weight-bold"><?= $_SESSION['clientName']; ?></span><span class="text-black-50"><?= $_SESSION['client']; ?></span><span>Morocco</span></div>
    </div>
    <div class="col-md-8">
      <div class="p-3 py-5">
        <form action="<?php url('client/editProfile'); ?>" method="post" enctype="multipart/form-data">
          <div class="d-flex justify-content-center align-items-center mb-1">

            <h2 class="text-right p-1"> Profile</h2>
          </div>
          <div class="row mt-2  g-3">
            <div class="col-md-6"><input type="text" name="name" class="form-control" placeholder="first name" value="<?= $_SESSION['clientName']; ?>" required></div>
            <div class="col-md-6"><input type="email" name="email" class="form-control" placeholder="Email" value="<?= $_SESSION['client']; ?>" required></div>
          </div>


          <div class="row mt-3 g-3">
            <div class="col-md-6"><input type="password" class="form-control" placeholder="New password" name="n-pass" value="" ></div>
            <div class="col-md-6"><input type="password" name="c-pass" class="form-control" value="" placeholder="confirm password" ></div>
            <?php if (isset($success)) : ?>
              <div class="alert alert-danger" role="alert">
                <h6 class="alert-heading p-1"><?= $success;?></h6>


              </div>
            <?php endif; ?>
          </div>
          <div class="row mt-3  g-3">

            <div class="col-md-6"> <input type="file" class="input-parts mt-3" name="profile" accept=".jpg,.jpeg,.png"></div>
          </div>
          <div class="mt-5 text-right"><button class="btn btn-primary profile-button" name="submit" type="submit">Edit Profile</button></div>
        </form>
      </div>

    </div>
  </div>
</div>
</div>

<br><br><br><br>


<script>
  

</script>

<?php include(VIEWS . 'inc/footer.php'); ?>