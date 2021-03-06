<!DOYTYPE>
<html>

    <head>
        <title>Contact us</title>
        <link rel="stylesheet" href="style/ContactUsDesign.css">
        <%@ include file="../layout/meta.jsp"%></head>

    <body>
        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>

        <div id="container">
            <div class="main container-fluid article-container">
                <div class=" title">
                    <h1 class="text" >CONTACT US </h1>
                    <h5 class="text" >Let's make something awesome together.<br>
                        We'd love to hear from you!</h5>
                </div>
                <div class="row word">
                    <div class="col-lg-8">
                        <div class="">
                            <h3>Message<img src="icon/chat.png"></h3><br>
                        </div>

                        <form action="">  
                            <%@ page import= "entity.Customer"%>

                            <%                            Customer custLogged = (Customer) session.getAttribute("customer");
                            %>

                            <%
                                if (custLogged == null) {
                            %>
                            <h4 style="text-shadow: 0 0 5px #426bf4, 0 0 10px #426bf4;">Please login before leave us a message.</h4>
                            <%
                            } else {
                            %>
                            <h4 style="text-shadow: 0 0 5px #426bf4, 0 0 10px #426bf4;"> Hi <%= custLogged.getCustname()%>, Leave us a message.</h4>
                            <%
                                }
                            %>

                            <div class="form-group" >
                                <label for="message" class="message ">Message*</label>              
                                <textarea name = "comment" class="form-control" rows="5" id="comment" placeholder="Enter text here..." required></textarea>
                            </div>

                            <button id="submitBtn" type="submit">Summit</button>
                        </form> 	
                    </div>

                    <div class="col-lg-4">         

                        <div class=" " style="align-content: center">

                            <h3 >Map<img src="icon/placeholder.png"></h3>
                        </div>
                        <br>
                        <div class ="bordered" id="googleMap" style="width:100%;height:250px;" >
                        </div>
                        <div class="mapaddress">
                            <address class="word">
                                <p><strong>Our Address :</strong><br>
                                    Jalan Malinja, Taman Bunga Raya, <br> 53000 Kuala Lumpur, <br> Wilayah Persekutuan Kuala Lumpur</p>
                            </address>
                        </div>
                    </div>
                </div>

                <div class="row word" style="margin: 10px">
                    <div class="col-lg-12">
                        <div class="">
                            <h3>Social <img src="icon/message.png"></h3>
                            <br>
                        </div>
                        <div class="content row">

                            <a href="https://www.facebook.com/Dyspee-1169485076532225" class="image col-lg-2 word"><img src="icon/facebook.png" alt="facebook" title="facebook">
                                <label > Facebook</label></a>
                            <a href="#" class="image col-lg-2 word"><img src="icon/youtube.png" alt="youtube" title="youtube">
                                <label > Youtube</label></a>
                            <a href="#" class="image col-lg-2 word"><img src="icon/google-plus.png" alt="google-plus" title="google+">
                                <label class=""> Google+</label></a>
                            <a href="#" class="image col-lg-2 word"><img src="icon/twitter.png" alt="twitter" title="twitter">
                                <label > Twitter</label></a>
                            <a href="#" class="image col-lg-2 word"><img src="icon/email.png" alt="email" title="email">
                                <label > Email</label></a>
                            <a href="#" class="col-lg-2 image word"><img src="icon/telephone.png" alt="telephone" title="telephone">
                                <label > Telephone</label></a>
                        </div>
                    </div>
                </div>
            </div>


        </div>


        <!-- Footer  -->
        <footer>
            <%@ include file="../layout/footer.jsp"%>
        </footer>

        <script>
            function myMap() {
                var mapCanvas = document.getElementById("googleMap");
                var myCenter = new google.maps.LatLng(3.213898, 101.726583);
                var mapOptions = {
                    center: myCenter,
                    zoom: 10
                };
                var map = new google.maps.Map(mapCanvas, mapOptions);
                var marker = new google.maps.Marker({
                    position: myCenter,
                    animation: google.maps.Animation.BOUNCE
                });
                marker.setMap(map);
            }
        </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCSkyupqpaYaR61Vq4IhuXpVZIDtQruB0E&callback=myMap">
        </script>
    </body>
</html>
