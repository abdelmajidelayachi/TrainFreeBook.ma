<?php include(VIEWS . 'inc/header.php'); ?>
<title>Login</title>
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
            <a class="nav-link " aria-current="page" href="<?= 'home' ?>">Home</a>
          </li>
          <li class="nav-item px-4 py-1">
            <a class="nav-link" href="booking">My Bookings</a>
          </li>

          <?php else: ?>
            <li class="nav-item px-4 py-1 ">
            <a class="nav-link " aria-current="page" href="<?= 'home' ?>">Home</a>
          </li>
          <!-- <li class="nav-item px-4 py-1">
            <a class="nav-link" href="booking">My Bookings</a>
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
              <a class="nav-link active" aria-current="page" href="<?= 'login' ?>">Login</a>
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
<div class="container p-5" style="height:550px">
    <div class="row my-4">
        <div class="col-md-6 mx-auto ">
            <div class="card">
                <div class="card-header">
                    <h3 class="text-center p-1">Login</h3>
                </div>
                <div class="card-body bg-light">
                    <form method="post" action="<?php url('passenger/loginCheck'); ?>" class="mr-1">
                        <div class="form-group">
                            <input class="form-control" type="email" placeholder="Email" name="email" require>
                        </div>
                        <div class="form-group">
                            <input class="form-control mt-2" type="password" placeholder="Mot de passe" name="password" require>
                        </div>
                        <button name="submit" type="submit" class="btn btn-sm btn-primary mt-4 px-2">login</button>
                    </form>
                </div>
                <div class="card-footer">
                    <a href="<?= 'index' ?>" class="btn btn-link">Sign Up</a>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include(VIEWS . 'inc/footer.php'); ?>