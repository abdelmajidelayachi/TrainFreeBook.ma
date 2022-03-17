<?php include(VIEWS . 'inc/header.php'); ?>
<title>Ticket</title>
</head>

<body>
<div>
  <a href="<?php url('client/backHome') ?>"><button class="btn btn-danger" style="padding-left: 20px;padding-right:20px;margin:40px; padding-top:10px;"><ion-icon name="arrow-back-circle-outline"size="large"></ion-icon></button></a>
</div>
  <div style="overflow-x:scroll; padding-bottom:400px;">
    <?php //if($data) 
    // var_dump($tickets);
   for ($i=0; $i < $tickets[0]['places'] ; $i++) :
    ?>

    <div class="container" style="width:900px;">
      <div class="row  mb-0">
        <div class="col-6" style="width:700px;">
          <div class="mt-5">
            <div class="container bg-primary float-right p-1">
              <div class="row">
                <div class="col-6">
                  <img src="/assets/images/trainlo.png" alt="" width="100" height="50">
                  <strong class='text-white'>TrainFreeBook</strong>

                </div>
                <div class="col-6 mt-3 text-center">

                  <strong class="mt-3">
                    <?= $tickets[$i]['code'] ?>
                  </strong>
                </div>
              </div>

            </div>

          </div>
          <div class="mt-0">
            <div class="container   float-right p-1" style="background-color: #00e0ff;">
              <div class="row m-2">

                <div class="col-4">

                  From : <b><?= $tickets[$i]['destinationStart'] ?></b>
                </div>
                <div class="col-4">

                  price : <b><?= $tickets[$i]['price'] ?> DH</b>
                </div>
                <div class="col-4">

                  Train : <b><?=$tickets[$i]['trainId'] ?></b>
                </div>
              </div>
              <div class="row m-2">

                <div class="col-4">

                  TO : <b><?=$tickets[$i]['destinationEnd'] ?></b>
                </div>
                <div class="col-4">
                  Carriage : <b>0<?php
                  
                  
                  echo (int)($tickets[$i]['seat']/20) +1;?></b>

                </div>
                <div class="col-4">

                  Seat : <b><?= $tickets[$i]['seat'] ?></b>
                </div>
              </div>

              <div class="row m-2">

                <div class="col-4">

                  Date : <b><?= date("F d", strtotime($tickets[$i]['departureTime'])); ?> </b>
                </div>
                <div class="col-4">

                  Departure : <b><?= date("H", strtotime($tickets[$i]['departureTime'])) . "H" . date("i", strtotime($tickets[$i]['departureTime'])) . "min"; ?></b>
                </div>
                <div class="col-4">

                  Arrival : <b><?= date("H", strtotime($tickets[$i]['arrivalTime'])) . "H" . date("i", strtotime($tickets[$i]['arrivalTime'])) . "min"; ?></b>
                </div>
              </div>
            </div>

          </div>


          <!-- insert your custom barcode setting your data in the GET parameter "data" -->
          <div class="container bg-primary text-center p-1">

            <img width="200" height="40" alt='Barcode Generator TEC-IT' src='https://barcode.tec-it.com/barcode.ashx?data=ABC-abc-1234&code=Code128&translate-esc=on' />

          </div>
        </div>

      </div>
    </div>
    <?php endfor;?>
  </div>



  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


</body>

</html>