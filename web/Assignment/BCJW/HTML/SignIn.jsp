<!doctype html>
<html>

<head>
	<meta charset="utf-8" />
	<title>DySpee</title>
	<link href="../Style/DS_reset.css" rel="stylesheet" />
	<link href="../Style/DS_base.css" rel="stylesheet" />
	<link href="../Style/DS_signin.css" rel="stylesheet" />
	<link href="../Style/Image/DySpee.png" rel="icon" />
</head>

<body>
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
	<div class="article-container">

		<form>
			<fieldset id="settings">
				<legend>Sign In</legend>
				<div class="formRow">
					<label>*Email :&ensp;</label>
					<input type="text" placeholder="Email" required/>
				</div>
				<div class="formRow">
					<label>*Password :&ensp;</label>
					<input type="password" placeholder="Password" required/>
				</div>
				<div class="formRow">
					<label>&ensp;</label>
					<button id="submitBtn" type="submit">Sign In</button>
					<br/>
					<label>&ensp;</label>
					<p>Forgot your password?</p>
				</div>


			</fieldset>
		</form>
	</div>
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
				<img src="../Style/Image/DySpee.png" />

			</div>
			<div class="footer-box" id="foot5">
				<img src="../Style/Image/DySpeeOnline.png" />
			</div>
		</div>
	</footer>
</body>

</html>
