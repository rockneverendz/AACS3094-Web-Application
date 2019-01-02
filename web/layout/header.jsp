<!-- HEADER IS HERE-->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
    <!-- Brand -->
    <a class="navbar-brand" href="../video/DySpee.jsp">
        <img src="../layout/image/DySpee.png" width="80" height="80" />
        <img src="../layout/image/DySpeeOnline.png" width="180" />
    </a>

    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="../video/DySpee.jsp"><i class="fas fa-home"></i> Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="../promo/promotion.jsp"><i class="fas fa-gift"></i> Promotions</a>
        </li>
        <!-- Drop Down -->
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"><i class="fas fa-film"></i> Movies</a>
            <ul class="dropdown-menu">
                <a class="dropdown-item" href="../video/topRating.jsp">Top Rating</a>
                <a class="dropdown-item" href="#">New Release</a>
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Animation</a>
                <a class="dropdown-item" href="../video/TVSeries.jsp">Anime</a>
                <a class="dropdown-item" href="#">Horror</a>
            </ul>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"><i class="fas fa-info-circle"></i> About</a>
            <ul class="dropdown-menu">
                <a class="dropdown-item" href="../about/AboutUs.jsp">About Us</a>
                <a class="dropdown-item" href="../about/ContactUs.jsp">Contact Us</a>
                <a class="dropdown-item" href="../about/faq.jsp">FAQ</a>
            </ul>
        </li>
        <li style="color: white; font-size: 9px;">
            <!--Debug start-->

            <%@page import="entity.Customer"%>
            <%= session.getId()%>
            <br>
            <%
                Customer customerLogged = (Customer) session.getAttribute("customer");
                if (customerLogged != null) {
            %>
            Cust ID = <%= customerLogged.getCustid()%>
            <br>
            Cust Name = <%= customerLogged.getCustname()%>
            <%
                }
            %>

            <!--Debug end-->
        </li>
    </ul>

    <div class="input-group ml-auto col-3">
        <input type="text" class="form-control" placeholder="Search..." name="search">
        <div class="input-group-append">
            <button class="btn btn-secondary" type="submit">
                <i class="fa fa-search"></i>
            </button>
        </div>
    </div>

    <!--From Right-->
    <ul class="navbar-nav ml-auto">
        <a class="nav-link" href="../checkout/shoppingCart.jsp"><i class="fas fa-shopping-cart"></i> &nbsp;Cart</a>
        
        <%
            if (customerLogged == null) {
        %>
        <a class="nav-link" href="../account/SignUp.jsp"><i class="fas fa-user"></i> &nbsp;Sign Up</a>
        <a class="nav-link" href="../account/SignIn.jsp"><i class="fas fa-sign-in-alt"></i> &nbsp;Login</a>
        <%
        } else {
        %>
        <a class="nav-link" href="../account/SignOut"><i class="fas fa-sign-out-alt"></i> &nbsp; Sign Out</a>
        <a class="nav-link" href="../account/Settings.jsp"><i class="fas fa-cog"></i> &nbsp; Settings</a>
        <a class="nav-link" href="#"><i class="fas fa-user"></i> &nbsp; <%= customerLogged.getCustname()%></a>
        <%
            }
        %>
        
        
        
    </ul>

</nav>
        
<div style="height: 110px;"></div>
