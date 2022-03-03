<?php
// session_start();
class Reservation extends DB
{
  private $table = "reservations";
  private $conn;
  public function __construct()
  {
    $this->conn=$this->connect();
  }
  public function book($data)
  {
    
      // if(count($this->recent($data))>0)
      // {
      //    echo($this->recent($data)["MAX(seat)"]);
      //   $data['seat']= $this->recent($data)["MAX(seat)"];


      // }else{
      //   $data['seat']=1;
      // }
      // $data['seat']= $data['seat']+1;
      // $data['code']='T'.$data['trainId'].' V'.$data['travelId'].' S'.$data['seat'];
      $stmt=DB::Connect()->prepare('INSERT INTO '.$this->table.'(code,travelId,seat) VALUES(:code,:travelId,:seat)  ');
      // $idQuery=$stmt;
    $stmt->bindParam(':code',$data['code']);
      
     $stmt->bindParam(':seat',$data['seat']);
    $stmt->bindParam(':travelId',$data['travelId']);
    $stmt->execute();
    
    
    
    
  }
  public function recent($id)
  {
    $stmt=DB::Connect()->prepare('SELECT MAX(seat) FROM '.$this->table.' WHERE travelId=:travelId');
    
    $stmt->bindParam(':travelId',$id);
    $stmt->execute();
    return $stmt->fetch(PDO::FETCH_ASSOC);
  }

  public function getLastId()
  {
    $stmt=DB::Connect()->prepare('SELECT MAX(reservationId) FROM '.$this->table);
    
  
    $stmt->execute();
    return $stmt->fetch(PDO::FETCH_ASSOC);

  }
 




}






















?>