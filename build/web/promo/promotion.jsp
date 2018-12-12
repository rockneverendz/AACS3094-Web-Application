<!DOYTYPE>
<html>

<head>
	<meta charset="uft-8">
	<link rel="stylesheet" href="style/promotiondesign.css">
	<link rel="stylesheet" href="../layout/base.css">

	<title>Promotion|Dyspee Video</title>
	<link href="../layout/image/DySpee.png" rel="icon" />

	<script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css?family=Teko:700" rel="stylesheet">

</head>

<body>
	<!-------------header-------------->
	<header>
		<%@ include file="../layout/header.jsp"%>
	</header>


	<!---------------body-------------->
	<div class="article-container">
		<div class="main">
			<div class="title">
				<h1>AVENGERS: INFINITY WAR EXCLUSIVE PROMOTIONS!!!</h1>
			</div>

			<div class="poster">
				<img src="image/Screenshot%20(24).png" class="image">
			</div>


			<div class="slideshow">
				<div class="mySlides fade">
					<div class="numbertext">1 / 4</div>
					<img src="image/1.jpg" style="width:100%" class="image zoom">

					<div class="text"><a href="#first"><em>Keychain</em></a>
					</div>
				</div>

				<div class="mySlides fade">
					<div class="numbertext">2 / 4</div>
					<img src="image/2.jpg" style="width:100%" class="image zoom">
					<div class="text"><a href="#second"><em>Movie Poster</em></a></div>
				</div>

				<div class="mySlides fade">
					<div class="numbertext">3 / 4</div>
					<img src="image/3.jpg" style="width:100%" class="image zoom">
					<div class="text"><a href="#third"><em>Keychain &amp; Movie Poster</em></a></div>
				</div>

				<div class="mySlides fade">
					<div class="numbertext">4 / 4</div>
					<img src="image/4.jpg" style="width:100%" class="image zoom">
					<div class="text"><a href="#fourth"><em>Coin</em></a></div>
				</div>

				<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
				<a class="next" onclick="plusSlides(1)">&#10095;
                </a>
			</div>

			<div class="description">
				<h1>AVENGERS: INFINITY WAR EXCLUSIVE PROMOTIONS</h1>

				<p>Buy TWO (2) Marvel Studios’ Avengers: Infinity War Tickets to get ONE (1) Infinity Gauntlet Keychain</p>
				<p>Redemption starts from 25 April 2018 onwards</p>

				<h3 id="first">Infinity Gauntlet Keychain</h3>
				<ul>
					<li>Buy TWO (2) Marvel Studios’ Avengers: Infinity War Tickets to get ONE (1) Infinity Gauntlet Keychain</li>
					<li>Redemption starts from 25 April 2018 onwards</li>
					<li>If you purchase TWO (2) movie tickets, you can only redeem either ONE (1) Infinity Gauntlet Keychain or ONE (1) Poster.</li>
				</ul>

				<h3 id="second">Exclusive Movie Poster</h3>
				<ul>
					<li>Buy TWO (2) Marvel Studios’ Avengers: Infinity War Tickets to get ONE (1) Exclusive A1 Movie Poster</li>
					<li>Redemption starts from 25 April 2018 onwards</li>
					<li>If you purchase TWO (2) movie tickets, you can only redeem either ONE (1) Infinity Gauntlet Keychain or ONE (1) Poster.</li>
				</ul>

				<h3 id="third"> Avengers Logo Keychain &amp; Exclusive Movie Poster</h3>
				<ul>
					<li>Buy TWO (2) Gold Class or FOUR (4) Premiere Class Marvel Studios’ Avengers: Infinity War Tickets to get ONE (1) Avengers Logo Keychain and ONE (1) Exclusive A1 Movie Poster</li>
					<li>Redemption starts from 25 April 2018 onwards</li>
				</ul>

				<h3 id="fourth">Avengers: Infinity War Coin - Coming Soon</h3>
				<ul>
					<li>Buy TWO (2) Marvel Studios’ Avengers: Infinity War Tickets to get ONE (1) Exclusive Marvel Studios' Avengers: Infinity War Coin</li>
					<li>Promotion date COMING SOON</li>
					<li>Terms and Conditions COMING SOON</li>
				</ul>

			</div>


		</div>
		<div class="other-event">
			<div class="title">
				<h1>More Events</h1>
			</div>
			<div class="event">
				<div>
					<img src="image/30228a0b-98d7-41ef-83d4-208e1b90aa37.jpg" class="image ">
					<div class="text"><a href="#"><em>More infomation</em></a></div>
				</div>
			</div>
			<div class="other">
				<div class="more">
					<img src="image/DG_GSC_movies_website_banners_690x380_Web_thumb.jpg" class="side zoom">

				</div>
				<div class="more">
					<img src="image/Standard_Chartered_RM7_Thumb_v3.jpg" class="side zoom">

				</div>
				<div class="more">
					<img src="image/Buy1Free1_Ambank_Credit_Card_Thumb_v2.jpg" class="side zoom">
				</div>
			</div>
		</div>
	</div>


	<!-------------footer-------------->
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
