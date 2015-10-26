<?php
session_start();

require_once 'C:/xampp/htdocs/Sklep/model/DB.php';
$modelDB = new DBT();

$products = $modelDB->getProducts();
$productsNoRepeat=$modelDB->getProductsNoRepeat();
$modelDB->insertUser('Bartek','Sadurski','bartek','haslo','05-400 Otwock','Kośćiuszki 6a m.38');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sklep</title>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300,800&subset=latin,latin-ext" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style2.css">
    <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    </head>
 <body>
 </body>


</html>
