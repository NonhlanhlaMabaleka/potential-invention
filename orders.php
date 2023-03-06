<!doctype html>

	<?php 
 session_start();
 include("../scripts/session.php");
 include('../function.php');
 include("../connection/con.php");
 $id = $_SESSION['ID'];

 
 $user=getUser($conn,$id); 
?>


<style>

table {
  width: 10%;
}

th {
  height: 70px;
}
td {
  height: 10px;
}
</style>


<html lang="en">
  <head>
  	<title>Ekuhle eFarm</title>
    <meta charset="utf-8">  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="../css/style.css">
	<style>
	.display-2
	{
		text-align:center;
		padding-bottom:100px;
		font-size:50px;
		font-family:verdana;
	}
	.icon-box
	{
		background-color:white;
	}
	</style>

	</head>
	<body>
	

	<?php include("customerNav.php") ?>
	
	
<div class="cartBody">

	<div class="overflow-auto cartBody">
	
	  <div class="container">
	 <center><h3>My Orders</h3></center>
	 <hr>
	 <br/>
		<section id="services" class="services section-bg">
      <div class="container">
		
   
        <div class="row">
		<?php $query = "SELECT * FROM orders WHERE customerID = '$id'";
											$result = mysqli_query($conn, $query);
											
													while($row = mysqli_fetch_array($result))
												{
												?>
          <div class="col-md-6 col-lg-3 new" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-car"></i></div>
              <h6 class="title"><a href="parcel_received.php"><?php echo  "Order ID :"." ". $row['orderName']?></a></h6>
              <p class="description"><span class="badge badge-warning"></span></a><?php echo "Order Date :"." ". $row['date']?></p>
              <p class="description"><span class="badge badge-warning"></span></a><?php echo "Amount Payed :"." ". $row['orderID']?></p>
			   <p class="description"><span class="badge badge-warning"></span></a><?php ?></p>
              
            </div>
          </div>
												<?php }?>


          

        </div>

      </div>
    </section>
	</div>
	</div>
	</div>




	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>

