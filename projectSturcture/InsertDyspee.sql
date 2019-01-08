--  WARNING !!! RUN THIS FILE WILL ERASE ALL THE RECORDS YOU HAVE MADE 
DELETE FROM PRODUCT;
DELETE FROM CUSTOMER;

ALTER TABLE PRODUCT ALTER COLUMN PRODUCTID RESTART WITH 1;
ALTER TABLE CUSTOMER ALTER COLUMN CUSTID RESTART WITH 1;

/* INSERT PRODUCT DETAILS */
INSERT INTO NBUSER.PRODUCT ("NAME", DESCRIPTION, RATING, DATERELEASE, PRICE, POSTER, GENRE, TRAILER) 
	VALUES ('The Avengers: The Infinity War', 'Iron Man, Thor, the Hulk and the rest of the Avengers unite to battle their most powerful enemy yet -- the evil Thanos. On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality. The fate of the planet and existence itself has never been more uncertain as everything the Avengers have fought for has led up to this moment.', 5, '2018-04-23', 30.0, '../video/image/Movie_Img/Sci-fic/Avengers_Infinity_War_poster.jpg', 'Sci-Fic', 'https://www.youtube.com/embed/6ZfuNTqbHE8');
INSERT INTO NBUSER.PRODUCT ("NAME", DESCRIPTION, RATING, DATERELEASE, PRICE, POSTER, GENRE, TRAILER) 
	VALUES ('Ant-Man and the Wasp', 'Scott Lang is grappling with the consequences of his choices as both a superhero and a father. Approached by Hope van Dyne and Dr. Hank Pym, Lang must once again don the Ant-Man suit and fight alongside the Wasp. The urgent mission soon leads to secret revelations from the past as the dynamic duo finds itself in an epic battle against a powerful new enemy.', 4, '2018-07-04', 30.0, '../video/image/Movie_Img/Sci-fic/antman_and_the_wasp_ver2.jpg', 'Sci-Fic', 'https://www.youtube.com/embed/UUkn-enk2RU');
INSERT INTO NBUSER.PRODUCT ("NAME", DESCRIPTION, RATING, DATERELEASE, PRICE, POSTER, GENRE, TRAILER) 
	VALUES ('Aquaman', 'Once home to the most advanced civilization on Earth, the city of Atlantis is now an underwater kingdom ruled by the power-hungry King Orm. With a vast army at his disposal, Orm plans to conquer the remaining oceanic people -- and then the surface world. Standing in his way is Aquaman, Orm''s half-human, half-Atlantean brother and true heir to the throne. With help from royal counselor Vulko, Aquaman must retrieve the legendary Trident of Atlan and embrace his destiny as protector of the deep.', 5, '2018-12-07', 30.0, '../video/image/Movie_Img/Sci-fic/aquaman_poster_-_screengrab_-_p_2018.jpg', 'Sci-Fic', 'https://www.youtube.com/embed/WDkg3h8PCVU');
INSERT INTO NBUSER.PRODUCT ("NAME", DESCRIPTION, RATING, DATERELEASE, PRICE, POSTER, GENRE, TRAILER) 
	VALUES ('Black Panther', 'Description After the death of his father, T''Challa returns home to the African nation of Wakanda to take his rightful place as king. When a powerful enemy suddenly reappears, T''Challa''s mettle as king -- and as Black Panther -- gets tested when he''s drawn into a conflict that puts the fate of Wakanda and the entire world at risk. Faced with treachery and danger, the young king must rally his allies and release the full power of Black Panther to defeat his foes and secure the safety of his people.', 5, '2018-01-29', 30.0, '../video/image/Movie_Img/Sci-fic/black_panther_ver2.jpg', 'Sci-Fic', 'https://www.youtube.com/embed/xjDjIWPwcPU');
INSERT INTO NBUSER.PRODUCT ("NAME", DESCRIPTION, RATING, DATERELEASE, PRICE, POSTER, GENRE, TRAILER) 
	VALUES ('Incredibles 2', 'Everyone’s favorite family of superheroes is back in “Incredibles 2” – but this time Helen (voice of Holly Hunter) is in the spotlight, leaving Bob (voice of Craig T. Nelson) at home with Violet (voice of Sarah Vowell) and Dash (voice of Huck Milner) to navigate the day-to-day heroics of “normal” life. It’s a tough transistion for everyone, made tougher by the fact that the family is still unaware of baby Jack-Jack’s emerging superpowers. When a new villain hatches a brilliant and dangerous plot, the family and Frozone (voice of Samuel L. Jackson) must find a way to work together again—which is easier said than done, even when they’re all Incredible.', 4, '2018-06-05', 30.0, '../video/image/Movie_Img/Animation/incredibles_two_ver11.jpg', 'Animation', 'https://www.youtube.com/embed/i5qOzqD9Rms');
INSERT INTO NBUSER.PRODUCT ("NAME", DESCRIPTION, RATING, DATERELEASE, PRICE, POSTER, GENRE, TRAILER) 
	VALUES ('Ralph Breaks the Internet', 'Video game bad guy Ralph and fellow misfit Vanellope von Schweetz must risk it all by traveling to the World Wide Web in search of a replacement part to save Vanellope''s video game, "Sugar Rush." In way over their heads, Ralph and Vanellope rely on the citizens of the internet -- the netizens -- to help navigate their way, including an entrepreneur named Yesss, who is the head algorithm and the heart and soul of trend-making site BuzzzTube.', 4, '2018-11-22', 30.0, '../video/image/Movie_Img/Animation/ralph_breaks_the_internet_wreckit_ralph_two_ver5.jpg', 'Animation', 'https://www.youtube.com/embed/_BcYBFC6zfY');
INSERT INTO NBUSER.PRODUCT ("NAME", DESCRIPTION, RATING, DATERELEASE, PRICE, POSTER, GENRE, TRAILER) 
	VALUES ('Spider-Man: Into the Spider-Verse', 'Bitten by a radioactive spider in the subway, Brooklyn teenager Miles Morales suddenly develops mysterious powers that transform him into the one and only Spider-Man. When he meets Peter Parker, he soon realizes that there are many others who share his special, high-flying talents. Miles must now use his newfound skills to battle the evil Kingpin, a hulking madman who can open portals to other universes and pull different versions of Spider-Man into our world.', 5, '2018-12-01', 30.0, '../video/image/Movie_Img/Animation/spiderman_into_the_spiderverse_ver2.jpg', 'Animation', 'https://www.youtube.com/embed/tg52up16eq0');
INSERT INTO NBUSER.PRODUCT ("NAME", DESCRIPTION, RATING, DATERELEASE, PRICE, POSTER, GENRE, TRAILER) 
	VALUES ('Hotel Transylvania 3: Summer Vacation', 'In Sony Pictures Animation’s Hotel Transylvania 3: Summer Vacation, join our favorite monster family as they embark on a vacation on a luxury monster cruise ship so Drac can take a summer vacation from providing everyone else''s vacation at the hotel. It’s smooth sailing for Drac’s Pack as the monsters indulge in all of the shipboard fun the cruise has to offer, from monster volleyball to exotic excursions, and catching up on their moon tans. But the dream vacation turns into a nightmare when Mavis realizes Drac has fallen for the mysterious captain of the ship, Ericka, who hides a dangerous secret that could destroy all of monsterkind.', 4, '2018-06-28', 30.0, '../video/image/Movie_Img/Animation/hotel_transylvania_three_summer_vacation_ver2.jpg', 'Animation', 'https://www.youtube.com/embed/Ku52zNnft8k');
INSERT INTO NBUSER.PRODUCT ("NAME", DESCRIPTION, RATING, DATERELEASE, PRICE, POSTER, GENRE, TRAILER) 
	VALUES ('A Quiet Place', 'If they hear you, they hunt you.', 5, '2018-04-01', 30.0, '../video/image/Movie_Img/Horror/a_quiet_place.jpg', 'Horror', 'https://www.youtube.com/embed/WR7cc5t7tv8');
INSERT INTO NBUSER.PRODUCT ("NAME", DESCRIPTION, RATING, DATERELEASE, PRICE, POSTER, GENRE, TRAILER) 
	VALUES ('Insidious: The Last Key', 'Brilliant parapsychologist Elise Rainier receives a disturbing phone call from a man who claims that his house is haunted. Even more disturbing is the address -- 413 Apple Tree Lane in Five Keys, N.M. -- the home where Elise grew up as a child. Accompanied by her two investigative partners, Rainier travels to Five Keys to confront and destroy her greatest fear -- the demon that she accidentally set free years earlier.', 4, '2018-01-04', 30.0, '../video/image/Movie_Img/Horror/insidious_the_last_key.jpg', 'Horror', 'https://www.youtube.com/embed/acQyrwQyCOk');
INSERT INTO NBUSER.PRODUCT ("NAME", DESCRIPTION, RATING, DATERELEASE, PRICE, POSTER, GENRE, TRAILER) 
	VALUES ('It', 'Seven young outcasts in Derry, Maine, are about to face their worst nightmare -- an ancient, shape-shifting evil that emerges from the sewer every 27 years to prey on the town''s children. Banding together over the course of one horrifying summer, the friends must overcome their own personal fears to battle the murderous, bloodthirsty clown known as Pennywise.', 5, '2018-09-05', 30.0, '../video/image/Movie_Img/Horror/IT.jpg', 'Horror', 'https://www.youtube.com/embed/yLM-UsuGBuQ');
INSERT INTO NBUSER.PRODUCT ("NAME", DESCRIPTION, RATING, DATERELEASE, PRICE, POSTER, GENRE, TRAILER) 
	VALUES ('The Nun', 'When a young nun at a cloistered abbey in Romania takes her own life, a priest with a haunted past and a novitiate on the threshold of her final vows are sent by the Vatican to investigate. Together, they uncover the order''s unholy secret. Risking not only their lives but their faith and their very souls, they confront a malevolent force in the form of a demonic nun.', 4, '2018-09-06', 30.0, '../video/image/Movie_Img/Horror/nun.jpg', 'Horror', 'https://www.youtube.com/embed/pzD9zGcUNrw');

	
/* INSERT CUSTOMER DATA*/
	INSERT INTO NBUSER.CUSTOMER (CUSTNAME, PHONENO, ADDRESS, EMAIL, DOB, PASSWORD) 
	VALUES ('Bird', '012-3456789', 'No.10, Jalan ABC, KL', 'bird@gmail.com', '2019-01-05', 'Bird');
INSERT INTO NBUSER.CUSTOMER (CUSTNAME, PHONENO, ADDRESS, EMAIL, DOB, PASSWORD) 
	VALUES ('Tiger', '617-1324624', '4 Petterle Avenue', 'tiger@gmail.com', '2018-10-07', 'Tiger');
INSERT INTO NBUSER.CUSTOMER (CUSTNAME, PHONENO, ADDRESS, EMAIL, DOB, PASSWORD) 
	VALUES ('Lion', '713-9187676', '565 Dayton Pass', 'lion@gmail.com', '2018-08-19', 'Lion');
INSERT INTO NBUSER.CUSTOMER (CUSTNAME, PHONENO, ADDRESS, EMAIL, DOB, PASSWORD) 
	VALUES ('Dog', '620-6128807', '82 Oneill Drive', 'dog@gmail.com', '2018-07-03', 'Dog');
INSERT INTO NBUSER.CUSTOMER (CUSTNAME, PHONENO, ADDRESS, EMAIL, DOB, PASSWORD) 
	VALUES ('Cat', '222-7511829', '0 Vernon Road', 'cat@gmail.com', '2018-12-25', 'Cat');
INSERT INTO NBUSER.CUSTOMER (CUSTNAME, PHONENO, ADDRESS, EMAIL, DOB, PASSWORD) 
	VALUES ('Ali', '495-7501777', '2378 Surrey Alley', 'ali@gmail.com', '2018-04-08', 'Ali99');
INSERT INTO NBUSER.CUSTOMER (CUSTNAME, PHONENO, ADDRESS, EMAIL, DOB, PASSWORD) 
	VALUES ('Abu', '932-6132567', '0833 Manufacturers Point', 'abu@gmail.com', '2018-02-24', 'Abu99');
INSERT INTO NBUSER.CUSTOMER (CUSTNAME, PHONENO, ADDRESS, EMAIL, DOB, PASSWORD) 
	VALUES ('Tai Tai', '916-1706723', '69111 Green Ridge Place', 'taitai@gmail.com', '2018-10-27', 'tai99');
INSERT INTO NBUSER.CUSTOMER (CUSTNAME, PHONENO, ADDRESS, EMAIL, DOB, PASSWORD) 
	VALUES ('Brendan Chew', '983-4992758', '94839 Village Green Crossing', 'brendan@gmail.com', '2018-01-19', 'brendan99');
INSERT INTO NBUSER.CUSTOMER (CUSTNAME, PHONENO, ADDRESS, EMAIL, DOB, PASSWORD) 
	VALUES ('Wei Xiang Chia', '315-7817207', '318 Kim Alley', 'wxchia@gmail.com', '2018-07-28', 'wx99');
INSERT INTO NBUSER.CUSTOMER (CUSTNAME, PHONENO, ADDRESS, EMAIL, DOB, PASSWORD) 
	VALUES ('Soo Cia Yang', '428-2772422', '396 6th Terrace', 'soocy@gmail.com', '2018-04-29', 'scy99');


/* INSERT STAFF DATA*/
INSERT INTO NBUSER.STAFF (STAFFID, STAFFNAME, PASSWORD) 
	VALUES ('tai', 'tai tai tai', '123')
