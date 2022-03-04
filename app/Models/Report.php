<?php

class Report extends DB
{
  private $table = "reports";
  private $conn;
  public function __construct()
  {
    $this->conn=$this->connect();
  }
 
    
 

  
  public function insertReport($data){
   $stmt=DB::Connect()->prepare('INSERT INTO '.$this->table.'(fullName,email,message) VALUES(:fullName,:email,:message)');
    $stmt->bindParam(':fullName',$data['name']);
    $stmt->bindParam(':email',$data['email']);
    $stmt->bindParam(':message',$data['message']);
    
    $stmt->execute();

  }
  public function getAllReports()
  {

      $tmp=DB::connect()->prepare('SELECT * FROM '.$this->table);
      $tmp->execute();
      return $tmp->fetchAll();
    }

  

 
}
