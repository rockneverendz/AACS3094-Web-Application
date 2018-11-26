<!DOCTYPE html>
<html>

<head>
	<meta charset="uft-8">
	<title>Shopping Cart|Dyspee Video</title>
	<link href="../Logo.png" rel="icon" />
	<link href="../Layout.css" rel="stylesheet" />
	<link href="cartStyle.css" rel="stylesheet" />
	<script src="subtotal.js"></script>

	<script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css?family=Teko:700" rel="stylesheet">
</head>


<body onload="load()">

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



	<!--Container Start-->

	<div class="container">
		<!--Cart-->
		<div id="col1" class="row1">
			<form action="" id="itemform" onsubmit="return false;">

				<table id="cartTable">
					<caption>Your Shopping Cart</caption>
					<tr>
						<th>Items</th>
						<th>Select Dics Type</th>
						<th>Quantity</th>
						<th>Price</th>
					</tr>
					<tr id="list1">
						<td class="item">
							<button type="button" class="trash">
								<i class="fas fa-trash-alt"></i>
							</button>
							<img src="images/poster1.jpg" />
							<p>Avengers: Infinity War(2018)</p>
						</td>
						<td>
							<input type="radio" name="selecteditem1" value="bluray" onclick="calculateTotal1()" onchange="subTotal()" checked />
							<label><img src="images/blu-ray-logo.png"/></label>
							<br/>
							<input type="radio" name="selecteditem1" value="dvd" onclick="calculateTotal1()" onchange="subTotal()" />
							<label><img src="images/dvd-logo.png"/></label>
						</td>
						<td>
							<input type="number" id="myNumber1" value="1" min="1" onclick="calculateTotal1()" onchange="subTotal()" />
						</td>
						<td>
							<em><div class="totalPrice1"></div></em>
						</td>
					</tr>


					<tr id="list2">
						<td class="item">
							<button type="button" class="trash">
								<i class="fas fa-trash-alt"></i>
							</button>
							<img src="images/poster2.jpg" />
							<p>The Avengers (2012)</p>
						</td>
						<td>
							<input type="radio" name="selecteditem2" value="bluray" onclick="calculateTotal2()" onchange="subTotal()" checked />
							<label><img src="images/blu-ray-logo.png"/></label>
							<br/> <input type="radio" name="selecteditem2" value="dvd" onclick="calculateTotal2()" onchange="subTotal()" />
							<label><img src="images/dvd-logo.png"/></label>
						</td>
						<td>
							<input type="number" id="myNumber2" value="1" min="1" onclick="calculateTotal2()" onchange="subTotal()" />

						</td>
						<td>
							<em><div class="totalPrice2"></div></em>
						</td>
					</tr>


					<tr id="list3">
						<td class="item">
							<button type="button" class="trash">
								<i class="fas fa-trash-alt"></i>
							</button>
							<img src="images/poster3.jpg" />
							<p>Avengers: Age of Ultron (2015)</p>
						</td>
						<td>
							<input type="radio" name="selecteditem3" value="bluray" onclick="calculateTotal3()" onchange="subTotal()" checked />
							<label><img src="images/blu-ray-logo.png"/></label>
							<br/>
							<input type="radio" name="selecteditem3" value="dvd" onclick="calculateTotal3()" onchange="subTotal()" />
							<label><img src="images/dvd-logo.png"/></label>

						</td>

						<td>
							<input type="number" id="myNumber3" value="1" min="1" onclick="calculateTotal3()" onchange="subTotal()" />
						</td>
						<td>
							<em><div class="totalPrice3"></div></em>
						</td>
					</tr>
				</table>

			</form>


		</div>

		<!--Order Summary---------------------------------------->
		<div id="col2" class="row1">
			<table class="ordTable">
				<caption>Order Summary</caption>
				<tr>
					<th>Items</th>
					<th>Dics Type</th>
					<th>Quantity</th>
					<th>Price</th>
				</tr>
				<tr>
					<td>Avengers: Infinity War(2018)</td>
					<td>
						<div id="dicsImg1"></div>
					</td>
					<!-- -------------------- -->
					<td>
						<div id="qitem1"></div>
					</td>
					<td>
						<em><div class="totalPrice1"></div></em>
					</td>
				</tr>
				<tr>
					<td>The Avengers (2012)</td>
					<td>
						<div id="dicsImg2"></div>
					</td>
					<td>
						<div id="qitem2"></div>
					</td>
					<td>
						<em><div class="totalPrice2"></div></em>
					</td>
				</tr>
				<tr>
					<td>Avengers: Age of Ultron (2015)</td>
					<td>
						<div id="dicsImg3"></div>
					</td>
					<td>
						<div id="qitem3"></div>
					</td>
					<td>
						<em><div class="totalPrice3"></div></em>
					</td>
				</tr>
				<tr>
					<td colspan="3">Shipping fee:</td>
					<td><em>RM 0.00 (FREE!)</em></td>

				</tr>
				<tr>
					<td colspan="3"><em>Subtotal:</em></td>
					<td>
						<em><div id="subTotal"></div></em>
					</td>
				</tr>
			</table>

			<a href="../Payment form/payment.jsp">
				<button type="submit" id="cekOut">Proceed to Checkout</button>
			</a>

		</div>
	</div>

	<!-- Footer  -->
	<footer>
		<div class="footer">

			<div class="footer-box" id="foot1">
				<h3>Movies</h3>
				<ul>
					<li><a href="#">Action</a></li>
					<li><a href="#">Anime</a></li>
					<li><a href="#">Sci-Fic</a></li>
					<li><a href="#">Romance</a></li>
				</ul>
			</div>
			<div class="footer-box" id="foot2">
				<h3>TV-Series</h3>
				<ul>
					<li><a href="#">Local</a></li>
					<li><a href="#">United States</a></li>
					<li><a href="#">Korea</a></li>
					<li><a href="#">China</a></li>
					<li><a href="#">Hong Kong</a></li>
				</ul>

			</div>

			<div class="footer-box" id="foot3">
				<h3>Question? Contact Us.</h3>
				<ul>
					<li><a href="#">FAQ</a></li>
					<li><a href="#">Account</a></li>
					<li><a href="#">Contact Us</a></li>
					<li><a href="#">Help Center</a></li>
					<li><a href="#">Promotion</a></li>
				</ul>

			</div>

			<div class="footer-box" id="foot4">
				<img src="../Logo.png" />

			</div>

			<div class="footer-box" id="foot5">
				<img src="../Image/Logo-char.png" />

			</div>
		</div>
	</footer>
</body>

</html>
