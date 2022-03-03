<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- font awesome -->
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
  <!-- iconscout -->
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <!-- css  -->
  <link rel="stylesheet" href="/assets/style/header.css">
<!-- 
  <title>home</title>
</head>

<body> -->
  <!-- <nav class="navbar navbar-expand-lg navbar-light bg-light" id="Header">
    <div class="container-fluid">
      <a class="navbar-brand px-5" href="#"><img src="/assets/images/logo.svg" alt="logo"></a>
      <button class="navbar-toggler mx-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
     
      
      <div class="collapse navbar-collapse justify-content-end " id="navbarNavDropdown">
        <ul class="navbar-nav ">
        <php if (isset($_SESSION['client'])) : ?>
          <li class="nav-item px-4 py-1 ">
            <a class="nav-link active" aria-current="page" href="">Home</a>
          </li>
          <li class="nav-item px-4 py-1">
            <a class="nav-link" href="client/booking">My Bookings</a>
          </li>

          <php else: ?>
            <li class="nav-item px-4 py-1 ">
            <a class="nav-link active" aria-current="page" href="<= '' ?>">Home</a>
          </li>
          <li class="nav-item px-4 py-1">
            <a class="nav-link" href="passenger/booking">My Bookings</a>
          </li>

          <php endif; ?>
          <php if (isset($_SESSION['client'])) : ?>
          <li class="nav-item px-4 py-1">
            <a class="nav-link" href="<= 'client/contact' ?>">contact Us</a>
          </li>
          <li class="nav-item px-4 ">
            <a class="nav-link" href="<= 'client/profile' ?>"><i class="fa fa-2x fa-user"></i></i></a>
          </li>
          <php endif; ?>
          <ul class="navbar-nav ">
            <php if (!isset($_SESSION['client'])) : ?>
            <li class="nav-item px-4 py-1">
              <a class="nav-link" aria-current="page" href="<= 'passenger/login' ?>">Login</a>
            </li>
            <php else: ?>
              <li class="nav-item px-4 py-1">
              <a class="nav-link" aria-current="page" href="<= 'client/logout' ?>">Logout</a>
            </li>
            <php endif; ?>

          </ul>
        </ul>
      </div>

    </div>
  </nav> --> 