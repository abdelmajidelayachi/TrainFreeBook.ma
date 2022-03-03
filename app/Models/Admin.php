<?php
// session_start();
class Admin extends DB
{
  private $table = "admins";
  private $conn;
  public function __construct()
  {
    $this->conn=$this->connect();
  }
  
  public function loginAd($data)
  {
    $stmp=DB::connect()->prepare('SELECT * FROM `'. $this->table.'` WHERE email = :email AND password = :password');
    $stmp->bindParam(':password',  $data['password']);
    $stmp->bindParam(':email', $data['email']);
    $stmp->execute();
  
    $row=$stmp->fetch();
    
   
    // Check row
    if($row == false){
      return false;

    }else{
      $_SESSION['AdminName']= $row["fullName"];  
      return true;
        
    }

  }





}






















?>