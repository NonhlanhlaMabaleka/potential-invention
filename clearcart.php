	<?php 
 session_start();
 include("../scripts/session.php");
 include('../function.php');
 include("../connection/con.php");
 $id = $_SESSION['ID'];
 
 
 $user=getUser($conn,$id); 
 
 
 unset($_SESSION["shopping_cart"]);
 
 
      ?><script>window.location="Main.php";</script><?php
?>