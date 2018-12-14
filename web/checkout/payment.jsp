<!DOCTYPE html>
<html>

<head>
	<meta charset="uft-8">
	<title>Checkout|Dysee Video</title>
	<link href="../layout/image/DySpee.png" rel="icon" />
	<link href="../layout/image/DySpeeOnline.png" rel="stylesheet" />
	<link href="../layout/base.css" rel="stylesheet" />
	<link href="style/payment.css" rel="stylesheet" />
	<link href="style/paymentStyle2.css" rel="stylesheet" />
	<script src="payment.js"></script>

	<script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css?family=Teko:700" rel="stylesheet">

</head>


<body>
<header>
	<%@ include file="../layout/header.jsp"%>
</header>

	<div class="article-container">
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
								<div class="bank"><img src="image/icon1.png" /> Maybank</div>
							</a>
							<a href="#">
								<div class="bank"><img src="image/icon2.png" /> CIMB Bank</div>
							</a>
							<a href="#">
								<div class="bank"><img src="image/icon3.png" /> Public Bank</div>
							</a>
							<a href="#">
								<div class="bank"><img src="image/icon4.png" /> RHB Bank</div>
							</a>
							<a href="#">
								<div class="bank"><img src="image/icon5.png" /> Hong Leong Bank</div>
							</a>
							<a href="#">
								<div class="bank"><img src="image/icon6.png" /> Bank Islam</div>
							</a>
							<a href="#">
								<div class="bank"><img src="image/icon7.png" /> AmBank</div>
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
		<%@ include file="../layout/footer.jsp"%>
	</footer>
</body>

</html>