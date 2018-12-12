<!DOCTYPE>
<html>

<head>
	<meta charset="uft-8">
	<link rel="stylesheet" href="style/faqdesign.css">
	<link rel="stylesheet" href="../layout/base.css">

	<title>FAQ|Dyspee Video</title>
	<link href="../layout/image/DySpee.png" rel="icon" />

	<script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css?family=Teko:700" rel="stylesheet">


</head>


<body>
	<header>
		<%@ include file="../layout/header.jsp"%>
	</header>

	<div class="article-container">

		<div class="main">
			<div id="title"><strong id="faq">FAQ</strong><img src="icon/conversation.png">

				<div id="description">Everything you really needs to know about DYSPEE.</div>
			</div>

			<!--question-->

			<button class="question"><img src="icon/question.png">How do I place an order?</button>
			<div class="answer">
				<p><img src="icon/letter-a.png"><strong>nswer:</strong>&nbsp;You only have to follow these simple steps:</p>
				<ol>
					<li>choose your product</li>
					<li>check product information</li>
					<li>add to cart</li>
					<li>enter your email</li>
					<li>provide delivery information</li>
					<li>choose your payment method</li>
					<li>place your order</li>
					<li>receive order confirmation</li>
				</ol>
			</div>

			<button class="question"><img src="icon/question.png">How can I change delivery address/ phone number/ recipient for my existing order?</button>
			<div class="answer">
				<p><img src="icon/letter-a.png"><strong>nswer:</strong>&nbsp;Changes in delivery address / phone number / recipient of the item is not allowed after the order has been successfully made. <br>This is one of the precaution steps to avoid fraud attempt. Kindly ensure all the information is correct prior placing an order.</p>
			</div>


			<button class="question"><img src="icon/question.png">Can I cancel my booking?</button>
			<div class="answer">
				<p><img src="icon/letter-a.png"><strong>nswer:</strong>&nbsp;Yes, you can. However, cancellation is only allowed if the appointment had not been confirmed.<br> You may contact Dyspee to cancel the order.</p>
			</div>

			<button class="question"><img src="icon/question.png">How can I know if my payment was successful or fail?</button>
			<div class="answer">
				<p><img src="icon/letter-a.png"><strong>nswer:</strong>&nbsp; You will be notified via SMS and email within 24 hours upon completion of order confirmation.<br> Please be aware of your Bank reconciliation schedule as this might have impact on your payment (payment cannot be performed during bank reconciliation time).<br> Bank reconciliation time only affect payment method via Online Banking and will happen at around 11.30 p.m. to 1.30 a.m. depending on your bank.</p>
			</div>

			<button class="question"><img src="icon/question.png">How soon will I receive my refund?</button>
			<div class="answer">
				<p><img src="icon/letter-a.png"><strong>nswer:</strong>&nbsp; Refund can be processed in case of return or cancellation. For your convenience, we offer different refund options for you to choose from, basing on your payment method at the time of purchase.<br> We will update you via email and SMS once your refund has been initiated. You will be able to see the credited amount on your statement.<br> If the refund does not arrive after the next two months’ statements, please contact your issuing bank or party directly for support.</p>
			</div>

			<button class="question"><img src="icon/question.png">How do I register for a Lazada account?</button>
			<div class="answer">
				<p><img src="icon/letter-a.png"><strong>nswer:</strong>&nbsp; Registering Lazada accounts is fast and easy.<br> Click on the List on the top right of the Dyspee website and fill in all the details.<br> Click Submit An email notification will be sent to your successful registration.
				</p>

			</div>




			<div id="contactus">Can't find your Question? <a href="../about/ContactUs.jsp" title="For more information!"><em>Contact us!<img src="icon/auricular-phone-symbol-in-a-circle.png"></em></a></div>


		</div>

	</div>

	<!-- Footer  -->
	<footer>
		<%@ include file="../layout/footer.jsp"%>
	</footer>

	<script>
		var acc = document.getElementsByClassName("question");
		var i;

		for (i = 0; i < acc.length; i++) {
			acc[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var answer = this.nextElementSibling;
				if (answer.style.maxHeight) {
					answer.style.maxHeight = null;
				} else {
					answer.style.maxHeight = answer.scrollHeight + "px";
				}
			});
		}

	</script>

</body>

</html>
