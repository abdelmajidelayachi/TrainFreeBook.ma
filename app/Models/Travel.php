<?php

class Travel extends DB
{
  private $table = "travels";
  private $conn;
  public function __construct()
  {
    $this->conn=$this->connect();
  }
  public function getAllTravels()
  {

      $tmp=DB::connect()->prepare('SELECT * FROM travels');
      $tmp->execute();
      return $tmp->fetchAll();
    }
    
  public function searchTravel($dat)
  {
    
      $tmp=DB::connect()->prepare('SELECT * FROM `'. $this->table.'` WHERE destinationStart=:destinationStart AND destinationEnd=:destinationEnd AND DATE(departureTime) = :dates');
      
      $tmp->bindParam(':destinationStart',$dat['departure']);
      $tmp->bindParam(':destinationEnd',$dat['arrival']);
      $tmp->bindParam(':dates',$dat['dates']);

      $tmp->execute();
      return $tmp->fetchAll();
    }
  public function getStatus($id)
  {
    
      $tmp=DB::connect()->prepare('SELECT * FROM `'. $this->table.'` WHERE travelId=:travelId');
      
      $tmp->bindParam(':travelId',$id);
     

      $tmp->execute();
      return $tmp->fetch();
    }

  
  public function insertTravel($data){
   $stmt=DB::Connect()->prepare('INSERT INTO '.$this->table.'(destinationStart,destinationEnd,departureTime,arrivalTime,price,trainId) VALUES(:destinationStart,:destinationEnd,:departureTime,:arrivalTime,:price,:trainId)');
    $stmt->bindParam(':destinationStart',$data['destinationStart']);
    $stmt->bindParam(':destinationEnd',$data['destinationEnd']);
    
    $stmt->bindParam(':departureTime',$data['departureTime']);
    $stmt->bindParam(':arrivalTime',$data['arrivalTime']);
    $stmt->bindParam(':price',$data['price']);
    $stmt->bindParam(':trainId',$data['trainId']);
    $stmt->execute();

  }
  public function updateTravel($data,$id){
   $stmt=DB::Connect()->prepare('UPDATE `'.$this->table.'` SET destinationStart=:destinationStart,destinationEnd=:destinationEnd,departureTime=:departureTime,arrivalTime=:arrivalTime,price=:price,trainId=:trainId WHERE travelId='.$id.'');
    $stmt->bindParam(':destinationStart',$data['destinationStart']);
    $stmt->bindParam(':destinationEnd',$data['destinationEnd']);
    //var_dump($data['trainId']);
    $stmt->bindParam(':departureTime',$data['departureTime']);
    $stmt->bindParam(':arrivalTime',$data['arrivalTime']);
    $stmt->bindParam(':price',$data['price']);
    $stmt->bindParam(':trainId',$data['trainId']);
    $stmt->execute();

  }
  public function changeStatus($data,$id){

   $stmt=DB::Connect()->prepare('UPDATE `'.$this->table.'` SET status=:status WHERE travelId='.$id.'');
   $stmt->bindParam(':status',$data['status']);
    $stmt->execute();

  }

  public function deleteTravel($id)
  {
      $tmp=DB::connect()->prepare('DELETE  FROM '.$this->table.' WHERE travelId=:travelId');
      $tmp->bindParam(':travelId',$id);
      $tmp->execute();
    }

  public function getTravel($id)
  {
      $tmp=DB::connect()->prepare('SELECT*  FROM '.$this->table.' WHERE travelId=:travelId');
      $tmp->bindParam(':travelId',$id);
      $tmp->execute();
      return $tmp->fetch();

    }


 
}
