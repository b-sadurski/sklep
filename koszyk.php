<?php 
session_start();
require_once 'C:/xampp/htdocs/Sklep/model/DB.php';
require_once 'C:/xampp/htdocs/Sklep/head.php';
$modelDB = new DBT();
$products = $modelDB->getProducts();
$productsNoRepeat=$modelDB->getProductsNoRepeat();
$koszyk=$modelDB->getCart($_SESSION);
?>
</head>
</body>

	<header id="master-header">
          <div class="logo">
            <i class="fa fa-qq"></i>
          </div>
          <div class="wrapper">
            
         
             <nav>

                <ul>
                    <li><a href="sklep.php">Sklep</a></li>
                    <li><a href="#">Promocje miesiaca</a></li>
                    <li><a href="#">Nowe Produkty</a></li>
                    <li><a href="#">Contact</a></li>
                  
                </ul>
 
             </nav>
             <a id="log" href="#">Zaloguj</a>
        </div>

    </header>

    <div class="introImg">
          <div class='wrapper'>
            Uwaga dodano Produkt.<div id="CartCounter" class="right"><?php if(isset($_SESSION["cart_counter"]))echo $_SESSION["cart_counter"]; else echo"0";?></div><a href="koszyk.php"><span><i class="fa fa-shopping-cart"></i></span></a>
          </div>
    </div>

    <div id="main3">
         <h1>Twój koszyk</h1>
        <table>
          <tr>
            <th>Product Id</th>
            <th>Product name</th>
            <th>Cena</th>
            <th>Producent</th>
             <th>Ilość</th>
            <th>Dodatkowe informacje</th>
          </tr> 
            <?php for($i=1;$i<sizeof($koszyk);$i++){ //od i=1 bo w Session[0] jest licznik a zakupy sa od i>0 
            ?><tr><td><?php echo $koszyk[$i][0]->id;?></td><td><?php echo $koszyk[$i][0]->name;?></td>
            <td><?php echo $koszyk[$i][0]->price;?></td><td><?php echo $koszyk[$i][0]->producer;?></td>
            <td><?php echo $koszyk[$i]['quantity'];?></td><td><?php echo $koszyk[$i][0]->additional_note;?></td>
          </tr><?php
            }?>
        </table>

    </div>
<?php var_dump($koszyk)?>

    <footer id="master-footer">
        <div class="wrapper">
          
            <p id="copyrights">&copy; 2015 Bartek Sadurski. All Rights Reserved.</p>

            <ul id="socials-menu">
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                <li><a href="#"><i class="fa fa-flickr"></i></a></li>
                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
            </ul>

            <ul id="footer-menu">
                <li><a href="#">Faq</a></li>
                <li><a href="#">Regulamin sklepu</a></li>
                <li><a href="#">Inne sklepy</a></li>
                <li><a href="#">Koszty wysyłki</a></li>
                <li><a href="#">Kariera</a></li>
            </ul>
        </div>
        
    </footer>
</body>
</html>