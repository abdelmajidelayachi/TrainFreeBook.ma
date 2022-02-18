<?php

//use DB\MysqliDb;

 require_once(LIBS.'DB/MysqliDb.php');
class DB
{
    protected $db;
    public function connect()
    {
        $database = new MysqliDb(HOST,USER,PASSWORD,DBNAME);
        if(!$database->connect())
        {
            $this->db=$database;
            return $this->db;
        }
        else{
            echo "Error";
        }
    }
}