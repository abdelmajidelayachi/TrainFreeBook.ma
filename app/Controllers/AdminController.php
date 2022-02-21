<?php

class AdminController
{
   
    public function login()
    {
     
      View::load('Admin/login');
    }
  
    public function home()
    {
     
      View::load('Admin/home');
    }
  

}