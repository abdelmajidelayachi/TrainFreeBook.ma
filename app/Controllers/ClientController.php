<?php

class ClientController
{
    public function index()
    {
      $db=new Client();  
      $data['Clients']=$db->getAllClients();
      View::load('Client/index',$data);
    }
    public function login()
    {
     
      View::load('Client/login');
    }
    public function profile()
    {
     
      View::load('Client/profile');
    }
    public function store()
    {
      if(isset($_POST['submit']))
      {
        $name = $_POST['name'];
        $price =$_POST['price'];
        $description = $_POST['description'];
        $qty = $_POST['qty'];
        $data=array("name"=>$name,"price"=>$price,"description"=>$description,"qty"=>$qty);

        $db = new Client();
        if($db->insertClient($data))
        {
          View::load("Client/login",["success"=>"Data created Successfully"]);

        }else{
          View::load("Client/login");
        }
       
      }
    }
    public function delete($id){
      $db = new Client();
      if($db->deleteClient($id))
      {
        View::load("Client/delete");
      }else
      {
        echo "Error";
      }
      
    }
    public function edit($id)
    {
      $db=new Client();
      if($db->getRow($id))
      {
        $data['row']=$db->getRow($id);
        View::load('Client/edit',$data);

      }
      else
      {
        echo "Error";
      }

    }
    public function booking()
    {
      
        View::load('Client/booking');

   

    }
    public function contact()
    {
      
        View::load('Client/contact');

   

    }
    public function update($id){
      if(isset($_POST['submit']))
      {
        $name = $_POST['name'];
        $price =$_POST['price'];
        $description = $_POST['description'];
        $qty = $_POST['qty'];
        $dataDelete=array("name"=>$name,"price"=>$price,"description"=>$description,"qty"=>$qty);

        $db = new Client();
        if($db->updateClient($id,$dataDelete))
        {
          View::load("Client/edit",["success"=>"Data updated Successfully",'row'=>$db->getRow($id)]);

        }else{
          View::load("Client/edit",['row'=>$db->getRow($id)]);
        }
       
      }
    }

}