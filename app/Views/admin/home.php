
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
            <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom"><img src="../assets/images/logo.svg" alt="logo"> TrainFreeBook</div>
            <div class="list-group list-group-flush my-3">
                <a href="<?php url('admin/home') ?>" class="list-group-item list-group-item-action bg-transparent second-text active"><i
                        class="fas fa-tachometer-alt me-2"></i>Dashboard</a>
          
                <a href="<?php url('admin/clients') ?>" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-users me-2"></i>Clients</a>
                <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-paperclip me-2"></i>Reports</a>
                        <a href="<?php url('admin/profile') ?>" class="list-group-item list-group-item-action bg-transparent second-text fw-bold  "><i class="fas fa-users me-2"></i>Profile</a>
         
                <a href="<?php url('admin/logout'); ?>" class="list-group-item list-group-item-action bg-transparent text-danger fw-bold"><i
                        class="fas fa-power-off me-2"></i>Logout</a>
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

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle second-text fw-bold" href="#" id="navbarDropdown"
                                role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
                                <p class="fs-5">travelers</p>
                            </div>
                            <i
                                class="fas fa-users fs-1 primary-text border rounded-full secondary-bg p-3"></i>
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
                    <h3 class="fs-4 mb-3">Next trips</h3>
                    <div class="col table-responsive-xl">
                        <table class="table bg-white rounded shadow-sm  table-hover">
                            <thead>
                                <tr>

                                    <th scope="col"> Train </th>
                                    <th scope="col"> departure time </th>
                                    <th scope="col">Arrival Time </th>
                                    <th scope="col">From</th>
                                    <th scope="col">To</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">STATUS</th>
                                    <th scope="col">Delete Trip</th>
                                    <th scope="col">Edit Booking</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                            <?php    
                            foreach($travels as $travel):?>
                                <tr>

                                    <th><?= $travel['trainId'] ?></th>
                                    <th> <?php
                                    $month = date("m",strtotime($travel['departureTime']));
                                    $day =  date("d",strtotime($travel['departureTime']));
                                    
                                    echo $day.'/'.$month .' | '.  date("H",strtotime( $travel['departureTime']))."H". date("i",strtotime( $travel['departureTime']))."min"; 
                                    ?></th>
                                    <td> <?php
                                    $month = date("m",strtotime($travel['arrivalTime']));
                                    $day =  date("d",strtotime($travel['arrivalTime']));
                                    
                                    echo $day.'/'.$month .' | '.  date("H",strtotime( $travel['arrivalTime']))."H". date("i",strtotime( $travel['arrivalTime']))."min"; 
                                    ?></td>
                                    <td><?= $travel['destinationStart'] ?></td>
                                    <td><?= $travel['destinationEnd'] ?></td>
                                    <td><?= $travel['price'] ?>DH</td>
                                    <td><?php
                                    if($travel['status']): ?>
                                      <button class="btn btn-success"><a style="text-decoration:none;color:aliceblue;" href="<?php url('admin/changeStatus/'.$travel['travelId']) ?>">Active</a></button>
                                      <?php else: ?>
                                        <button class="btn btn-danger" ><a style="text-decoration:none;color:aliceblue;" href="<?php url('admin/changeStatus/'.$travel['travelId']) ?>">Inactive</a></button>
                                        <?php endif; ?>

                                    </td>
                                   
                                    <td><button type="button" class="btn btn-danger" ><a href="<?php url('admin/deleteTrip/'.$travel['travelId']) ?>" style="text-decoration:none;color:aliceblue;"> <ion-icon name="trash-outline"></ion-icon></a></button></td>
                                    <td><button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#trip<?= $travel['travelId'] ?>" ><ion-icon name="pencil-outline"></ion-icon></button></td>    
                                </tr>
                                <?php  endforeach;?>
                            </tbody>
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#newTrip" >Create trip</button>
                        </table>
                    </div>
                </div>
                            
               
                </div>

            </div>
        </div>
    </div>
    <!-- /#page-content-wrapper -->
    </div>
    <!-- create new trip -->
    <div class="modal fade" id="newTrip" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">New Trip</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form method="POST" action="<?php url('admin/createTrip'); ?>">
              <div class="mb-2">
                <label for="train-number" class="col-form-label">Train:</label>
                <input type="number" name="trainId" class="form-control" id="train-number">
              </div>
              <div class="mb-2">
                <label for="departure"  class="col-form-label">departure time:</label>
                <input type="datetime-local" name="departureTime" class="form-control" id="departure-time">
              </div> 
              <div class="mb-2">
                <label for="arrival" class="col-form-label">Arrival time:</label>
                <input type="datetime-local" name="arrivalTime" class="form-control" id="arrival-time">
              </div>
              <div class="mb-2">
                <label for="from" class="col-form-label">From:</label>
                <input type="text" name="destinationStart" class="form-control" id="from">
              </div>
              <div class="mb-2">
                <label for="to" class="col-form-label">To:</label>
                <input type="text" name="destinationEnd" class="form-control" id="to">
              </div>
              <div class="mb-2">
                <label for="price" class="col-form-label">Price:</label>
                <input type="text" name="price" class="form-control" id="price">
              </div>           
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" name='submit' class="btn btn-primary">Create </button>
               
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <!-- edit trip -->
    <?php foreach($travels as $travel): 
      ?>
    <div class="modal fade" id="trip<?= $travel['travelId'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Edit Trip</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form method="POST" action="<?php url('admin/updateTrip/'. $travel['travelId']); ?>">
              <div class="mb-2">
                <label for="train-number"  class="col-form-label">Train:</label>
                <input type="number" class="form-control" name="trainId" value="<?= $travel['trainId'] ?>" id="train-number">
              </div>
              <div class="mb-2">
                <label for="departure" class="col-form-label">departure time:</label>
                <input type="datetime-local" class="form-control" value="<?= $travel['departureTime'];?>" name="departureTime" id="departure-time">
              </div>
              <div class="mb-2">
                <label for="arrival" class="col-form-label">Arrival time:</label>
                <input type="datetime-local" class="form-control" value="<?= $travel['arrivalTime'];?>" name="arrivalTime" id="arrival-time">
              </div>
              <div class="mb-2">
                <label for="from" class="col-form-label">From:</label>
                <input type="text" name="destinationStart" value="<?= $travel['destinationStart'] ?>" class="form-control" id="from">
              </div>
              <div class="mb-2">
                <label for="to" class="col-form-label">To:</label>
                <input type="text" name="destinationEnd" value="<?= $travel['destinationEnd'] ?>" class="form-control" id="to">
                <label for="price" class="col-form-label">Price:</label>
                <input type="number" name="price" value="<?= $travel['price'] ?>" class="form-control" id="price">
              </div>
              <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="submit" name='submit' class="btn btn-primary">Update</button>
          </div>
            </form>
          </div>
         
        </div>
      </div>
    </div>
    <?php  endforeach;?>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        var el = document.getElementById("wrapper");
        var toggleButton = document.getElementById("menu-toggle");

        toggleButton.onclick = function () {
            el.classList.toggle("toggled");
        };
    </script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>