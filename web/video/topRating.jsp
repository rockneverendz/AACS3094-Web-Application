<!DOCTYPE html>
<html>

    <head>
        <meta charset="uft-8">
        <title>Top Rating|Dyspee Video</title>
        <link href="../layout/image/DySpee.png" rel="icon" />
        <link href="../layout/base.css" rel="stylesheet" />
        <link href="style/moviesStyle.css" rel="stylesheet" />
        <script src="style/add.js"></script>

        <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Teko:700" rel="stylesheet">
        <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="style/bootstrap-3.3.7-dist/css/bootstrap.min.css">
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- Latest compiled JavaScript -->
	<script src="style/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    </head>

    <body>

        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>

        <!--Container Start-->
        <div class="article-container">

            <!--Main Start-->
            <div class="main">

                <div class="title">
                    <h1>Top Rating Movies</h1>
                </div>

                <div class="productlist">

                    <!-- Row 1-->
                    <div class="row">
                        <a href="#">
                            <div class="col-sm-3 ">
                                <div class="poster">
                                    <img src="image/Movie_Img/Sci-fic/Avengers_Infinity_War_poster.jpg" class="img-rounded" />
                                    <div class="overlay">
                                        <div class="text">Avengers:<br>Infinity War</div>
                                    </div>
                                </div>

                            </div>
                        </a>

                        <a href="#">
                            <div class="col-sm-3 poster">
                                <img src="image/Movie_Img/Sci-fic/antman_and_the_wasp_ver2.jpg" class="img-rounded" />
                                <div class="overlay">
                                    <div class="text">Antman and the Wasp</div>
                                </div>
                            </div>
                        </a>

                        <a href="#">
                            <div class="col-sm-3 poster">
                                <img src="image/Movie_Img/Sci-fic/aquaman_poster_-_screengrab_-_p_2018.jpg" class="img-rounded" />
                                <div class="overlay">
                                    <div class="text">Aquaman</div>
                                </div>
                            </div>
                        </a>

                        <a href="#">
                            <div class="col-sm-3 poster">
                                <img src="image/Movie_Img/Sci-fic/black_panther_ver2.jpg" class="img-rounded" />
                                <div class="overlay">
                                    <div class="text">Black panther</div>
                                </div>
                            </div>
                        </a>
                    </div>


                    <!-- Row 2-->
                    <div class="row">
                        <a href="#">
                            <div class="col-sm-3 poster">
                                <img src="image/Movie_Img/Animation/incredibles_two_ver11.jpg" class="img-rounded" />
                                <div class="overlay">
                                    <div class="text">The Incredibles II</div>
                                </div>
                            </div>
                        </a>
                        <a href="#">
                            <div class="col-sm-3 poster">
                                <img src="image/Movie_Img/Animation/ralph_breaks_the_internet_wreckit_ralph_two_ver5.jpg" class="img-rounded" />
                                <div class="overlay">
                                    <div class="text">Ralph Breaks The Internet :<br>Wreck It Ralph</div>
                                </div>
                            </div>
                        </a>
                        <a href="#">
                            <div class="col-sm-3 poster">
                                <img src="image/Movie_Img/Animation/spiderman_into_the_spiderverse_ver2.jpg" class="img-rounded" />
                                <div class="overlay">
                                    <div class="text">Spiderman:<br>Into the Spiderverse</div>
                                </div>
                            </div>
                        </a>
                        <a href="#">
                            <div class="col-sm-3 poster">
                                <img src="image/Movie_Img/Animation/hotel_transylvania_three_summer_vacation_ver2.jpg" class="img-rounded" />
                                <div class="overlay">
                                    <div class="text">Hotel transylvania:<br>Three summer vacation</div>
                                </div>
                            </div>
                        </a>
                    </div>


                    <!-- Row 3-->
                    <div class="row">
                        <a href="#">
                            <div class="col-sm-3 poster">
                                <img src="image/Movie_Img/Horror/a_quiet_place.jpg" class="img-rounded" />
                                <div class="overlay">
                                    <div class="text">A Quiet Place</div>
                                </div>
                            </div>
                        </a>
                        <a href="#">
                            <div class="col-sm-3 poster">
                                <img src="image/Movie_Img/Horror/insidious_the_last_key.jpg" class="img-rounded" />
                                <div class="overlay">
                                    <div class="text">Insidious <br> The Last Key </div>
                                </div>
                            </div>
                        </a>
                        <a href="#">
                            <div class="col-sm-3 poster">
                                <img src="image/Movie_Img/Horror/IT.jpg" class="img-rounded" />
                                <div class="overlay">
                                    <div class="text">IT</div>
                                </div>
                            </div>
                        </a>
                        <a href="#">
                            <div class="col-sm-3 poster">
                                <img src="image/Movie_Img/Horror/nun.jpg" class="img-rounded" />
                                <div class="overlay">
                                    <div class="text">The Nun</div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>

        </div>

        <!-- Footer  -->
        <footer>
            <%@ include file="../layout/footer.jsp"%>
        </footer>

    </body>

</html>
