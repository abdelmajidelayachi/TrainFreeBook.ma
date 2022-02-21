<?php include(VIEWS . 'inc/header.php'); ?>


<div id="img-cont">

  <div class="container">

    <div class="container mt-5 p-5" id="form-search">
      <div class="row text-center">
     <h1 class="p-1" style="color:whitesmoke;"> CONTACT US</h1>
     <h3 class="p-1" style="color:whitesmoke;">We would love to hear from you...why not get in touch?</h3>

        </div>
      </div>
    </div>
  </div>

</div>
<br><br>
<div class="container">
  <div class="row">
    <div class="col-md-7 col-lg-8">
      <div class="col-sm-12 mb-3">
        <label for="lastName" class="form-label">Full name </label>
        <input type="text" class="form-control" id="lastName" placeholder="Abdelmajid El Ayachi" value="" require>

      </div>
      <div class="my-3 ">
        <label for="exampleFormControlInput1" class="form-label">Email address</label>
        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
      </div>
      <div class="my-3">
        <label for="exampleFormControlTextarea1" class="form-label">Message</label>
        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
      </div>
      <button type="button" class="btn btn-primary btn-lg px-3 mb-3">Send Message</button>
    </div>
  </div>
</div>

<br><br><br>
<?php include(VIEWS . 'inc/footer.php'); ?>