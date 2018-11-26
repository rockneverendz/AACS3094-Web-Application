<!DOCTYPE html>
<html>

<head>
	<meta charset="uft-8">
	<title>Checkout|Dysee Video</title>
	<link href="../Logo.png" rel="icon" />
	<link href="../Layout.css" rel="stylesheet" />
	<link href="payment.css" rel="stylesheet" />
	<link href="paymentStyle2.css" rel="stylesheet" />
	<script src="payment.js"></script>

	<script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css?family=Teko:700" rel="stylesheet">

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


	<!--Container Start-->

	<div class="container">
		<div class="box" id="deliInfo">
			<form id="delivery">

				<fieldset class="delField">
					<legend>Delivery Information</legend>
					<div class="formRow">
						<label for="name">*Name :</label>
						<input name="custName" id="custName" type="text" placeholder="e.g. First name & last name" required>
					</div>

					<div class="formRow">
						<label for="email">*Email Address :</label>
						<input name="email" id="email" type="email" placeholder="e.g. email@example.com" required/>
					</div>

					<div class="formRow">
						<label for="phone">*Phone Number :</label>
						<input name="phone" id="phone" type="tel" placeholder="e.g. (nnn)nnn-nnnn" required />
					</div>

					<div class="formRow">
						<label for="address">*Address :</label>
						<textarea name="address" id="address" type="text" placeholder="Please fill up the actual address of your house" rows="4" cols="50" required></textarea>
					</div>

					<div class="formRow">
						<label for="state">*State :</label>
						<select name="state" id="state">
                           <optgroup label="West Malaysia">
                            	<option value="kl">Wp Kuala Lumpur</option>
                           		<option value="jh">Johor</option>
                            	<option value="kd">Kedah</option>
                            	<option value="kln">Kelantan</option>
                            	<option value="mlk">Melaka</option>
                           		<option value="ns">Negeri Sembilan</option>
                            	<option value="ph">Pahang</option>
                            	<option value="pn">Penang</option>
                            	<option value="prk">Perak</option>
                            	<option value="pls">Perlis</option>
                            	<option value="selg">Selangor</option>
                            	<option value="trng">Terengganu</option>
                            </optgroup>
                            
                            <optgroup label="East Malaysia">
                            	<option value="saba">Sabah</option>
                            	<option value="sara">Sarawak</option>
                            </optgroup>
                        </select>
					</div>

					<div class="formRow">
						<label for="postCode">*Postcode :</label>
						<input name="postCode" id="postCode" type="text" placeholder="e.g. 53300" pattern="\d{5}" required/>
					</div>

					<button id="submitBtn" type="submit">Continue</button>
				</fieldset>
			</form>
		</div>


		<!--Order Summary-->
		<div class="box" id="ordSumary">
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
					<td>Blu-ray</td>
					<td>1</td>
					<td><em>RM 30.00</em></td>
				</tr>
				<tr>
					<td>The Avengers (2012)</td>
					<td>Blu-ray</td>
					<td>1</td>
					<td><em>RM 30.00</em></td>
				</tr>
				<tr>
					<td>Avengers: Age of Ultron (2015)</td>
					<td>Blu-ray</td>
					<td>1</td>
					<td><em>RM 30.00</em></td>
				</tr>
				<tr>
					<td colspan="3">Shipping fee:</td>
					<td><em>RM 0.00 (FREE)</em></td>

				</tr>
				<tr>
					<td colspan="3"><em>Subtotal:</em></td>
					<td><em>RM 90.00</em></td>

				</tr>
			</table>
		</div>

		<!--Select Payment Method-->

		<div class="box" id="payMetd">


			<div id="payHeader">Select Payment Method</div>

			<div class="pay" id="pay">

				<button class="tablink" onclick="openPage('CDCard', this, 'rgba(255, 0, 0, 0.5)')" id="defaultOpen">Credit/Debit Card <br/><i class="far fa-credit-card"></i></button>
				<button class="tablink" onclick="openPage('onBank', this, 'rgba(255, 215, 0, 0.5)')">Online Banking<br/><i class="fas fa-desktop"></i></button>
				<button class="tablink" onclick="openPage('pal', this, 'rgba(0, 0, 255, 0.5)')">Paypal <br/><i class="fab fa-paypal"></i></button>
				<button class="tablink" onclick="openPage('onCash', this, 'rgba(0, 255, 0, 0.5)')">Cash on Delivery<br/><i class="far fa-money-bill-alt"></i></button>

				<form id="privateInfo">
					<fieldset id="CDCard" class="tabcontent">
						<h3>Credit/Debit Card &nbsp; <i class="fab fa-cc-visa"></i> <i class="fab fa-cc-mastercard"></i></h3>

						<div class="formRow">
							<label>*Card Number</label>
							<input type="text" placeholder="Card Number" required/>
						</div>
						<div class="formRow">
							<label>*Name on Card</label>
							<input type="text" placeholder="Name on card" required/>
						</div>
						<div class="formRow">
							<label>*Expiration Date</label>
							<input type="date" placeholder="DD/MM/YY" required/>
						</div>
						<div class="formRow">
							<label>*CVV</label>
							<input type="text" placeholder="CVV" required/>
						</div>

						<button id="submitBtn" type="submit">Place Order Now</button>


					</fieldset>

					<fieldset id="onBank" class="tabcontent">
						<h3>Online Banking</h3>
						<p>You be redirected to selected bank website to complete the payment.</p>

						<div id="bankGrp">
							<a href="#">
								<div class="bank"><img src="Bank icon/icon1.png" /> Maybank</div>
							</a>
							<a href="#">
								<div class="bank"><img src="Bank icon/icon2.png" /> CIMB Bank</div>
							</a>
							<a href="#">
								<div class="bank"><img src="Bank icon/icon3.png" /> Public Bank</div>
							</a>
							<a href="#">
								<div class="bank"><img src="Bank icon/icon4.png" /> RHB Bank</div>
							</a>
							<a href="#">
								<div class="bank"><img src="Bank icon/icon5.png" /> Hong Leong Bank</div>
							</a>
							<a href="#">
								<div class="bank"><img src="Bank icon/icon6.png" /> Bank Islam</div>
							</a>
							<a href="#">
								<div class="bank"><img src="Bank icon/icon7.png" /> AmBank</div>
							</a>
						</div>
						<button id="submitBtn" type="submit">Place Order Now</button>

					</fieldset>

					<fieldset id="pal" class="tabcontent">
						<h3>Paypal</h3>
						<p>You will be redirected to Paypal to complete payment.</p>

						<button id="submitBtn" type="submit">Place Order Now</button>
					</fieldset>

					<fieldset id="onCash" class="tabcontent">
						<h3>Cash on Delivery</h3>
						<p>You can pay in cash to our courier when you receive the goods at your doorstep.</p>

						<input id="checkbox" type="checkbox" name="comfrim" value="comfrim" checked/>
						<label>Billing address is the same as shipping address.</label>

						<button id="submitBtn" type="submit">Place Order Now</button>

					</fieldset>
				</form>
			</div>
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
