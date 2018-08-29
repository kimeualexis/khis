<?php
include 'includes/config.php';
if(isset($_POST['submit']))
{
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$email=$_POST['email'];
$phone=$_POST['phone'];
$message=$_POST['message'];
$sql="INSERT INTO  tblenquiry(FirstName,LastName,Email,Phone,Message) VALUES(:fname,:lname,:email,:phone,:message)";
$query = $dbh->prepare($sql);
$query->bindParam(':fname',$fname,PDO::PARAM_STR);
$query->bindParam(':lname',$lname,PDO::PARAM_STR);
$query->bindParam(':email',$email,PDO::PARAM_STR);
$query->bindParam(':phone',$phone,PDO::PARAM_STR);
$query->bindParam(':message',$message,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$msg="Enquiry  Successfully submited";
}
else
{
$error="Something went wrong. Please try again";
}
}
?>
<!DOCTYPE html5>
<html lang="zxx">

<head>
	<title>Kisumu Portal</title>

	<!--meta tags -->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="Medically Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); }
	</script>
	<!--//meta tags ends here-->
	<!--booststrap-->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">

	<!--//booststrap end-->

	<!-- font-awesome icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome icons -->
	<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" />
	<!-- gallery-->
	<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
	<!-- clients-->

	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
	<!-- banner text slider-->
	<!--stylesheets-->
	<link href="css/style.css" rel='stylesheet' type='text/css' media="all">
	<!-- banner text slider-->

	<link href="//fonts.googleapis.com/css?family=Barlow+Condensed:300,400,500,600" rel="stylesheet">
	<!--//style sheet end here-->
</head>

<body>
	<div class="banner-w3" id="home">
		<div class="w3-agile-logo">
			<div class=" head-wl">
				<div class="agileinfo-social-grids">
					<ul>
						<li><a href="#"><span class="fa fa-facebook"></span></a></li>
						<li><a href="#"><span class="fa fa-twitter"></span></a></li>
						<li><a href="#"><span class="fa fa-rss"></span></a></li>
						<li><a href="#"><span class="fa fa-vk"></span></a></li>
					</ul>
				</div>
				<div class="w3-header-top-right">
					<div class="email-right">
						<p><span class="fa fa-envelope" aria-hidden="true"></span> <a href="mailto:mail@example.com" class="info"> khisportal@moh.com</a></p>

					</div>
					<div class="w3-header-top-right-text">

						<p><span class="fa fa-phone" aria-hidden="true"></span> +254 722 245 466</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="header-w3layouts">

			<!-- Navigation -->
			<nav class="navbar navbar-default navbar-fixed-top">
				<div class="navbar-header page-scroll">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
					<h1><a class="navbar-brand " href="index.php">Kisumu Health Portal</a></h1>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-ex1-collapse">
					<ul class="nav navbar-nav navbar-right">
						<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
						<li class="hidden"><a class="page-scroll" href="#page-top"></a> </li>
						<li><a class="page-scroll" href="#home">Home</a></li>
						<li><a class="page-scroll scroll" href="#about">Activities</a></li>
						<li><a class="page-scroll scroll" href="#gallery">Gallery</a></li>
						<li><a class="page-scroll scroll" href="#contact">Contact</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
		</div>


		<div class="container">

			<!-- header -->
			<header>

				<div class="flexslider-info">
					<section class="slider">
						<div class="flexslider">
							<ul class="slides">
								<li>
									<div class=" w3l-info">
										<div class="col-md-8  info-lleft-side">
											<h4>Public Health Portal</h4>
											<p>This is a public portal for Kisumu county health matters. The public can find
												information about the county's Health Activities here and can also raise concerns through the contact form.</p>
										</div>
										<div class=" col-md-4 w3layouts_more-buttn">
											<a href="#" data-toggle="modal" data-target="#myModal">Read More</a>
										</div>
									</div>

								</li>
								<li>
									<div class=" w3l-info">
										<div class="col-md-8 info-lleft-side">
											<h4>Healthy County</h4>
											<p>Moving towards a better and healthier county.</p>
										</div>
										<div class=" col-md-4 w3layouts_more-buttn">
											<a href="#" data-toggle="modal" data-target="#myModal">Read More</a>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</section>
				</div>
			</header>
		</div>
		<div class="clearfix"> </div>
	</div>

	<!-- //header -->
	<!-- modal -->
	<div class="modal about-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">Public Health Portal</h4>
				</div>
				<div class="modal-body">
					<div class="out-info">
						<img src="images/g1.jpg" alt="" />
						<p>Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae,
							eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellu</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //modal -->

	<!--about -->
	<div class="agileits-banner-grids text-center">
		<div class="banner-bottom-girds">
			<div class="col-md-4  col-sm-4 clr1 agileits-banner-grid">
				<span class="fa fa-heart banner-icon" aria-hidden="true"></span>
				<h4>Polio Immunization</h4>
				<p>Itaque earum rerum hic tenetur a sapiente delectus reiciendis maiores alias consequatur aut.</p>

			</div>
			<div class="col-md-4 col-sm-4 clr2 agileits-banner-grid">
				<span class="fa fa-ambulance banner-icon" aria-hidden="true"></span>
				<h4>HIV Awareness</h4>
				<p>Itaque earum rerum hic tenetur a sapiente delectus reiciendis maiores alias consequatur aut.</p>

			</div>
			<div class=" col-md-4 col-sm-4 clr3 agileits-banner-grid">
				<span class="fa fa-child banner-icon" aria-hidden="true"></span>
				<h4>Maternal Health</h4>
				<p>Itaque earum rerum hic tenetur a sapiente delectus reiciendis maiores alias consequatur aut.</p>

			</div>


			<div class="clearfix"></div>
		</div>
	</div>


		<div class="container-fluid">
			<div class="about" id="about">
			<h3 class="title">Health Activities</h3>
			<hr>

				<?php
				$sql = "SELECT * from tblactivities ";
				$query = $dbh->prepare($sql);
				$query->execute();
				$results=$query->fetchAll(PDO::FETCH_OBJ);
				$cnt=1;
				if($query->rowCount() > 0)
				{
				foreach($results as $result)
				{	?>

			<div class="col-md-4 selectroom_left wow fadeInLeft animated" data-wow-delay=".5s">

			<div class="col-md-8 selectroom_right wow fadeInRight animated" data-wow-delay=".5s">
				<h2><?php echo htmlentities($result->Indicator);?></h2>
				<h4><?php echo htmlentities($result->Title);?></h4>
				<hr>
				<img src="<?php echo htmlentities($result->ActivityImage);?>" class="img-responsive" alt="">
				<p><b>Description:</b> <?php echo htmlentities($result->Description);?></p>
				<br>
				<p><b>Start:</b> <?php echo htmlentities($result->SDate);?></p>
				<p><b>End:</b> <?php echo htmlentities($result->FDate);?></p>
<br >
			</div>
		</div>
	<?php }} ?>

</div>
</div>



	<!--//about -->

	<!--gallery-->
	<div class="container-fluid">
	<div class="gallery titl-bottom" id="gallery">

		<h3 class="title">Gallery</h3>
		<hr>
		<div class="gallery-info">
			<div class="col-md-6 col-sm-6 gallery-grids glry-grid1 ">
				<div class="gallery-grids-top w3_agile_gallery_grid ">
					<a class="b-link-stripe" href="images/g4.jpg" data-lightbox="example-set" data-title="Making your life easier. ">
							<img src="images/g4.jpg" class="img-responsive" alt="">
							<div class="b-wrapper">
							</div>
						</a>
				</div>
				<div class="gallery-grids-top">
					<div class="col-md-6 col-sm-6 bottom-grids w3_agile_gallery_grid">
						<a class="b-link-stripe" href="images/g1.jpg" data-lightbox="example-set" data-title="Making your life easier.">
								<img src="images/g1.jpg" class="img-responsive" alt="">
								<div class="b-wrapper">
								</div>
							</a>
					</div>
					<div class="col-md-6 col-sm-6 bottom-grids w3_agile_gallery_grid">
						<a class="b-link-stripe" href="images/g2.jpg" data-lightbox="example-set" data-title="Making your life easier.">
								<img src="images/g2.jpg" class="img-responsive" alt="">
								<div class="b-wrapper">
								</div>
							</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-3 col-sm-3 gallery-grids w3_agile_gallery_grid glry-grid2">
				<a class="b-link-stripe " href="images/g3.jpg" data-lightbox="example-set">
						<img src="images/g3.jpg" class="img-responsive" alt="">
						<div class="b-wrapper">
						</div>
					</a>
			</div>
			<div class="col-md-3 col-sm-3 gallery-grids w3_agile_gallery_grid glry-grid3">
				<a class="b-link-stripe" href="images/g6.jpg" data-lightbox="example-set">
						<img src="images/g6.jpg" class="img-responsive" alt="">
						<div class="b-wrapper">
						</div>
					</a>
				<a class="b-link-stripe" href="images/g5.jpg" data-lightbox="example-set">
						<img src="images/g5.jpg" class="img-responsive" alt="">
						<div class="b-wrapper">
						</div>
					</a>
			</div>
			<div class="clearfix"></div>

		</div>

	</div>
</div>
	<!--//gallery-->



	<!--contact-->
	<div class="container-fluid">
	<div class="contact" id="contact">
			<h3 class="title">Reach Out:</h3>
<hr>
			<div class=" col-md-7 contact-address">
				<h4>Contact Address</h4>
				<div class="para-left">
					<p>Visit the county's health offices or call or send your inquiry through the contact form:</p>
				</div>
				<div class="contact-left">
					<div class="address-contact-left ">
						<h5>Address:</h5>
						<p><span class="fa fa-home"></span> 333-00200 Kisumu-Huduma Centre-6th Floor </p>
					</div>
					<div class="address-contact-left ">
						<h5>Phones:</h5>
						<p><span class="fa fa-phone"></span> +254 722 245 466</p>
						<p><span class="fa fa-phone"></span> +254 722 245 467</p>
					</div>
					<div class="address-contact-left ">
						<h5>Email:</h5>
						<p><span class="fa fa-envelope"></span> <a href="mailto:info@example.com">khisportal@moh.com</a></p>
					</div>
				</div>
			</div>
			<div class=" col-md-5">
				<div class="contact-form">
					<form action="#" method="post">
						<div class="col-md-6 col-sm-6 col-xs-6 form-right form-left">
							<input type="text" name="fname" placeholder="First Name" required="">
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6 form-right ">
							<input type="text" name="lname" placeholder="Last Name" required="">
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6 form-right form-left">
							<input type="email" name="email" placeholder="Email" required="">
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6 form-right ">
							<input type="text" name="phone" placeholder="Phone" required="">
							<div class="clearfix"> </div>
						</div>

						<textarea name="message" placeholder="Message" required=""></textarea>
						<input type="submit" class="btn btn-success" value="SEND" name="submit">
					</form>



			</div>
			</div>

			<div class="clearfix"> </div>

	</div>
</div>
	<!--//contact-->

	<!--footer-->

	<div class="footer">
		<nav>
			<ul class="nav-buttom">
				<li><a class="page-scroll" href="#home">Home</a></li>
				<li><a class="page-scroll scroll" href="#about">Activities</a></li>
				<li><a class="page-scroll scroll" href="#gallery">Gallery</a></li>
				<li><a class="page-scroll scroll" href="#contact">Contact</a></li>
			</ul>
		</nav>
		<div class="container">
		<div class="colr-row col-md-6  ">
			<div class="col-md-6 col-sm-6 col-xs-6  bottom-head bottm-grid">
				<h2><a href="index.html">Kisumu Health Portal</a></h2>

				<div class="clearfix"> </div>
			</div>

			<div class="col-md-6 col-sm-6 col-xs-6 copyright bottm-grid">
				<h3>Follow us</h3>
				<div class="icons">
					<ul>
						<li><a href="#"><span class="fa fa-facebook"></span></a></li>
						<li><a href="#"><span class="fa fa-twitter"></span></a></li>
						<li><a href="#"><span class="fa fa-rss"></span></a></li>
						<li><a href="#"><span class="fa fa-vk"></span></a></li>
					</ul>

				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
			</div>
			<div class="colr-row  col-md-6">
			<div class="col-md-6 col-sm-6 col-xs-6 one bottm-grid">
				<h3>About us</h3>
				<p> Kisumu Public Health Portal.</p>
				<span class="cap">Healthy County</span>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-6 col-sm-6 col-xs-6 three bottm-grid">
				<h3>Contact</h3>
				<div class="addres up-out">
					<p><span class="fa fa-map-marker icons-left" aria-hidden="true"></span>333-00200 Kisumu-Huduma Centre-6th Floor</p>

					<p><span class="fa fa-phone icons-left" aria-hidden="true"></span>Call us: +254 722 245 466</p>

				</div>
				<div class="clearfix"> </div>
			</div>
			<!-- //Copyright -->
			<div class="clearfix"> </div>
		</div>
		</div>
	</div>
	<footer>
		<p>&copy;2018 khisportal. All Rights Reserved</p>
	</footer>
	<!--menu script-->
	<script type='text/javascript' src='js/jquery-2.2.3.min.js'></script>
	<script src="js/bootstrap.js"></script>
	<!--//menu script-->
	<!--FlexSlider banner-->

	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide",
				start: function (slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
	<!--End-slider-script-->
	<!-- OnScroll-Number-Increase-JavaScript -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
	</script>
	<!-- //OnScroll-Number-Increase-JavaScript -->
	<script src="js/jquery.chocolat.js"></script>

	<!--light-box-files -->
	<script type="text/javascript">
		$(function () {
			$('.w3_agile_gallery_grid a').Chocolat();
		});
	</script>
	<!-- //gallery -->
	<!--client carousel -->
	<script src="js/owl.carousel.js"></script>
	<script>
		$(document).ready(function () {
			$("#owl-demo").owlCarousel({
				items: 1,
				itemsDesktop: [768, 1],
				itemsDesktopSmall: [414, 1],
				lazyLoad: true,
				autoPlay: true,
				navigation: true,

				navigationText: false,
				pagination: true,

			});

		});
	</script>
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->

	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear'
				};
			*/

			$().UItoTop({ easingType: 'easeOutQuart' });

		});
	</script>
	<!-- //here ends scrolling icon -->
</body>

</html>
