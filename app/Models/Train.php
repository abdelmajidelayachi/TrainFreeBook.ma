<?php

class Train extends DB
{
  private $table = "Trains";
  private $conn;
  public function __construct()
  {
    $this->conn=$this->connect();
  }
 
    
  public function getAllTrains()
  {

      $tmp=DB::connect()->prepare('SELECT * FROM '.$this->table);
      $tmp->execute();
      $trains= $tmp->fetchAll();
      $_SESSION['trains']=count($trains);
      return $trains;
    }

 
  

 
}
