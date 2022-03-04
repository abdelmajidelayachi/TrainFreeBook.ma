<?php

class Ticket extends DB
{
  private $table = "tickets";
  private $conn;
  public function __construct()
  {
    $this->conn=$this->connect();
  }
 
    
 

  
  public function insertTicket($data){
   $stmt=DB::Connect()->prepare('INSERT INTO '.$this->table.'(code,reservationId) VALUES(:code,:reservationId)');
    $stmt->bindParam(':code',$data['code']);
    $stmt->bindParam(':reservationId',$data['reservationId']);
    
    $stmt->execute();
    

  }
  

 
}
