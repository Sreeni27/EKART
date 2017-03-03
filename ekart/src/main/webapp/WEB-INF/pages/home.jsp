<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>home</title>
<style>
.carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  img.zoom-img:hover {
	-webkit-transform: scale(1.15);
	-webkit-transition-timing-function: ease-out;
	-webkit-transition-duration: 750ms;
	-moz-transform: scale(1.15);
	-moz-transition-timing-function: ease-out;
	-moz-transition-duration: 750ms;
	overflow: hidden;
}
</style>
</head>
<body>
<!-- - -	<%@include file="header.jsp" %> -->
 
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="https://i.imgur.com/OwLBUf4.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>Sell $</h3>
          <p>Money Money.</p>
        </div>      
      </div>

      <div class="item">
        <img src="http://data1.ibtimes.sg/en/full/2773/iphone-7.jpg?text=Another Image Maybe" alt="Image">
        <div class="carousel-caption">
          <h3>More Sell $</h3>
          <p>Lorem ipsum...</p>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
  
<br>
<br>
<br>


<div class="product">
		<div class="container">
			<div class="product-top">
				<div class="product-one">
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="product/single" class="mask"><img
								class="img-responsive zoom-img" src="https://rukminim1.flixcart.com/image/312/312/mobile/6/g/7/google-pixel-m4-original-imaemzzdh3azqsqb.jpeg?q=70" alt="" /></a>
							<div class="product-bottom">
								<h3>Google pixel</h3>

								<h4>
									<a class="item_add" href="#"><i></i></a> <span
										class=" item_price"> &#8377; 57000</span>
								</h4>
							</div>
							
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="single.jsp" class="mask"><img
								class="img-responsive zoom-img" src="https://rukminim1.flixcart.com/image/312/312/mobile/b/u/z/apple-iphone-7-na-original-imaemzeufk3cfuwz.jpeg?q=70" alt="" /></a>
							<div class="product-bottom">
								<h3>Iphone 7</h3>
								<h4>
									<a class="item_add" href="#"><i></i></a> <span
										class=" item_price"> &#8377; 57000</span>
								</h4>
							</div>
							
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="single.jsp" class="mask"><img
								class="img-responsive zoom-img" src="data:image/webp;base64,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" alt="" /></a>
							<div class="product-bottom">
								<h3>One Plus 3</h3>
								<h4>
									<a class="item_add" href="#"><i></i></a> <span
										class=" item_price">&#8377; 28999</span>
								</h4>
							</div>
							
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="single.jsp" class="mask"><img
								class="img-responsive zoom-img" src="https://rukminim1.flixcart.com/image/312/312/mobile/7/n/x/samsung-galaxy-s7-na-original-imaegmjszvhghyzc.jpeg?q=70" 
								 alt="" /></a>
							<div class="product-bottom">
								<h3>Samsung S7edge</h3>
								<h4>
									<a class="item_add" href="#"><i></i></a> <span
										class=" item_price">&#8377; 47999</span>
								</h4>
							</div>
				
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="product-one">
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="single.jsp" class="mask"><img
								class="img-responsive zoom-img" src="https://rukminim1.flixcart.com/image/312/312/mobile/b/g/z/lenovo-vibe-k5-note-pa330116in-pa330114in-original-imaepc2f67y38ydn.jpeg?q=70" alt="" /></a>
							<div class="product-bottom">
								<h3>Lenovo</h3>
								<h4>
									<a class="item_add" href="#"><i></i></a> <span
										class=" item_price">&#8377; 14000</span>
								</h4>
							</div>
					
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="single.jsp" class="mask"><img
								class="img-responsive zoom-img" src="https://rukminim1.flixcart.com/image/312/312/mobile/7/w/m/motorola-nexus-6-original-imaefwsvrqpgcxgd.jpeg?q=70" alt="" /></a>
							<div class="product-bottom">
								<h3>Moto</h3>
								<h4>
									<a class="item_add" href="#"><i></i></a> <span
										class=" item_price">&#8377; 32999</span>
								</h4>
							</div>
					
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="single.jsp" class="mask"><img
								class="img-responsive zoom-img" src="https://rukminim1.flixcart.com/image/312/312/mobile/g/4/h/lg-g5-h860-original-imaegskhg4h4ft2g.jpeg?q=70" alt="" /></a>
							<div class="product-bottom">
								<h3>LG G5</h3>
								<h4>
									<a class="item_add" href="#"><i></i></a> <span
										class=" item_price">&#8377; 49999</span>
								</h4>
							</div>
							
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="single.jsp" class="mask"><img
								class="img-responsive zoom-img" src="https://rukminim1.flixcart.com/image/312/312/mobile/v/h/q/huawei-nexus-6p-special-edition-h1512-original-imaee4n9emzehmfv.jpeg?q=70" alt="" /></a>
							<div class="product-bottom">
								<h3>Nexus 6p</h3>
								<h4>
									<a class="item_add" href="#"><i></i></a> <span
										class=" item_price">&#8377; 48999</span>
								</h4>
							</div>
						
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>


	<%@include file="footer.jsp" %>
	
</body>
</html>