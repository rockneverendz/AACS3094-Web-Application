<!DOYTYPE>
<html>

<head>
	<meta charset="uft-8">
	<link rel="stylesheet" href="style/AboutUsDesign.css">
	<link rel="stylesheet" href="../layout/base.css">

	<title>About us|Dyspee Video</title>
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
				<h1 class="dyspee">DYSPEE</h1>
				<h3>--About Us--</h3>
				<p>A leading home entertainment expert with over 1 years of experience bringing movies and music alive in state-of-the-art technology all in the comfort of home, housing more than 80,000 titles of DVD, VCD and CDs. </p>
				<p>We are highly synonymous with offering wide array of licensed movie &amp; music product with affordable price.</p>
			</div>

			<div class="image1">
				<div class="slideshow">
					<div class="mySlides">
						<div class="numbertext"><strong><em>
                            We hope that all our customers enjoy with movie </em></strong></div>
						<img src="image/1.jpg" class="image">

					</div>

					<div class="mySlides">
						<div class="numbertext"><strong><em>with friends</em></strong></div>
						<img src="image/2.jpg" class="image">

					</div>

					<div class="mySlides">
						<div class="numbertext"><strong><em>with family</em></strong></div>
						<img src="image/3.jpg" class="image">

					</div>

					<div class="mySlides">
						<div class="numbertext"><strong><em>old man</em></strong></div>
						<img src="image/4.jpg" class="image">

					</div>

					<div class="mySlides">
						<div class="numbertext"><strong><em>even children</em></strong></div>
						<img src="image/5.jpg" class="image">

					</div>


					<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
					<a class="next" onclick="plusSlides(1)">&#10095;
                </a>

				</div>
			</div>

			<div class="movie text">
				<h3>Why Movies<img src="icon/video-player.png"></h3>
				<p>Movie also known as films, are a type of visual communication which uses moving pictures and sound to tell stories or inform (help people to learn). People in every part of the world watch movies as a type of entertainment, a way to have fun. </p>
				<p>For some people, fun movies can mean movies that make them laugh, while for others it can mean movies that make them cry, or feel afraid.</p>
				<p>Movie are very interesting and enjoyable. So we want everyone can watch movies easily.</p>
			</div>

			<div class="aim text">
				<h3>Our goal<img src="icon/goal.png"></h3>
				<p>Dyspee Video is highly synonymous with quality home entertainment service offering a wide array of titles for customers looking for original products at affordable price. </p>

				<p>Besides, Dyspee Video Distributors also procure and distribute theatrical and TV broadcasting license to various theatrical studios, cinema operators, broadcasting channels and free or pay TV.</p>
				<p>Rest time? Enjoy with movie.Everytime and everyday.</p>

			</div>

			<div class="image2 image"><img src="image/6.jpg">
			</div>
		</div>

	</div>





	<!-- Footer  -->
	<footer>
		<%@ include file="../layout/footer.jsp"%>
	</footer>

	<script>
		var slideIndex = 1;
		showSlides(slideIndex);

		function plusSlides(n) {
			showSlides(slideIndex += n);
		}

		function currentSlide(n) {
			showSlides(slideIndex = n);
		}

		function showSlides(n) {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			if (n > slides.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = slides.length
			}
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slides[slideIndex - 1].style.display = "block";
		}

	</script>
</body>

</html>
