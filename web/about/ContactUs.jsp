<!DOYTYPE>
<html>

<head>
	<meta charset="uft-8">
	<link rel="stylesheet" href="style/ContactUsDesign.css">
	<link rel="stylesheet" href="../layout/base.css">

	<title>Contact us|Dyspee Video</title>
	<link href="../layout/image/DySpee.png" rel="icon" />

	<script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css?family=Teko:700" rel="stylesheet">
        
        <!-- Importing Bootstrap 4-->
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="../bootstrap-4.2.1-dist/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="../bootstrap-4.2.1-dist/js/bootstrap.min.js"></script>
        <!-- Font Awesome Allows Input external Icon -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">


</head>

<body>
	<header>
		<%@ include file="../layout/header.jsp"%>
	</header>

	<div class="article-container">
		<div class="main">
			<div class="title">
				<h1>CONTACT US</h1>
			</div>

			<div class="left">
				<fieldset>
					<legend class="text">
						<h3>Message<img src="icon/chat.png"></h3>
					</legend>
					<form>
						<label for="name" class="name text">Name*<br>
                            <input id="name" type="text">
                        </label>
						<br>
						<br>
						<label for="email" class="email text">Email*<br>
                            <input id="email" type="email">
                        </label>
						<br>
						<br>
						<label for="message" class="message text">Message*<br>
                            <textarea class="message" id="message" rows="10" cols="75" name="comment" >Enter text here...</textarea>
                        </label>
						<input type="submit" class="submit">
					</form>
				</fieldset>
			</div>

			<div class="right">
				<fieldset>
					<legend class="text">
						<h3>Social Media<img src="icons/message.png"></h3>
					</legend>
					<div class="content">
						<a href="#" class="image"><img src="icon/facebook.png" alt="facebook" title="facebook"></a>
						<a href="#" class="image"><img src="icon/youtube.png" alt="youtube" title="youtube"></a>
						<a href="#" class="image"><img src="icon/google-plus.png" alt="google-plus" title="google+"></a>
						<a href="#" class="image"><img src="icon/twitter.png" alt="twitter" title="twitter"></a>
						<a href="#" class="image"><img src="icon/email.png" alt="email" title="email"></a>
						<a href="#" class="image"><img src="icon/telephone.png" alt="telephone" title="telephone"></a>
					</div>
				</fieldset>
			</div>

			<div class="map">
				<fieldset class="mapdetail">
					<legend class="text">
						<h3>Map<img src="icon/placeholder.png"></h3>
					</legend>
					<div id="googleMap" style="width:50%;height:200px;"></div>

					<div class="mapaddress">

						<address class="text">
                            <p><strong>Address :</strong> Jalan Malinja, Taman Bunga Raya, 53000 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur</p>
                        </address>
					</div>
				</fieldset>
			</div>

		</div>

	</div>


	<!-- Footer  -->
	<footer>
		<%@ include file="../layout/footer.jsp"%>
	</footer>

	<script>
		function myMap() {
			var mapCanvas = document.getElementById("googleMap");
			var myCenter = new google.maps.LatLng(3.213898, 101.726583);
			var mapOptions = {
				center: myCenter,
				zoom: 10
			};
			var map = new google.maps.Map(mapCanvas, mapOptions);
			var marker = new google.maps.Marker({
				position: myCenter,
				animation: google.maps.Animation.BOUNCE
			});
			marker.setMap(map);
		}

	</script>

	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCSkyupqpaYaR61Vq4IhuXpVZIDtQruB0E&callback=myMap">


	</script>

</body>

</html>
