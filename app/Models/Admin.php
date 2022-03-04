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
      $_SESSION['email']= $row["email"];  
      $_SESSION['adminId']= $row["adminId"];  
      $_SESSION['ClientPassword']= $row["password"];  
      return true;
        
    }

  }
  public function getAdInfo($email)
  {
    $stmp=DB::connect()->prepare('SELECT * FROM `'. $this->table.'` WHERE email = :email');
    $stmp->bindParam(':email',$email);
    $stmp->execute();
  
    return $stmp->fetch();
  }
  public function getAdInfoEdit($id,$data){

    $stmt=DB::Connect()->prepare('UPDATE `'.$this->table.'` SET fullName=:fullName,email=:email ,password=:password WHERE adminId='.$id);

    
    $stmt->bindParam(':fullName',$data['fullName']);
    $stmt->bindParam(':email',$data['email']);
    $stmt->bindParam(':password',$data['password']);
  
    $stmt->execute();

  }





}






















?>