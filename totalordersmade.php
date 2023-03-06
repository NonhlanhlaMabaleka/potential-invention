<!doctype html>

	<?php 
session_start();
include("../connection/con.php");
include("../scripts/session.php");
include('../function.php');

$id = $_SESSION['ID'];


$user=getUser($conn,$id); 
?>
<html lang="en">
  <head>
  	<title>Ekuhle eFarm</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


	   <!-- Custom fonts for this template -->
	   <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="../vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">


	
	<link rel="stylesheet" href="../css/style.css">
	<style>
	.display-2
	{
		text-align:center;
		padding-bottom:100px;
		font-size:50px;
		font-family:verdana;
	}
	.move
	{
		
		padding:10px;
	
	}
	.btn
	{
		
		width:155px;
	
	}
	.card
	{
		width:945px;
		text-align:center;
	}
	.services .icon-box
	{
		background-color: white;
	}
	</style>

	</head>
	<body>
	<?php include("navFarmer.php") ?>
	
	


   





	
	
	

<center>
<?php include("farmheader.php")?>
<br/>
<br/><div class="cartBody">

	<div class="overflow-auto cartBody">
	
	  <div class="container">
	 <center><h3>All Orders</h3></center>
	 <hr>
	 <br/>



    <br/>


		<section id="services" class="services section-bg">
      <div class="container">
		
   
        <div class="row">
		<?php $query = "SELECT * FROM orders";
											$result = mysqli_query($conn, $query);
											
													while($row = mysqli_fetch_array($result))
												{
												?>
          <div class="col-md-6 col-lg-3 new" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-car"></i></div>
              <h6 class="title"><a href=""><?php echo  "Order ID :"." ". $row['orderName']?></a></h6>
              <p class="description"><span class="badge badge-warning"></span></a><?php echo "Order Date :"." ". $row['date']?></p>
            
              
            </div>
          </div>
												<?php }?>


          

        </div>

      </div>
    </section>



	</div>
	</div>
	</div>
				</center>

<?php include('../footer.php') ?>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>


      <!-- Bootstrap core JavaScript-->
	  <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../js/demo/datatables-demo.js"></script>



	</body>
</html>

