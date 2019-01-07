<%@page import="java.util.List"%>
<%@page import="entity.Product"%>

<!-- retrieve session object, ProductList -->
<%
  List<Product> ProductList = (List)session.getAttribute("ProductList");
%>
<head>
    <style>
        th{
            color:white;
            margin-left: 20;
        }
        
        td{
            color:white;
            margin-left: 20;           
        }
    </style>
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
        <header>
		<%@ include file="../layout/header.jsp"%>
        </header>
<h1 align="center" style="color:white">View All Items </h1>

<!-- Display items -->
<table border="1" style="border-color: white;">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Rating</th>
        <th>Date Release</th>
        <th>Genre</th>
    </tr>
    <% for (Product product: ProductList){ %>
        <tr>
            <td><%= product.getProductid() %></td>
            <td><%= product.getName() %> </td>
            <td><%= String.format("%.2f", product.getPrice()) %></td>
            <td><%= product.getDescription() %></td>
            <td><%= product.getRating() %></td>
            <td><%= product.getDaterelease() %></td>
            <td><%= product.getGenre() %></td>
        </tr>
    <% } %>
</table>
<br><br>
<p><a href="staffui.jsp" style="color:white;margin-left: 20">Back to home page</a></p>
<br />
<br />
<br />
        <footer>
		<%@ include file="../layout/footer.jsp"%>
	</footer>