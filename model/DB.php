<?php


class DBT {

   public $db;

   public function __construct() {
      $this->db = new PDO('mysql:host=localhost:3306;dbname=sklep2;', 'root', '', array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
   }


   //pobieranie produktow:
   public function getProducts(){
       return $this->db->query('SELECT * FROM shop_product' )->fetchAll(PDO::FETCH_OBJ);
   }
   //pobieranie produktow bez rozmiarow i kolorow
   public function getProductsNoRepeat(){
       return $this->db->query('SELECT * FROM shop_product Group by code'  )->fetchAll(PDO::FETCH_OBJ);
   }
  


   //pobieranie widoków:
   public function getViews(){
     return $this->db->query('SELECT * FROM content ')->fetchAll(PDO::FETCH_OBJ);
     
   }
   
}
