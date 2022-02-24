<?php
session_start();

include(VIEWS . 'inc/header.php');

?>

<div id="img">

  <div class="container ">

    <div class="container mt-5 rounded" id="form-search">
      <div class="row">
        <div class="col-lg-6 col-xs-10 p-4" id="form">
          <form action="<?php url('home/index'); ?>" method="POST">
            <div class="form-group ">
              <label for="exampleInputEmail1">Departure station</label>
              <input type="text" class="form-control" id="exampleInputEmail1" name="departure" aria-describedby="emailHelp" placeholder="Departure station">

            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Arrival station</label>
              <input type="text" class="form-control"  name="arrival" id="exampleInputPassword1" placeholder="Arrival station">
            </div>
            <div class="form-group py-3">
              <label for="exampleInputPassword1">Date</label>
              <input type="datetime-local" class="form-control" name="date" id="exampleInputPassword2" placeholder="01/01/2022">
            </div>
            <button type="submit" name="search" class="btn btn-primary">Search</button>
          </form>
        </div>

      </div>
    </div>
  </div>
</div>
<br><br>
<?php if(isset($_POST['search'])): 
  // Search
  ?>
<div class="container">
  <div class="row">
    <h3  class="p-1">Results : </h3>
    <div class="col-10 d-lg-flex justify-content-around">
      <div class="col-md-5 card-header mt-3 " style="background-color: #F52D70 ">
      <?php foreach($travels as $travel):?>
Departs the : <?= date("Y-m-d",strtotime($travel['departureTime'])) ;?> </div>
      <div class="col-md-5 card-header mt-3 " style="background-color: #F52D70 ">From <span><?= $travel['destinationStart'] ?></span> To <span><?= $travel['destinationEnd'] ?></span></div>
      <?php break; endforeach;?>
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
              <button class="btn btn-primary" name="book" type="button"><a href="<?php url('/client/booking'); ?>" style="text-decoration:none;color:white;" > BOOK NOW</a></button>
            </div>
          </td>
        </tr>
        
        <?php endforeach;?>
      </tbody>
    </table>
  </div>


</div>
<?php endif; ?>



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