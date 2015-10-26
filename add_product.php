
<?php //skrypt wlacza sie po kazdym dodaniu produktu do koszyka,tworzac sesje z wszystkimi produktami.Ajax
	session_start();
	$_SESSION['cart_counter']= $_POST['variable'];
	$v=$_SESSION['cart_counter'];
	$_SESSION["'$v'"]= $_POST['variable2'];

	
?>