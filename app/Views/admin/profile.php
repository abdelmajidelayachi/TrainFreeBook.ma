<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <!-- iconic -->
  <link rel="stylesheet" href="../assets/style/dashboard.css" />
  <title>Dashboard</title>
</head>

<body>
  <div class="d-flex" id="wrapper">
    <!-- Sidebar -->
    <div class="bg-white" id="sidebar-wrapper">
      <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom"><img src="../assets/images/logo.svg" alt="logo">TrainFreeBook</div>
      <div class="list-group list-group-flush my-3">
        <a href="<?php url('admin/home') ?>" class="list-group-item list-group-item-action bg-transparent second-text "><i class="fas fa-tachometer-alt me-2"></i>Dashboard</a>

        <a href="<?php url('admin/clients') ?>" class="list-group-item list-group-item-action bg-transparent second-text fw-bold "><i class="fas fa-users me-2"></i>Clients</a>
        <a href="<?php url('admin/reports') ?>" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i class="fas fa-paperclip me-2"></i>Reports</a>
        <a href="<?php url('admin/profile') ?>" class="list-group-item list-group-item-action bg-transparent second-text fw-bold active "><i class="fas fa-users me-2"></i>Profile</a>


        <a href="<?php url('admin/logout'); ?>" class="list-group-item list-group-item-action bg-transparent text-danger fw-bold"><i class="fas fa-power-off me-2"></i>Logout</a>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">
      <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
        <div class="d-flex align-items-center">
          <i class="fas fa-align-left primary-text fs-4 me-3" id="menu-toggle"></i>
          <h2 class="fs-2 m-0">Dashboard</h2>
        </div>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle second-text fw-bold" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="fas fa-user me-2"></i><?= $_SESSION['AdminName']; ?>
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">Profile</a></li>
                <li><a class="dropdown-item" href="<?php url('admin/logout'); ?>">Logout</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>
      <div class="container">


        <div class="container rounded bg-white mt-3">
          <div class="row">
            <div class="col-md-4 border-right">
              <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" src="../assets/images/profile.jpg" width="90"><span class="font-weight-bold"><?= $_SESSION['AdminName']; ?></span><span class="text-black-50"><?= $_SESSION['email']; ?></span><span>Morocco</span></div>
            </div>
            <div class="col-md-8">
              <div class="p-3 py-5">
                <form action="<?php url('admin/editProfile'); ?>" method="post">
                  <div class="d-flex justify-content-center align-items-center mb-1">

                    <h2 class="text-right p-1"> Profile</h2>
                  </div>
                  <div class="row mt-2  g-3">
                    <div class="col-md-6"><input type="text" name="name" class="form-control" placeholder="first name" value="<?= $_SESSION['AdminName']; ?>" required></div>
                    <div class="col-md-6"><input type="email" name="email" class="form-control" placeholder="Email" value="<?= $_SESSION['email']; ?>" required></div>
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

                    <div class="col-md-6"><input type="file" class="form-control"></div>
                  </div>
                  <div class="mt-5 text-right"><button class="btn btn-primary profile-button" name="submit" type="submit">Edit Profile</button></div>
                </form>
              </div>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- /#page-content-wrapper -->


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
  <script>
    var el = document.getElementById("wrapper");
    var toggleButton = document.getElementById("menu-toggle");

    toggleButton.onclick = function() {
      el.classList.toggle("toggled");
    };
  </script>
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>