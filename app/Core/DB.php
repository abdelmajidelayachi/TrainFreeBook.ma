<?php

//use DB\MysqliDb;


class DB
{
    protected $db;
    public static function connect()
    {
        $database = new PDO('mysql:dbname=trainfreebook;host=localhost','root','');
        $database->exec("set names utf8");
        $database->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_WARNING);
        return $database;
    }
}