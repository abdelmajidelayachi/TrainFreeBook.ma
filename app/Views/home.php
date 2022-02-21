<?php
include(VIEWS . 'inc/header.php');

?>

<div id="img">

  <div class="container ">

    <div class="container mt-5" id="form-search">
      <div class="row">
        <div class="col-lg-6 col-xs-10 p-4" id="form">
          <form>
            <div class="form-group ">
              <label for="exampleInputEmail1">Departure station</label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Departure station">

            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Arrival station</label>
              <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Arrival station">
            </div>
            <div class="form-group py-3">
              <label for="exampleInputPassword1">Arrival station</label>
              <input type="date" class="form-control" id="exampleInputPassword2" placeholder="01/01/2022">
            </div>
            <button type="submit" class="btn btn-primary">Search</button>
          </form>
        </div>

      </div>
    </div>
  </div>
</div>
<br><br>
<div class="container">
  <div class="row">
    <h3>Results : </h3>
    <div class="col-10 d-lg-flex justify-content-around">
      <div class="col-md-5 bg-info card-header mt-3">
Departs the : 2000/03/16</div>
      <div class="col-md-5 bg-info card-header mt-3">From <span>Casablanca</span> To <span>Safi</span></div>
    </div>
  </div>
</div>


<div class="container table-responsive">

  <div class="table-responsive-lg">
    <table class="table table-hover ">
      <thead>
        <tr>
          <th scope="col">Departure </th>
          <th scope="col">Destination</th>

          <th scope="col"></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th>09:15 AM</th>
          <td>12:15 PM</td>

          <td>
            <div class="d-grid gap-2 col-8 mx-auto text-nowrap">
              <button class="btn btn-primary" type="button">BOOK NOW</button>
            </div>
          </td>
        </tr>
        <tr>
          <th>09:15 AM</th>
          <td>12:15 PM</td>

          <td>
            <div class="d-grid gap-2 col-8 mx-auto text-nowrap">
              <button class="btn btn-primary" type="button">BOOK NOW</button>
            </div>
          </td>
        </tr>

      </tbody>
    </table>
  </div>


</div>




<div class="container text-center p-5">
  <div class="row">
    <div class="col-md-12">
      <h4>why us?</h4>
      <p>
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam culpa nobis ullam fugit praesentium numquam eligendi, molestiae ea corrupti consequuntur quia incidunt assumenda ipsa quisquam, totam voluptatibus illum corporis, harum nulla architecto dolore recusandae cumque repellat. Error ea unde officia est maxime praesentium itaque sapiente natus expedita hic repudiandae accusamus ipsam veritatis rem.
      </p>
    </div>
  </div>
</div>





<?php
include VIEWS . 'inc/footer.php';


?>