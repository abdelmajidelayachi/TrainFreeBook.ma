<?php

class Client extends DB
{
  private $table = "Clients";
  private $conn;
  public function __construct()
  {
    $this->conn=$this->connect();
  }
  public function getAllClients()
  {

      $tmp=DB::connect()->prepare('SELECT * FROM clients');
      $tmp->execute();
      return $tmp->fetchAll();
    }

    
    public function deleteClient($id)
    {
        $tmp=DB::connect()->prepare('DELETE  FROM '.$this->table.' WHERE clientId=:clientId');
        $tmp->bindParam(':clientId',$id);
        $tmp->execute();
      }
    public function insertClient($data)
    {
      $stmt=DB::Connect()->prepare('INSERT INTO '.$this->table.'(fullName,email,password) VALUES(:fullName,:email,:password)');
      $stmt->bindParam(':fullName',$data['fullName']);
      $stmt->bindParam(':email',$data['email']);
      $stmt->bindParam(':password',$data['password']);
      $stmt->execute();
    }
    public function loginClient($data)
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
      $_SESSION['client']= $row["fullName"]; 
      echo  $_SESSION['client'];
      return true;
        
    }
    
}


}
