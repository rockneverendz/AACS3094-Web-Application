<!DOYTYPE>
<html>

    <head>
        <meta charset="uft-8">
        <link rel="stylesheet" href="style/AboutUsDesign.css">
        <link rel="stylesheet" href="../layout/base.css">

        <title>About us|Dyspee Video</title>
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

        <div id="container">
            <div class="container-fluid article-container">
                <div class="main" style="margin-bottom: 20px">
                    <div class="title row" style="text-align: center">
                        <div class="col-lg-12">
                            <h1 class="tag">DYSPEE</h1>
                            <h3 >About Us</h3>
                        </div>

                    </div>
                    <div class="row" style="margin: 20px">
                        <div class="col-lg-6 " style="text-align: center">
                            <h3>About Dyspee</h3> 
                            <p >
                                Dyspee is a leading internet entertainment service <br>with 130 million paid memberships in over <br>190 countries enjoying TV series, documentaries <br>and feature films across a <br>wide variety of genres and languages. </p>
                            <p>
                                Members can watch as much as they want, <br>anytime, anywhere, on any internet-connected screen.</p>
                            <p>
                                Members can play, pause and resume watching,<br>all without commercials or commitments.
                            </p>

                        </div>

                        <div id="demo" class=" col-lg-6">

                            <img src="image/discussion-forum.jpg" alt="" class="rounded" height="auto" width="100%">

                        </div>
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
