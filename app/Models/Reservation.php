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
      // var_dump($data);
      // exit;
      $stmt=DB::Connect()->prepare('INSERT INTO `'.$this->table.'` (code,travelId,client_id,seat) VALUES(:code,:travelId,:client_id,:seat)  ');
      // $idQuery=$stmt;
    $stmt->bindParam(':code',$data['code']);
      
     $stmt->bindParam(':seat',$data['seat']);
    $stmt->bindParam(':travelId',$data['travelId']);
    $stmt->bindParam(':client_id',$data['client_id']);
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
  public function recentBook($id){
    // SELECT reservations.*, travels.* FROM reservations INNER JOIN travels ON reservations.travelId = travels.travelId WHERE email='elayachiabdel2001@gmail.com';
    $stmt=DB::Connect()->prepare('SELECT reservations.*, travels.* FROM reservations INNER JOIN travels ON reservations.travelId = travels.travelId WHERE client_id=:client_id');
    
    $stmt->bindParam(':client_id',$id);
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
  }
  public function cancelling($id)
  {
    $stmt=DB::Connect()->prepare('UPDATE `'.$this->table.'` SET valid=:valid WHERE reservationId='.$id);

    $Zero ='0';
    $stmt->bindParam(':valid',$Zero);
  
    $stmt->execute();


  }
  public function selectTicket($id){
    // SELECT reservations.*, travels.* FROM reservations INNER JOIN travels ON reservations.travelId = travels.travelId WHERE email='elayachiabdel2001@gmail.com';
    $stmt=DB::Connect()->prepare('SELECT reservations.*, travels.* FROM reservations INNER JOIN travels ON reservations.travelId = travels.travelId WHERE reservationId=:reservationId');
    
    $stmt->bindParam(':reservationId',$id);
    $stmt->execute();
    return $stmt->fetch(PDO::FETCH_ASSOC);
  }
  public function getAllTravellers()
  {
    
    $tmp=DB::connect()->prepare('SELECT * FROM '.$this->table);
    $tmp->execute();
    $travellers= $tmp->fetchAll();
    $_SESSION['travellers']=count($travellers);
    return $travellers;
  }




}






















?>