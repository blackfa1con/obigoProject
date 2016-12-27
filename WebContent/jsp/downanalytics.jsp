<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Mosaddek">
<meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<link rel="shortcut icon" href="img/favicon.png">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
<link href="/obigoProject/css/bootstrap.min.css" rel="stylesheet">
<link href="/obigoProject/css/bootstrap-reset.css" rel="stylesheet">
<!--external css-->
<link href="/obigoProject/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href="/obigoProject/assets/morris.js-0.4.3/morris.css" rel="stylesheet" />
<!--right slidebar-->
<link href="/obigoProject/css/slidebars.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="/obigoProject/css/style.css" rel="stylesheet">
<link href="/obigoProject/css/style-responsive.css" rel="stylesheet" />
<!--     <link href="/obigoProject/assets/morris.js-0.4.3/morris.css" rel="stylesheet" /> -->
</head>
<body>

	<jsp:include page="/jsp/header/header.jsp"></jsp:include>

	<section id="container" class="">
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper site-min-height">
				<div id="morris">
					<div class="row">
						<!-- page start-->
						<div class="col-lg-6" style="width: 1500px">
							<section class="panel">
								<header class="panel-heading"> Jaguar 'E' Type vehicles in the UK </header>
								<div class="panel-body">
									<div id="hero-graph" class="graph"></div>
								</div>
							</section>
						</div>
						<!-- page end-->
					</div>
				</div>
			</section>
		</section>
		<!--main content end-->

		<!--footer start-->
		<jsp:include page="/jsp/header/footer.jsp"></jsp:include>
		<!--footer end-->

	</section>

	<!-- js placed at the end of the document so the pages load faster -->
	<script src="/obigoProject/js/jquery.js"></script>
	<!--<script src="js/jquery-1.8.3.min.js"></script>-->
	<script src="/obigoProject/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript" src="/obigoProject/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="/obigoProject/js/jquery.scrollTo.min.js"></script>
	<script src="/obigoProject/js/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="/obigoProject/assets/morris.js-0.4.3/morris.min.js" type="text/javascript"></script>
	<script src="/obigoProject/assets/morris.js-0.4.3/raphael-min.js" type="text/javascript"></script>
	<script src="/obigoProject/js/respond.min.js"></script>

	<!--right slidebar-->
	<script src="/obigoProject/js/slidebars.min.js"></script>

	<!--common script for all pages-->
	<script src="/obigoProject/js/common-scripts.js"></script>

	<!-- script for this page only-->
	<!-- 	<script src="/obigoProject/js/morris-script.js"></script> -->

	<script>
		var Script = setUp(${chartList})	
			//morris chart
	function setUp(data){
			$(function() {
				// data stolen from http://howmanyleft.co.uk/vehicle/jaguar_'e'_type
				var tax_data = [
					{
						"period" : "2011-4",
						"USERS" : 3407,
						"BUNDLE UPDATE" : 660
					},
					{
						"period" : "2011-3",
						"USERS" : 3351,
						"BUNDLE UPDATE" : 629
					},
					{
						"period" : "2011-2",
						"USERS" : 3269,
						"BUNDLE UPDATE" : 618
					},
					{
						"period" : "2011-1",
						"USERS" : 12,
						"BUNDLE UPDATE" : 661
					},
					{
						"period" : "2010-12",
						"USERS" : 3171,
						"BUNDLE UPDATE" : 676
					},
					{
						"period" : "2010-11",
						"USERS" : 3155,
						"BUNDLE UPDATE" : 681
					},
					{
						"period" : "2010-10",
						"USERS" : 3155,
						"BUNDLE UPDATE" : 681
					},
					{
						"period" : "2010-9",
						"USERS" : 3155,
						"BUNDLE UPDATE" : 681
					},
					
				];
				Morris.Line({
					element : 'hero-graph',
					data : tax_data,
					xkey : 'period',
					ykeys : [ 'USERS', 'BUNDLE UPDATE' ],
					labels : [ 'users', 'budle update' ],
					lineColors : [ '#8075c4', '#6883a3' ]
				});
			});
		};
	</script>


</body>
</html>