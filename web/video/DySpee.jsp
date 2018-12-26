<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<html>
    <head>
        <meta charset="utf-8" />
        <title>DySpee</title>
        <link href="../layout/reset.css" rel="stylesheet" />
        <link href="../layout/base.css" rel="stylesheet" />
        <link href="../layout/image/DySpee.png" rel="icon" />
        <link href="style/home.css" rel="stylesheet" />
    </head>

    <body>

        <%
            //Status code -1= An error has occured
            //Status code 0 = Successfully Signed Out
            //Status code 1 = Successfully Signed In
            //Status code 2 = Successfully Signed Up

            String status = request.getParameter("status");
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
                } else {
                    message = "Error has occured";
                }
            }
        %>

        <header>
            <%@ include file="../layout/header.jsp"%>
        </header>
        <%=message%>
        <div class="article-container">
            <div class="article-item" id="News">
                <header>News</header>
                <article>
                    <img src="image/News1.jpg" />
                    <h1><a href="#">'Kekkai Sensen' Gets Second Season for 2017</a></h1>
                    <br>
                    <p>
                        The January 2017 issue of Jump SQ magazine, which goes on sale on December 2, has revealed that Kekkai Sensen (Blood Blockade Battlefront) will be getting a second season. Titled Kekkai Sensen &#38; BEYOND, it is slated for 2017.
                        <br> The director of the second season will be Shigehito Takayanagi (Dagashi Kashi) while Yasuko Kamo (Tokyo ESP) will be in charge of the script. The cast members and the rest of the staff will reprise their roles.
                        <br> The first season aired for a total of 12 episodes between April and October 2015. The series adapts the manga drawn by Yasuhiro Nightow. There have been ten volumes published between January 2009 and February 2015. A sequel series began publishing in July 2015 titled Kekkai Sensen: Back 2 Back.
                    </p>
                    <hr />
                    <img src="image/News2.jpg" />
                    <h1><a href="#">'Boku no Hero Academia The Movie: Futari no Hero' Announces Guest Cast Members</a></h1>
                    <br>
                    <p>
                        The official Twitter account for the upcoming Boku no Hero Academia The Movie: Futari no Hero has announced two guest cast members, who are father and daughter. Melissa is a quirkless girl on I Island, while David, her father, was a friend of All Might in his adolescence. <br /><br />The movie will premiere in Japanese theaters on August 3.
                    </p>
                    <hr>
                    <img src="image/News3.jpg" />
                    <h1><a href="#">Winter 2018 Preview</a></h1>
                    <br>
                    <p>
                        In this thread, you'll find a comprehensive list of Winter 2018 titles with an accompanying promotional video (PV), commercial (CM), or trailer. This post will be updated to include a PV, CM, or trailer for titles that are missing one, leading up to the start of the season. Titles that already have a video embedded will instead have their newly released videos added to the video tab in their respective entries. For convenience, the video tab can be accessed via the additional videos link next to the embedded video. If a title is missing a video, feel free to post it in this thread.

                    </p>
                </article>
            </div>
            <div class="article-item" id="Popular">
                <header>Popular</header>
                <ul>
                    <li>
                        <img src="image/Pop1.jpg" />
                        <br /> <a href="#">Darling in the FranXX</a>
                    </li>
                    <hr />
                    <li>
                        <img src="image/Pop2.jpg" />
                        <br /> <a href="#">Sword Art Online Alternative: Gun Gale Online</a>
                    </li>
                    <hr />
                    <li>
                        <img src="image/Pop3.jpg" />
                        <br /> <a href="#">Saenai Heroine no Sodatekata ♭</a>
                    </li>
                    <hr />
                    <li>
                        <img src="image/Pop4.jpg" />
                        <br /> <a href="#">Kobayashi-san Chi no Maid Dragon</a>
                    </li>
                    <hr />
                    <li>
                        <img src="image/Pop5.jpg" />
                        <br /> <a href="#">Shigatsu wa Kimi no Uso</a>
                    </li>
                </ul>
            </div>
            <div class="article-item" id="Reviews">
                <header>Latest Reviews</header>
                <article>
                    <img src="image/review1.jpg" />
                    <h1><a href="#">Clannad: After Story</a></h1>
                    <cite>&mdash; written by <a href="#">LemonLyme</a> &frasl; Rating: 10</cite>
                    <br>
                    <p>
                        I laughed...<br /> I cried...<br /> I experienced something that changed my life... <br />
                        <br /> In a nutshell, Clannad ~After Story~ influenced the way I will live for the rest of my life and not just in some half-assed way like any other show would. It legitimately moved me to make certain decisions, for better or for worse. In that sense, no other anime can compare, as no other anime has provided an equivalent reaction on my part.
                    </p>
                    <hr />
                    <img src="image/review2.jpg" />
                    <h1><a href="#">Re:Zero kara Hajimeru Isekai Seikatsu</a></h1>
                    <cite>&mdash; written by <a href="#">XHellLyterX</a> &frasl; Rating: 9</cite>
                    <br>
                    <p>
                        From my perspective, we are living in a time where well crafted anime with a myriad of originality and detail are unfortunately being released at a frequently declining rate. Because of this, many in the anime community are constantly on the lookout for something new and creative. So naturally, when an anime like Re:Zero kara Hajimeru Isekai Seikatsu airs, a show that boasts morbidly unique twists on the popular but overused fantasy/game world genre, it gains a lot of popularity and is generally well received in the anime community.
                    </p>
                    <hr>
                    <img src="image/review3.jpg" />
                    <h1><a href="#">Sword Art Online</a></h1>
                    <cite>&mdash; written by <a href="#">LLYNCES</a> &frasl; Rating: 7</cite>
                    <br>
                    <p>
                        I don't really want to go into too much depth, but I'd like to give an overview of the series and give my opinions it. If you haven't noticed yet there are many negative reviews out there for this anime, and while many of them bring up some pretty fair points, I think some people are being a bit too harsh on it.
                        <br /><br /> Yes it's a popular anime, yes it has flaws, no it's not perfect, but at the very least in my opinion it is enjoyable.
                    </p>
                </article>
            </div>
        </div>
        <footer>
            <%@ include file="../layout/footer.jsp"%>
        </footer>
    </body>

</html>
