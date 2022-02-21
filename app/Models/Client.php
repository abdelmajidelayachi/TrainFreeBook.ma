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
    return $this->conn->get($this->table);
  }
  public function insertClient($data){
   return $this->conn->insert($this->table,$data);
  }
  public function deleteClient($id)
  {
    $db=$this->conn->where('id',$id);
    
    return $db->delete($this->table);
  }

  public function getRow($id)
  {
    $db = $this->conn->where("id",$id);
    return $db->getOne($this->table);
  }

  public function updateClient($id,$data)
  {
    $db=$this->conn->where('id',$id);
    
    return $db->update($this->table,$data);
  }
}






















?>