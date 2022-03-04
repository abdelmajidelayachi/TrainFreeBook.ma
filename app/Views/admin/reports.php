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

        <a href="<?php url('admin/reports') ?>" class="list-group-item list-group-item-action bg-transparent second-text fw-bold active"><i class="fas fa-users me-2"></i>reports</a>
        <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i class="fas fa-paperclip me-2"></i>Reports</a>
        <a href="<?php url('admin/profile') ?>" class="list-group-item list-group-item-action bg-transparent second-text fw-bold  "><i class="fas fa-users me-2"></i>Profile</a>

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
                <i class="fas fa-user me-2"></i>El Ayachi Abdelmajid
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="<?php url('admin/profile'); ?>">Profile</a></li>
                <li><a class="dropdown-item" href="<?php url('admin/logout'); ?>">Logout</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>

      <div class="container-fluid px-4">
        <div class="row g-3 my-2">
          <div class="col-md-4">
            <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
              <div class="col-md-4">
                <h3 class="fs-2">720</h3>
                <p class="fs-5">Trips</p>
              </div>
              <i class="fas fa-train fs-1 primary-text border rounded-full secondary-bg p-3"></i>
            </div>
          </div>

          <div class="col-md-4">
            <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
              <div>
                <h3 class="fs-2">4920</h3>
                <p class="fs-5">Travelers</p>
              </div>
              <i class="fas fa-users fs-1 primary-text border rounded-full secondary-bg p-3"></i>
            </div>
          </div>

          <div class="col-md-4">
            <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
              <div>
                <h3 class="fs-2">2</h3>
                <p class="fs-5">Train</p>
              </div>
              <i class="fas fa-train fs-1 primary-text border rounded-full secondary-bg p-3"></i>
            </div>
          </div>


        </div>
      </div>
      <div class="container-fluid">
        <div class="row my-5">
          <h3 class="fs-4 mb-3">Reports</h3>
          <div class="col table-responsive-xl">
            <table class="table bg-white rounded shadow-sm  table-hover">
              <thead>
                <tr>

                  <th scope="col"> FullName </th>
                  <th scope="col"> Email </th>
                  <th scope="col">Message</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $i = 0;
                foreach ($reports as $report) : ?>
                  <tr>

                    <th><?= $report['fullName'] ?></th>

                    <td><?= $report['email'] ?></td>
                    <td>
                      <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#report<?=$i;?>">View</button>
                    </td>

                  </tr>
                <?php
                  $i++;
                endforeach; ?>

              </tbody>

            </table>
          </div>
        </div>

      </div>

    </div>
  </div>
  </div>
  <!-- Button trigger modal -->

  <!-- Modal -->
  <?php
  $i = 0;
  foreach ($reports as $report) : ?>
    <div class="modal fade" id="report<?=$i;?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">View report</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <h5><?= $report['fullName'] ?></h5>
        <h6><?= $report['email'] ?></h6>
        <p>
        <?= $report['message'] ?>
        </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>
  <?php
    $i++;
  endforeach;  ?>
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