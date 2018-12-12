<!doctype html>
<html>

<head>
	<meta charset="utf-8" />
	<title>DySpee</title>
	<link href="../layout/reset.css" rel="stylesheet" />
	<link href="../layout/base.css" rel="stylesheet" />
	<link href="../layout/image/DySpee.png" rel="icon" />
	<link href="style/signin.css" rel="stylesheet" />
</head>

<body>
<header>
	<%@ include file="../layout/header.jsp"%>
</header>

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
		<%@ include file="../layout/footer.jsp"%>
	</footer>
</body>

</html>
