<!DOCTYPE html>
<html ng-app="tbpostive">
<head>
	<title>TB Positive</title>
	<meta charset="utf-8">
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- Bootstrap Core CSS -->
	<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
	<!-- Custom CSS -->
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="css/morris.css" type="text/css"/>
	<!-- Graph CSS -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- jQuery -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<!-- //jQuery -->
	<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
	<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<!-- lined-icons -->
	<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
	<link href="css/text.css" rel="stylesheet" type="text/css" />
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.bundle.min.js"></script>

<style type="text/css">
		canvas{
			margin:auto;
		}
		.alert{
			margin-top:20px;
		}
	</style>
</head>
<body ng-controller="myCtrl">
<div class="container">

	<div class="row">


		<div class="col-sm-10" ng-init="tb_pos()">
<h3 class="page-header text-center text-primary"><strong>Tuberculosis</strong></h3>			<a href="#" class="btn btn-default">2015</a>
			<a href="#" class="btn btn-default">2016</a>
			<a href="tb-tested.php" class="btn btn-default">2017</a>
			<a href="../data/tb-tested.php" class="btn btn-default">2018</a>
			<br>
			<br>
			<br>
			<canvas id="dvCanvas" height="200" width="300"></canvas>
	    </div>

			<div class="col-sm-2 text-center">
				<h3 class="page-header text-center">Key&nbsp;:</h3>
        <button class="btn btn-default btn-md"><a href="tb-tested.php">Population Tested</a></button>
				<br><br>
				<button class="btn btn-default btn-md"><a href="tb-positive.php">Tested Positive</a></button>
				<br><br>
				<button class="btn btn-default btn-md"><a href="tb-negative.php">Tested Negative</a></button>

			</div>

			</div>
</div>

<?php include('includes/sidebarmenu.php');?>
			<div class="clearfix"></div>
		</div>
		<script>
		var toggle = true;

		$(".sidebar-icon").click(function() {
			if (toggle)
			{
			$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
			$("#menu span").css({"position":"absolute"});
			}
			else
			{
			$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
			setTimeout(function() {
				$("#menu span").css({"position":"relative"});
			}, 400);
			}

						toggle = !toggle;
					});
		</script>
<!--js -->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<script src="js/tbpostive.js"></script>
</body>
</html>
