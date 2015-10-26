<?php


class DBT{

   public $db;
   public $koszyk;
   public function __construct() {
      $this->db = new PDO('mysql:host=localhost:3306;dbname=sklep2;', 'root', '', array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
      $this->koszyk=[]; 
   }
    

   //pobieranie produktow:
   public function getProducts(){
       return $this->db->query('SELECT * FROM shop_product' )->fetchAll(PDO::FETCH_OBJ);
   }
   //pobieranie produktow bez rozmiarow i kolorow
   public function getProductsNoRepeat(){
       return $this->db->query('SELECT * FROM shop_product Group by code'  )->fetchAll(PDO::FETCH_OBJ);
   }
  //pobieranie produktu po id
   public function getProduct($id){

        return $this->db->query('SELECT * FROM shop_product where id="'.$id.'"'  )->fetchAll(PDO::FETCH_OBJ);
   }
   // to samo z dodaniem jednej komorki  z iloscia produktow w koszyku default=1

   public function getProductToCart($id){
         $a=$this->getProduct($id);
        $a['quantity']=1;
        return $a;
   }
   
   //Pobieranie calego koszyka
   public function getCart($SESSION){
    $i=0;
    $isRepeat=false;
    foreach($SESSION as $product){
      for($b=0;$b<$i;$b++)
        if  ($this->koszyk[$b][0]->id==$this->getProductToCart($product)[0]->id){
            $this->koszyk[$b]['quantity']= $this->koszyk[$b]['quantity']+1;
            $isRepeat=true; }
     if(!$isRepeat){
        $this->koszyk[$i]=$this->getProductToCart($product);
        $i++;}
        $isRepeat=false;
    }
      return $this->koszyk;       
   }
   

   //pobieranie widoków:
   public function getViews(){
     return $this->db->query('SELECT * FROM content ')->fetchAll(PDO::FETCH_OBJ);
     
   }


   public function insertUser($name,$surname,$login,$password,$zip_code,$street) {

      $exists =false; //$this->getUser($name);
      if (!$exists) {
         $result = $this->db->query('INSERT INTO clients(name,surname,login,password,zip_code,street) VALUES(" " "'.$name.'" ,"' .$surname.'", "'.$login.'", "'. md5($password) . '","'.$zip_code.'", "'. $street .'")');
      }
      if ($result)
         return true;
      else
         return false;
   }
   

}
?>