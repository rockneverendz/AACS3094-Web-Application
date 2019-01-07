<%-- 
    Document   : staffui
    Created on : Jan 4, 2019, 11:24:54 AM
    Author     : taita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="uft-8">
	<link rel="stylesheet" href="style/AboutUsDesign.css">
	<link rel="stylesheet" href="../layout/base.css">

	<title>Staff Portal</title>
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
        <h1 align="center" style="color:white">Staff Portal</h1>
        <div>
            <h2 style="color:white;margin-left: 10%">Control Panel</h2>
            <ul style="color:white;margin-left: 10%">
            <li><a href="StaffView" style="color: white;margin-top: 20">View All Items</a>
            <li><a href="StaffAdd.jsp" style="color: white;margin-top: 20">Add New Item</a>
            <li><a href="LoadProductList" style="color: white;margin-top: 20">Update/Delete Item</a>
            <li><a href="StaffSignOut" style="color: white;margin-top: 20">Log Out</a>
            </ul>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
                
        <footer>
		<%@ include file="../layout/footer.jsp"%>
	</footer>
    </body>
</html>
