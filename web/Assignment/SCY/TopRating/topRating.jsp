<!DOCTYPE html>
<html>

<head>
	<meta charset="uft-8">
	<title>Top Rating|Dyspee Video</title>
	<link href="../Logo.png" rel="icon" />
	<link href="../Layout.css" rel="stylesheet" />
	<link href="boxStyle-P.css" rel="stylesheet" />
	<link href="boxStyle-L.css" rel="stylesheet" />
	<link href="moviesStyle.css" rel="stylesheet" />
	<script src="add.js"></script>

	<script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css?family=Teko:700" rel="stylesheet">
</head>



<body>

	<div class="header-bar">
		<div class="header-container">
			<div class="header-header"><a href="../../BCJW/HTML/DySpee.jsp"><img src="../Style/Image/DySpee.png" /></a></div>
			<div class="header-title"><img src="../Style/Image/DySpeeOnline.png" /></div>
			<div class="header-searchbar">
				<form action="/action_page.php">
					<input type="text" placeholder="Search.." name="search">
					<button type="submit"><img width="22px" src="../Style/Image/search.png"/></button>
				</form>
			</div>
			<div class="header-cart">
				<a href="../../SCY/ShoppingCart/shoppingCart.jsp"><img src="../Style/Image/shopping-cart.png"/></a>
			</div>
		</div>
	</div>
	<div class="nav-bar">
		<div class="nav-container">
			<a href="../../BCJW/HTML/TVSeries.jsp">
				<div class="nav-item" id="TVSeries">TV Series
				</div>
			</a>
			<a href="../../SCY/TopRating/topRating.jsp">
				<div class="nav-item" id="Movies">Movies
				</div>
			</a>
			<a href="../../CWX/Promotion/promotion.jsp">
				<div class="nav-item" id="Promotions">Promotions
				</div>
			</a>
			<a href="../../CWX/AboutUs/AboutUs.jsp">
				<div class="nav-item" id="About">About
					<div class="nav-item-dropdown">
						<a href="../../CWX/AboutUs/AboutUs.jsp">About Us</a><br/><br/>
						<a href="../../CWX/ContactUs/ContactUs.jsp">Contact Us</a><br/><br/>
						<a href="../../CWX/FAQ/faq.jsp">FAQ</a><br/>
					</div>
				</div>
			</a>
			<a href="../../BCJW/HTML/Settings.jsp">
				<div class="nav-item" id="Account">Account
					<div class="nav-item-dropdown">
						<a href="../../BCJW/HTML/SignUp.jsp">Sign Up</a><br/><br/>
						<a href="../../BCJW/HTML/SignIn.jsp">Sign In</a><br/><br/>
						<a href="../../BCJW/HTML/Settings.jsp">Settings</a><br/>
					</div>
				</div>

			</a>
		</div>
	</div>



	<!--Container Start-->

	<div class="container">
		<!--gerneNav-->
		<div class="gerneNav">

			<div class="sug">
				<h3>Suggestion</h3>
				<ul>
					<li><a href="#">Latest Movies</a></li>
					<li><a href="#">Latest TV-series</a></li>
					<li><a href="#">Top Favorite</a></li>
					<li><a href="movieList.jsp">Top Rating</a></li>


				</ul>
			</div>
			<div class="gern">
				<h3>Gerne</h3>
				<ul>

					<li><a href="#">Action</a></li>
					<li><a href="#">Adventure</a></li>
					<li><a href="#">Animation</a></li>
					<li><a href="#">Anime</a></li>
					<li><a href="#">Comedy</a></li>
					<li><a href="#">Crime</a></li>
					<li><a href="#">Drama</a></li>
					<li><a href="#">Fantasy</a></li>
					<li><a href="#">Horror</a></li>
					<li><a href="#">Mystery</a></li>
					<li><a href="#">Romance</a></li>
					<li><a href="#">Sci-Fiction</a></li>
					<li><a href="#">Superhero</a></li>
				</ul>
			</div>

			<div class="tv-s">
				<h3>TV-Series</h3>
				<ul>
					<li><a href="#">Local</a></li>
					<li><a href="#">China</a></li>
					<li><a href="#">Hong Kong</a></li>
					<li><a href="#">Japan</a></li>
					<li><a href="#">Korea</a></li>
					<li><a href="#">United Kingdom</a></li>
					<li><a href="#">United States</a></li>
				</ul>
			</div>

		</div>


		<!--Main Start-->
		<div class="main">

			<div class="title">
				<h1>Top Rating Movies</h1>
			</div>

			<!-- Box 1 -->

			<div class="box1" id="posterP">

				<button class="btn" onclick="addToCart()"><i class="fas fa-plus"></i></button>

				<a href="../Display Trailer/trailer.jsp">

					<div class="poster"><img src="Poster/P-Poster1.jpg" /></div>

					<div class="details">
						<h2>Avengers: Infinity War (2018)</h2>
						<div class="rating">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<span>5/5</span>
						</div>
						<div class="tags">
							<span class="marvelComics">Marvel Comics</span>
							<span class="sciFiction">Sci-Fiction</span>
						</div>
						<div class="info">
							<p>Iron Man, Thor, the Hulk and the rest of the Avengers unite to battle their most powerful enemy yet -- the evil Thanos. On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality. The fate of the planet and existence itself has never been more uncertain as everything the Avengers have fought for has led up to this moment.</p>
						</div>
						<div class="star">
							<h4>Cast</h4>
							<ul>
								<li><img src="Star/Cast/cast1.jpg" alt="" /></li>
								<li><img src="Star/Cast/cast2.jpg" alt="" /></li>
								<li><img src="Star/Cast/cast3.jpg" alt="" /></li>
								<li><img src="Star/Cast/cast4.jpg" alt="" /></li>
								<li><img src="Star/Cast/cast5.jpg" alt="" /></li>

							</ul>
						</div>
					</div>
				</a>
			</div>

			<!--Box 2-->

			<div class="box2" id="posterL">
				<button class="btn" onclick="addToCart()"><i class="fas fa-plus"></i></button>
				<a href="#">
					<div class="poster"><img src="Poster/L-Poster3.jpg" /></div>

					<div class="details">
						<h2>Star Wars: The Last Jedi (2017)</h2>
						<div class="rating">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fas fa-star-half" aria-hidden="true"></i>
							<span>4.5/5</span>
						</div>
						<div class="tags">
							<span class="fantasy">Fantasy</span>
							<span class="sciFiction">Sci-Fiction</span>
						</div>
						<div class="info">
							<p>Luke Skywalker's peaceful and solitary existence gets upended when he encounters Rey, a young woman who shows strong signs of the Force. Her desire to learn the ways of the Jedi forces Luke to make a decision that changes their lives forever. Meanwhile, Kylo Ren and General Hux lead the First Order in an all-out assault against Leia and the Resistance for supremacy of the galaxy.</p>
						</div>
						<div class="star">
							<h4>Cast</h4>
							<ul>
								<li><img src="Star/Cast3/cast1.jpg" alt="" /></li>
								<li><img src="Star/Cast3/cast2.jpg" alt="" /></li>
								<li><img src="Star/Cast3/cast3.jpg" alt="" /></li>
								<li><img src="Star/Cast3/cast4.jpg" alt="" /></li>
								<li><img src="Star/Cast3/cast5.jpg" alt="" /></li>
							</ul>
						</div>
					</div>
				</a>
			</div>

			<!--Box 3 -->

			<div class="box3" id="posterL">
				<button class="btn" onclick="addToCart()"><i class="fas fa-plus"></i></button>
				<a href="#">
					<div class="poster"><img src="Poster/L-Poster2.jpg" /></div>

					<div class="details">
						<h2>Logan (2017)</h2>
						<div class="rating">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fas fa-star-half" aria-hidden="true"></i>
							<span>4.5/5</span>
						</div>
						<div class="tags">
							<span class="drama">Drama</span>
							<span class="sciFiction">Sci-Fiction</span>
						</div>
						<div class="info">
							<p>In the near future, a weary Logan (Hugh Jackman) cares for an ailing Professor X (Patrick Stewart) at a remote outpost on the Mexican border. His plan to hide from the outside world gets upended when he meets a young mutant (Dafne Keen) who is very much like him. Logan must now protect the girl and battle the dark forces that want to capture her.</p>
						</div>
						<div class="star">
							<h4>Cast</h4>
							<ul>
								<li><img src="Star/Cast4/cast1.jpg" alt="" /></li>
								<li><img src="Star/Cast4/cast2.jpg" alt="" /></li>
								<li><img src="Star/Cast4/cast3.jpg" alt="" /></li>
								<li><img src="Star/Cast4/cast4.jpg" alt="" /></li>
								<li><img src="Star/Cast4/cast5.jpg" alt="" /></li>
							</ul>
						</div>
					</div>
				</a>
			</div>

			<!--Box 4 -->

			<div class="box4" id="posterL">
				<button class="btn" onclick="addToCart()"><i class="fas fa-plus"></i></button>
				<a href="#">
					<div class="poster"><img src="Poster/L-Poster1.jpg" /></div>

					<div class="details">
						<h2>Justice League (2017)</h2>
						<div class="rating">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="far fa-star" aria-hidden="true"></i>
							<span>4/5</span>
						</div>
						<div class="tags">
							<span class="fantasy">Fantasy</span>
							<span class="sciFiction">Sci-Fiction</span>
						</div>
						<div class="info">
							<p>Fueled by his restored faith in humanity and inspired by Superman's selfless act, Bruce Wayne enlists newfound ally Diana Prince to face an even greater threat. Together, Batman and Wonder Woman work quickly to recruit a team to stand against this newly awakened enemy. </p>
						</div>
						<div class="star">
							<h4>Cast</h4>
							<ul>
								<li><img src="Star/Cast5/cast1.jpg" alt="" /></li>
								<li><img src="Star/Cast5/cast2.jpg" alt="" /></li>
								<li><img src="Star/Cast5/cast3.jpg" alt="" /></li>
								<li><img src="Star/Cast5/cast4.jpg" alt="" /></li>
								<li><img src="Star/Cast5/cast5.jpg" alt="" /></li>
							</ul>
						</div>
					</div>
				</a>
			</div>

			<!--Box 5 -->

			<div class="box5" id="posterL">
				<button class="btn" onclick="addToCart()"><i class="fas fa-plus"></i></button>
				<a href="#">
					<div class="poster"><img src="Poster/L-Poster4.jpg" /></div>

					<div class="details">
						<h2>Guardians of the Galaxy Vol. 2 (2017)</h2>
						<div class="rating">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fas fa-star-half" aria-hidden="true"></i>
							<span>4.5/5</span>
						</div>
						<div class="tags">
							<span class="marvelComics">Marvel Comics</span>
							<span class="sciFiction">Sci-Fiction</span>
						</div>
						<div class="info">
							<p>Peter Quill and his fellow Guardians are hired by a powerful alien race, the Sovereign, to protect their precious batteries from invaders. When it is discovered that Rocket has stolen the items they were sent to guard, the Sovereign dispatch their armada to search for vengeance. As the Guardians try to escape, the mystery of Peter's parentage is revealed. </p>
						</div>
						<div class="star">
							<h4>Cast</h4>
							<ul>
								<li><img src="Star/Cast6/cast1.jpg" alt="" /></li>
								<li><img src="Star/Cast6/cast2.jpg" alt="" /></li>
								<li><img src="Star/Cast6/cast3.jpg" alt="" /></li>
								<li><img src="Star/Cast6/cast4.jpg" alt="" /></li>
								<li><img src="Star/Cast6/cast5.jpg" alt="" /></li>
							</ul>
						</div>
					</div>
				</a>

			</div>




			<!-- Box 6 -->
			<div class="box6" id="posterP">
				<button class="btn" onclick="addToCart()"><i class="fas fa-plus"></i></button>
				<a href="#">
					<div class="poster"><img src="Poster/P-Poster2.jpg" /></div>

					<div class="details">
						<h2>Black Panther (2018)</h2>
						<div class="rating">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<span>5/5</span>
						</div>
						<div class="tags">
							<span class="marvelComics">Marvel Comics</span>
							<span class="sciFiction">Sci-Fiction</span>
						</div>
						<div class="info">
							<p>After the death of his father, T'Challa returns home to the African nation of Wakanda to take his rightful place as king. When a powerful enemy suddenly reappears, T'Challa's mettle as king -- and as Black Panther -- gets tested when he's drawn into a conflict that puts the fate of Wakanda and the entire world at risk. Faced with treachery and danger, the young king must rally his allies and release the full power of Black Panther to defeat his foes and secure the safety of his people.</p>
						</div>
						<div class="star">
							<h4>Cast</h4>
							<ul>
								<li><img src="Star/Cast2/cast1.jpg" alt="" /></li>
								<li><img src="Star/Cast2/cast2.jpg" alt="" /></li>
								<li><img src="Star/Cast2/cast3.jpg" alt="" /></li>
								<li><img src="Star/Cast2/cast4.jpg" alt="" /></li>
								<li><img src="Star/Cast2/cast5.jpg" alt="" /></li>
							</ul>
						</div>
					</div>
				</a>
			</div>

			<!-- Next Page Button // Box 7 -->

			<div class="nxtPage">
				<ul>
					<li><span>1</span></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">Next →</a></li>
					<li><a href="#">»</a></li>
				</ul>





			</div>







		</div>

	</div>

	<!-- Footer  -->
	<footer>
		<div class="footer">

			<div class="footer-box" id="foot1">
				<h3>Movies</h3>
				<ul>
					<li><a href="#">Action</a></li>
					<li><a href="#">Anime</a></li>
					<li><a href="#">Sci-Fic</a></li>
					<li><a href="#">Romance</a></li>
				</ul>
			</div>
			<div class="footer-box" id="foot2">
				<h3>TV-Series</h3>
				<ul>
					<li><a href="#">Local</a></li>
					<li><a href="#">United States</a></li>
					<li><a href="#">Korea</a></li>
					<li><a href="#">China</a></li>
					<li><a href="#">Hong Kong</a></li>
				</ul>

			</div>

			<div class="footer-box" id="foot3">
				<h3>Question? Contact Us.</h3>
				<ul>
					<li><a href="#">FAQ</a></li>
					<li><a href="#">Account</a></li>
					<li><a href="#">Contact Us</a></li>
					<li><a href="#">Help Center</a></li>
					<li><a href="#">Promotion</a></li>
				</ul>

			</div>

			<div class="footer-box" id="foot4">
				<img src="../Logo.png" />

			</div>

			<div class="footer-box" id="foot5">
				<img src="../Image/Logo-char.png" />

			</div>
		</div>
	</footer>

</body>

</html>
