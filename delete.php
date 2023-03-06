<?php 

session_start();
include("../connection/con.php");

$id = $_GET['id'];

$query = "DELETE  FROM tbl_product WHERE id = '$id'";
mysqli_query($conn, $query);

?><script>window.location="farmerPage.php"; alert("Product successfully deleted")</script><?php


?>