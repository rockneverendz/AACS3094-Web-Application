<!doctype html>
<html>

<head>
	<meta charset="utf-8" />
	<title>DySpee</title>
	<link href="../layout/reset.css" rel="stylesheet" />
	<link href="../layout/base.css" rel="stylesheet" />
	<link href="../layout/image/DySpee.png" rel="icon" />
	<link href="style/signup.css" rel="stylesheet" />
</head>

<body>
<header>
	<%@ include file="../layout/header.jsp"%>
</header>
        <%@ page import="business.User"%>
        <%
            
        %>
        
	<div class="article-container">

		<form>
			<fieldset id="settings">
				<legend>Sign Up</legend>
				<div class="formRow">
					<label>Name :&ensp;</label>
					<input type="text" placeholder="Name" />
				</div>
				<div class="formRow">
					<label>*Email :&ensp;</label>
					<input type="text" placeholder="Email" required/>
				</div>
				<div class="formRow">
					<label>Date Of Birth :&ensp;</label>
					<input type="date" />
				</div>
				<div class="formRow">
					<label>*Password :&ensp;</label>
					<input type="password" placeholder="Password" required/>
				</div>
				<div class="formRow">
					<label>*Retype Password :&ensp;</label>
					<input type="password" placeholder="Password" required/>
				</div>
				<div class="formRow">
					<label>&ensp;</label>
					<button id="submitBtn" type="submit">Sign Up</button>
				</div>


			</fieldset>
		</form>
	</div>
	<footer>
		<%@ include file="../layout/footer.jsp"%>
	</footer>
</body>

</html>
