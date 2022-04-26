<?php include(VIEWS . 'inc/header.php'); ?>
<title>Sign Up</title>
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
        
        
          <li class="nav-item px-4 py-1 ">
            <a class="nav-link " aria-current="page" href="<?= 'home' ?>">Home</a>
          </li>
       

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
              <a class="nav-link active" aria-current="page" href="<?= 'login' ?>">Sign Up</a>
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
<div class="container p-5" >
    <div class="row my-4">
        <div class="col-md-6 mx-auto">
            <div class="card">
                <div class="card-header">
                    <h4 class="text-center p-1">Sign Up</h4>
                </div>
                <div class="card-body bg-light">
                    <form method="post" action="<?php url('passenger/register'); ?>" class="mr-1" >
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="First name" name="fist-name" require>
                        </div>
                        <?php if (isset($ErrorFirstName)) : ?>
              <div class=" alert-danger" role="alert">
                <h6 class="alert-heading p-1"><?= $ErrorFirstName;?></h6>


              </div>
            <?php endif; ?>
                        <div class="form-group mt-3">
                            <input class="form-control" type="text" placeholder="Second name" name="last-name" require>
                        </div>
                        <?php if (isset($ErrorLastName)) : ?>
              <div class=" alert-danger" role="alert">
                <h6 class="alert-heading p-1"><?= $ErrorLastName;?></h6>


              </div>
            <?php endif; ?>
                        <div class="form-group mt-3">
                            <input class="form-control" type="email" placeholder="Email" name="email" require>
                        </div>
                        <?php if (isset($ErrorEmail)) : ?>
              <div class=" alert-danger" role="alert">
                <h6 class="alert-heading p-1"><?= $ErrorEmail;?></h6>


              </div>
            <?php endif; ?>
            <?php if (isset($emailExist)) : ?>
              <div class=" alert-danger" role="alert">
                <h6 class="alert-heading p-1"><?= $emailExist;?></h6>


              </div>
            <?php endif; ?>
                        <div class="form-group mt-3">
                            <input class="form-control" type="password" placeholder="Enter password" name="pass" require>
                        </div>
                        <?php if (isset($ErrorPassword)) : ?>
              <div class=" alert-danger" role="alert">
                <h6 class="alert-heading p-1"><?= $ErrorPassword;?></h6>


              </div>
            <?php endif; ?>
                        <div class="form-group mt-3">
                            <input class="form-control" type="password" placeholder="Confirm password" name="confirm-pass" require>
                        </div>
                        <?php if (isset($passNotConf)) : ?>
              <div class=" alert-danger" role="alert">
                <h6 class="alert-heading p-1"><?= $passNotConf;?></h6>


              </div>
            <?php endif; ?>
                        <button name="submit"   class="btn btn-sm btn-primary mt-4">Sign Up</button>
                    </form>
                </div>
                <div class="card-footer">   
                    <a href="<?= 'login' ?>" class="btn btn-link">Login</a>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include(VIEWS . 'inc/footer.php'); ?>