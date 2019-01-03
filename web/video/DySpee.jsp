<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>DySpee</title>
        <link href="../layout/reset.css" rel="stylesheet" />
        <link href="../layout/base.css" rel="stylesheet" />
        <link href="../layout/image/DySpee.png" rel="icon" />

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

        <!-- A Little CSS Spices -->
        <style>
            .jumbotron{
                height: 45em;
                margin: 0;
                padding: 100px 0 100px 0; 
                background-color: rgba(0,0,0,0.70); 
                color: white;
                text-shadow: 0 0 5px #426bf4, 0 0 10px #426bf4;
            }

            /* Make the image fully responsive */
            .carousel-inner img {
                width: 100%;
                height: 40em;
            }

            .Categories, .News-review{
                margin: auto;
                width: 80%;
                color: aliceblue;
                background-color: rgba(0,0,0,0.80);
                padding: 3em;
            }

            .cateBox > a > img:hover{
                box-shadow: 0 0 3px 6px rgb(4, 145, 180);
            }

        </style>

    </head>

    <body>

        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>

        <%--
            Status code 0 = Successfully Signed Out
            Status code 1 = Successfully Signed In
            Status code 2 = Successfully Signed Up
        
            Status code A = Already Signed in
            Status code Y = Not Signed in
        --%>

        <%  String status = request.getParameter("status");
            String message;
            if (status == null) {
                message = "";
            } else {
                char code = status.charAt(0);
                if (code == '0') {
                    message = "Successfully Signed Out!";
                } else if (code == '1') {
                    message = "Successfully Signed In!";
                } else if (code == '2') {
                    message = "Successfully Signed Up!";
                } else if (code == 'A') {
                    message = "Already Signed in!";
                } else if (code == 'Y') {
                    message = "You have to be logged in to do that!";
                } else {
                    message = "Error has occured";
                }
        %>

        <div class="message-container">
            <%= message%>
        </div>

        <%
            }
        %>


        <!-- Jumbotron -->
        <div class="jumbotron jumbotron-fluid text-center">
            <img src="image/Home-img/Welcome.png" alt="welcome" />
            <h5>The home of amazing original programming that you can't find anywhere else. <br>
                Movies, TV shows, specials and more, it's all tailored specifically to you. </h5>
        </div>

        <!-- Carousel -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="image/Home-img/KimiNoNaWa.png" />
                </div>

                <div class="carousel-item">
                    <img src="image/Home-img/Infinity%20War.jpg" />
                </div>
                <div class="carousel-item">
                    <img src="image/Home-img/incredibles-2-background-42.jpg" />
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>

        <!-- Categories-->
        <div class="Categories">
            <h2>Categories</h2>
            <div class="row" style="margin: 15px;">
                <div class="col-sm-3 cateBox">
                    <h4 class="text-center">Action</h4>
                    <a href="#">
                        <img src="image/Home-img/ff.jpg" class="rounded-circle" alt="superhero-team" width="230" height="230" />
                    </a>
                </div>
                <div class="col-sm-3 cateBox">
                    <h4 class="text-center">Animation</h4>
                    <a href="#">
                        <img src="image/Home-img/Pixarlogo.jpg" class="rounded-circle" alt="pixarlogo" width="230" height="230" />
                    </a>
                </div>
                <div class="col-sm-3 cateBox">
                    <h4 class="text-center">Anime</h4>
                    <a href="#">
                        <img src="image/Home-img/full-metal-alchemist-brotherhood.jpg" class="rounded-circle" alt="horror" width="230" height="230" />
                    </a>
                </div>
                <div class="col-sm-3 cateBox">
                    <h4 class="text-center">Horror</h4>
                    <a href="#">
                        <img src="image/Home-img/Anabelle.png" class="rounded-circle" alt="horror" width="230" height="230" />
                    </a>
                </div>

            </div>

        </div>

        <!-- News And Comments -->
        <div class="News-review">
            <h2>News And Promotions</h2>
            <div class="container-fluid" style="padding: 10px 100px;">
                <div class="row">
                    <div class="col-sm-4" width="350" style="padding: 0">
                        <div>
                            <img src="image/Home-img/chinese-new-year.jpg" width="100%" />
                        </div>
                        <div>
                            <img src="image/Home-img/classic-sale.jpg" width="100%" />
                        </div>
                    </div>
                    <div class="col" style="padding: 0">
                        <img src="image/Home-img/new-year-2019.jpg" width="100%" />
                    </div>
                </div>
            </div>
        </div>






        <footer>
            <%@ include file="../layout/footer.jsp"%>
        </footer>
    </body>

</html>
