<!DOYTYPE>
<html><head>
    <meta charset="uft-8">
    <link rel="stylesheet" href="ContactUsDesign.css">
    <link rel="stylesheet" href="../layout/Layout.css">
    
    <title>Contact us|Dyspee Video</title>
    <link href="../Style/Image/DySpee.png" rel="icon" />

    <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Teko:700" rel="stylesheet">
    
</head>

<body>
<!-------------header-------------->
     <header>
        <!-- header -->
	<div class="header-bar">
		<div class="header-container">
			<div class="header-header"><a href="../../BCJW/HTML/DySpee.jsp"><img src="../Style/Image/DySpee.png" /></a></div>
			<div class="header-title"><img src="../Style/Image/DySpeeOnline.png" /></div>
			<div class="header-searchbar">
				<form action="/action_page.php">
					<input type="text" placeholder="Search.." name="search">
					<button type="submit"><img width="22px" src="../Style/Image/search.png"/></button>
				</form>
			</div>
			<div class="header-cart">
				<a href="../../SCY/ShoppingCart/shoppingCart.jsp"><img src="../Style/Image/shopping-cart.png"/></a>
			</div>
		</div>
	</div>
	<div class="nav-bar">
		<div class="nav-container">
			<a href="../../BCJW/HTML/TVSeries.jsp">
				<div class="nav-item" id="TVSeries">TV Series
				</div>
			</a>
			<a href="../../SCY/TopRating/topRating.jsp">
				<div class="nav-item" id="Movies">Movies
				</div>
			</a>
			<a href="../../CWX/Promotion/promotion.jsp">
				<div class="nav-item" id="Promotions">Promotions
				</div>
			</a>
			<a href="../../CWX/AboutUs/AboutUs.jsp">
				<div class="nav-item" id="About">About
					<div class="nav-item-dropdown">
						<a href="../../CWX/AboutUs/AboutUs.jsp">About Us</a><br/><br/>
						<a href="../../CWX/ContactUs/ContactUs.jsp">Contact Us</a><br/><br/>
						<a href="../../CWX/FAQ/faq.jsp">FAQ</a><br/>
					</div>
				</div>
			</a>
			<a href="../../BCJW/HTML/Settings.jsp">
				<div class="nav-item" id="Account">Account
					<div class="nav-item-dropdown">
						<a href="../../BCJW/HTML/SignUp.jsp">Sign Up</a><br/><br/>
						<a href="../../BCJW/HTML/SignIn.jsp">Sign In</a><br/><br/>
						<a href="../../BCJW/HTML/Settings.jsp">Settings</a><br/>
					</div>
				</div>

			</a>
		</div>
	</div>

    </header>
    
    <!---------------body-------------->
    <div class="container">
        <div class="main">
            <div class="title">
                <h1>CONTACT US</h1>
            </div>
            
            <div class="left">
                <fieldset>
                    <legend class="text"><h3>Message<img src="icons/chat.png"></h3></legend>
                    <form>
                        <label for="name"
                           class="name text">Name*<br>
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
                    <legend class="text"><h3>Social Media<img src="icons/message.png"></h3></legend>
                    <div class="content">
                        <a href="#" class="image"><img src="icons/facebook.png" alt="facebook" title="facebook"></a>
                        <a href="#" class="image"><img src="icons/youtube.png" alt="youtube" title="youtube"></a>
                        <a href="#" class="image"><img src="icons/google-plus.png" alt="google-plus" title="google+"></a>
                        <a href="#" class="image"><img src="icons/twitter.png" alt="twitter" title="twitter"></a>
                        <a href="#" class="image"><img src="icons/email.png" alt="email" title="email"></a>
                        <a href="#" class="image"><img src="icons/telephone.png" alt="telephone" title="telephone"></a>
                    </div>
                </fieldset>
            </div>
            
            <div class="map">
                <fieldset class="mapdetail">
                    <legend class="text"><h3>Map<img src="icons/placeholder.png"></h3></legend>
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
		<div class="footer">

			<div class="footer-box" id="foot1">
				<h3>Movies</h3><br/>
				<ul>
					<li><a href="#">Action</a></li>
					<li><a href="#">Anime</a></li>
					<li><a href="#">Sci-Fic</a></li>
					<li><a href="#">Romance</a></li>
				</ul>
			</div>
			<div class="footer-box" id="foot2">
				<h3>TV-Series</h3><br/>
				<ul>
					<li><a href="#">Local</a></li>
					<li><a href="#">United States</a></li>
					<li><a href="#">Korea</a></li>
					<li><a href="#">China</a></li>
					<li><a href="#">Hong Kong</a></li>
				</ul>

			</div>

			<div class="footer-box" id="foot3">
				<h3>Question? Contact Us.</h3><br/>
				<ul>
					<li><a href="#">FAQ</a></li>
					<li><a href="#">Account</a></li>
					<li><a href="#">Contact Us</a></li>
					<li><a href="#">Help Center</a></li>
					<li><a href="#">Promotion</a></li>
				</ul>

			</div>

			<div class="footer-box" id="foot4">
				<img src="../layout/Logo.png" />

			</div>

			<div class="footer-box" id="foot5">
				<img src="../layout/DySpeeOnline.png" />

			</div>
		</div>
	</footer>

    <script>
        function myMap() {
            var mapCanvas = document.getElementById("googleMap");
            var myCenter = new google.maps.LatLng(3.213898,101.726583);
            var mapOptions = {center: myCenter, zoom: 10};
            var map = new google.maps.Map(mapCanvas,mapOptions);
            var marker = new google.maps.Marker({
                position: myCenter,
                animation: google.maps.Animation.BOUNCE
            });
            marker.setMap(map);
        }

    </script>
    
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCSkyupqpaYaR61Vq4IhuXpVZIDtQruB0E&callback=myMap">
    </script>

</body></html>
