<?php

class ProductController
{
    public function index()
    {
      $db=new Product();  
      $data['products']=$db->getAllProducts();
      View::load('product/index',$data);
    }
    public function add()
    {
     
      View::load('product/add');
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

        $db = new Product();
        if($db->insertProduct($data))
        {
          View::load("product/add",["success"=>"Data created Successfully"]);

        }else{
          View::load("product/add");
        }
       
      }
    }
    public function delete($id){
      $db = new Product();
      if($db->deleteProduct($id))
      {
        View::load("product/delete");
      }else
      {
        echo "Error";
      }
      
    }
    public function edit($id)
    {
      $db=new Product();
      if($db->getRow($id))
      {
        $data['row']=$db->getRow($id);
        View::load('Product/edit',$data);

      }
      else
      {
        echo "Error";
      }

    }
    public function update($id){
      if(isset($_POST['submit']))
      {
        $name = $_POST['name'];
        $price =$_POST['price'];
        $description = $_POST['description'];
        $qty = $_POST['qty'];
        $dataDelete=array("name"=>$name,"price"=>$price,"description"=>$description,"qty"=>$qty);

        $db = new Product();
        if($db->updateProduct($id,$dataDelete))
        {
          View::load("product/edit",["success"=>"Data updated Successfully",'row'=>$db->getRow($id)]);

        }else{
          View::load("product/edit",['row'=>$db->getRow($id)]);
        }
       
      }
    }

}