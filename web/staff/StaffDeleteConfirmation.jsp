<%@page import="java.text.SimpleDateFormat"%>
<%@page import="entity.Product"%>
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

        <style>
            form{
                color:white;
                margin-left: 10%;
                margin-top: 50;
            }
            
            td{
                color:white;
                margin-top: 30;
            }
        </style>

</head>
    <body>
        <header>
		<%@ include file="../layout/header.jsp"%>
	</header>
        <%
            Product product = (Product) session.getAttribute("product");
            if (product != null) {
                
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        %>
        <h1 align="center" style="color:white">Delete Product</h1>
        <form action="StaffDeleteItem" method="post" onsubmit="return window.confirm('Are you sure you want to delete this item?')">
            <table border="0">
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id"
                               value="<%=product.getProductid()%>" readonly></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" size="50"
                               value="<%=product.getName()%>" readonly></td>
                </tr>
                <tr>
                    <td>Price (RM)</td>
                    <td><input type="text" name="price"
                               value="<%=String.format("%.2f", product.getPrice())%>" readonly></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td><input type="text" name="description" size="50"
                               value="<%=product.getDescription() %>" readonly></td>
                </tr>
                <tr>
                    <td>Rating</td>
                    <td><input type="text" name="rating"
                               value="<%=product.getRating() %>" readonly></td>
                </tr>
                <tr>
                    <td>Date Release</td>
                    <td><input type="date" name="daterelease" size="50"
                               value="<%= sdf.format(product.getDaterelease()) %>" readonly></td>
                </tr>
                <tr>
                    <td>Genre</td>
                    <td><input type="text" name="genre"
                               value="<%=product.getGenre() %>" readonly></td>
                </tr>
            </table>
            <input type="submit" value="Delete Item">

        </form>
        <br />
        <br />
        <br />
        <%} else {%>
        Product ${product.id} not found
        <p><a href="staffui.jsp" style="color:white;margin-left: 20">Back to home page</a></p>
        <%}%>
                <footer>
		<%@ include file="../layout/footer.jsp"%>
	</footer>
    </body>
    
</html>

