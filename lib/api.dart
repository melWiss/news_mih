var apiUrl = 'https://news-app-wiss.herokuapp.com/getNews';
var api = [
  {
    "source": {"id": null, "name": "Eonline.com"},
    "author": "Ryan Gajewski",
    "title":
        "Britney Spears Is Feeling \"Relieved\" as Members of Her Inner Circle Resign From Conservatorship - E! NEWS",
    "description":
        "A source close to Britney Spears exclusively tells E! News that the star feels \"hopeful\" amid people recently resigning from her conservatorship team.",
    "url":
        "https://www.eonline.com/news/1287194/britney-spears-is-feeling-relieved-as-members-of-her-inner-circle-resign-from-conservatorship",
    "urlToImage":
        "https://akns-images.eonline.com/eol_images/Entire_Site/202167/rs_1200x1200-210707175728-1200--Britney-spears-mp.jpg?fit=around%7C1080:1080&output-quality=90&crop=1080:1080;center,top",
    "publishedAt": "2021-07-08T06:26:20Z",
    "content":
        "Britney Spears is feeling stronger amid the recent shake-up on her team. \r\nFollowing Larry Rudolph stepping down this week as her manager, in addition to her lawyer Samuel D. Ingham III, asking to no… [+872 chars]"
  },
  {
    "source": {"id": null, "name": "ESPN"},
    "author": null,
    "title":
        "Japan to declare state of emergency in Tokyo through Olympics due to COVID-19 surge - ESPN",
    "description":
        "Japan is set to place Tokyo under a state of emergency that would last through the Olympics, fearing an ongoing COVID-19 surge will multiply during the Games.",
    "url":
        "https://www.espn.com/olympics/story/_/id/31780639/japan-declare-state-emergency-tokyo-olympics-due-covid-19-surge",
    "urlToImage":
        "https://a.espncdn.com/combiner/i?img=%2Fphoto%2F2021%2F0702%2Fr875117_1296x729_16%2D9.jpg",
    "publishedAt": "2021-07-08T04:48:49Z",
    "content":
        "TOKYO -- Japan is set to place Tokyo under a state of emergency that would last through the Olympics, fearing an ongoing COVID-19 surge will multiply during the Games.\r\nAt a meeting with experts Thur… [+3117 chars]"
  },
  {
    "source": {"id": "google-news", "name": "Google News"},
    "author": null,
    "title":
        "Nikita Kucherov Calls Out Canadiens Fans in Legendary Postgame Presser - SPORTSNET",
    "description": null,
    "url":
        "https://news.google.com/__i/rss/rd/articles/CBMiK2h0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9QWs1M0FUNkFYelXSAQA?oc=5",
    "urlToImage": null,
    "publishedAt": "2021-07-08T04:40:26Z",
    "content": null
  },
  {
    "source": {"id": "fox-news", "name": "Fox News"},
    "author": "Brie Stimson",
    "title":
        "Coronavirus death toll hits 4 million worldwide as Delta variant spreads - Fox News",
    "description":
        "As countries rush to vaccinate their citizens, the global death toll passed 4 million on Wednesday, according to Johns Hopkins University.",
    "url":
        "https://www.foxnews.com/world/coronavirus-death-toll-hits-4-million-worldwide-as-delta-variant-spreads",
    "urlToImage":
        "https://static.foxnews.com/foxnews.com/content/uploads/2021/07/AP21184566710021.jpg",
    "publishedAt": "2021-07-08T04:36:25Z",
    "content":
        "As countries rush to vaccinate their citizens, the global death toll passed 4 million on Wednesday, according to Johns Hopkins University. \r\nThe Delta variant is spreading through some countries wher… [+2839 chars]"
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Analysis by Stephen Collinson, CNN",
    "title":
        "Republicans preview months ahead filled with obstruction and extremism - CNN ",
    "description":
        "House Republicans are done pretending and aren't even trying to disguise their identity as the party of extremism, conservative media stunts and obstruction.",
    "url":
        "https://www.cnn.com/2021/07/08/politics/republican-extremism-latest/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210203111547-mccarthy-greene-split-super-tease.jpg",
    "publishedAt": "2021-07-08T04:07:00Z",
    "content": null
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "Brian Stelter, CNN Business",
    "title":
        "Marvel's long-awaited release of 'Black Widow' is a triumphant moment for the movie industry - CNN ",
    "description":
        "A version of this article first appeared in the \"Reliable Sources\" newsletter.",
    "url":
        "https://www.cnn.com/2021/07/07/media/black-widow-movie-industry-reliable-sources/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210701123605-02-black-widow-movie-super-tease.jpg",
    "publishedAt": "2021-07-08T03:47:00Z",
    "content": null
  },
  {
    "source": {"id": "cnn", "name": "CNN"},
    "author": "David McKenzie, CNN",
    "title":
        "Former South African President Jacob Zuma hands himself over to police - CNN ",
    "description":
        "Former South African President Jacob Zuma handed himself over to police late Wednesday, authorities said, to begin a 15-month prison sentence for contempt of court.",
    "url":
        "https://www.cnn.com/2021/07/07/africa/jacob-zuma-police-custody-intl-hnk/index.html",
    "urlToImage":
        "https://cdn.cnn.com/cnnnext/dam/assets/210705034045-jacob-zuma-south-africa-judges-apartheid-super-tease.jpg",
    "publishedAt": "2021-07-08T03:37:00Z",
    "content":
        "Johannesburg (CNN)Former South African President Jacob Zuma handed himself over to police late Wednesday, authorities said, to begin a 15-month prison sentence for contempt of court.\r\nThe move ended … [+1820 chars]"
  },
  {
    "source": {"id": "fox-news", "name": "Fox News"},
    "author": "Paul Best",
    "title":
        "WHO chief warns 'variants are currently winning the race against vaccines' as Delta spreads - Fox News",
    "description":
        "On the same day that the world reached the grim milestone of 4 million COVID-19 deaths, World Health Organization chief Tedros Adhanom Ghebreyesus warned that variants are causing a “wave of death” in some parts of the world with less access to vaccines.",
    "url":
        "https://www.foxnews.com/world/who-chief-warns-variants-vaccines-delta-spreads",
    "urlToImage":
        "https://static.foxnews.com/foxnews.com/content/uploads/2021/03/Moderna-vaccine-2.jpg",
    "publishedAt": "2021-07-08T02:17:06Z",
    "content":
        "On the same day that the world reached the grim milestone of 4 million COVID-19 deaths, World Health Organization chief Tedros Adhanom Ghebreyesus warned that variants are causing a \"wave of death\" i… [+2826 chars]"
  },
  {
    "source": {"id": null, "name": "Fox Business"},
    "author": "New York Post",
    "title":
        "FAA investigating Bahamas-bound flight delayed by teen mask rebellion - Fox Business",
    "description":
        "The FAA is investigating the Bahamas-bound American Airlines flight delayed on Monday by rowdy teens who refused wear masks — as the Boston-area group’s program provider claimed most of the kids did nothing wrong.",
    "url":
        "https://www.foxbusiness.com/lifestyle/faa-investigating-bahamas-bound-flight-delayed-teen-mask-rebellion",
    "urlToImage":
        "https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2020/04/0/0/american-airlines-iStock.jpg?ve=1&tl=1",
    "publishedAt": "2021-07-08T01:50:55Z",
    "content":
        "The FAA is investigating the Bahamas-bound American Airlines flight delayed on Monday by rowdy teens who refused wear masks — as the Boston-area group’s program provider claimed most of the kids did … [+2980 chars]"
  },
  {
    "source": {"id": null, "name": "New York Post"},
    "author": "Kenneth Garger",
    "title":
        "4 'alleged assassins' of Haiti President Jovenel Moïse killed, 2 arrested: officials - New York Post ",
    "description":
        "The “alleged assassins” of Haitian President Jovenel Moïse were arrested Wednesday night, a government minister said.",
    "url":
        "https://nypost.com/2021/07/07/alleged-assassins-of-haiti-president-jovenel-moise-arrested-official/",
    "urlToImage":
        "https://nypost.com/wp-content/uploads/sites/2/2021/07/haiti-moise-killers-arrested.jpg?quality=90&strip=all&w=1200",
    "publishedAt": "2021-07-08T01:17:00Z",
    "content":
        "Four mercenaries suspected of assassinating Haitian President Jovenel Moïse were killed by police on Wednesday night and two others were arrested in a tense gunbattle in the impoverished country, off… [+1576 chars]"
  },
  {
    "source": {"id": null, "name": "Nintendo Life"},
    "author": "Nintendo Life",
    "title":
        "Random: That Guy Playing The Switch OLED In His Hallway Is Driving Social Media Bonkers - Nintendo Life",
    "description": "\"realistically, he’d be on a toilet\"",
    "url":
        "https://www.nintendolife.com/news/2021/07/random_that_guy_playing_the_switch_oled_in_his_hallway_is_driving_social_media_bonkers",
    "urlToImage": "https://images.nintendolife.com/4c4ff164b3271/1280x720.jpg",
    "publishedAt": "2021-07-08T00:55:00Z",
    "content":
        "Nintendo revealed its Switch OLED with another one of those lifestyle commercials - showing people playing it in real life.\r\nIt starts off with a guy spending some time with Metroid Dread on the couc… [+4884 chars]"
  },
  {
    "source": {"id": null, "name": "CBS Sports"},
    "author": "",
    "title":
        "NBA Finals: To limit Chris Paul's dominance, Bucks must give him a taste of his own annoying medicine - CBS Sports",
    "description":
        "Scheme matters, but the Bucks admitted that they need to be more of a nuisance when guarding CP3",
    "url":
        "https://www.cbssports.com/nba/news/nba-finals-to-limit-chris-pauls-dominance-bucks-must-give-him-a-taste-of-his-own-annoying-medicine/",
    "urlToImage":
        "https://sportshub.cbsistatic.com/i/r/2021/07/07/8fd2d52c-4678-4b73-91a8-04aff944ad8a/thumbnail/1200x675/467636bbc9a853ec4c6cecdee7f61209/chrispauljrueholiday-070721.jpg",
    "publishedAt": "2021-07-08T00:45:00Z",
    "content":
        "The debate of nature versus nurture, as it pertains to certain traits, psychology and behavior, has raged since humans were first capable of philosophical thought. Since the term itself was coined by… [+6240 chars]"
  },
  {
    "source": {"id": null, "name": "New York Post"},
    "author": "Kenneth Garger",
    "title":
        "LA County authorities seize billion in weed in historic takedown - New York Post ",
    "description":
        "Los Angeles County authorities confiscated billion of illegally grown marijuana last month — the largest takedown of its kind in the county, officials announced Wednesday.",
    "url":
        "https://nypost.com/2021/07/07/la-county-authorities-seize-1-billion-in-weed-in-historic-takedown/",
    "urlToImage":
        "https://nypost.com/wp-content/uploads/sites/2/2021/07/la-marijuana-bust-index.jpg?quality=90&strip=all&w=1200",
    "publishedAt": "2021-07-07T23:41:00Z",
    "content":
        "Holy smoke!\r\nLos Angeles County authorities confiscated billion of illegally grown marijuana last month — the largest takedown of its kind in the county, officials announced Wednesday.\r\nThe weed w… [+938 chars]"
  },
  {
    "source": {"id": null, "name": "Daily Mail"},
    "author": "Monique Friedlander",
    "title":
        "Nicole Kidman and Tom Cruise's notoriously private daughter Bella shares a rare selfie - Daily Mail",
    "description":
        "The London-based artist, 28, made a rare appearance on social media on Wednesday night as she tuned into the nail-biting Euro semi-final between England and Denmark",
    "url":
        "https://www.dailymail.co.uk/tvshowbiz/article-9766755/Nicole-Kidman-Tom-Cruises-notoriously-private-daughter-Bella-shares-rare-selfie.html",
    "urlToImage":
        "https://i.dailymail.co.uk/1s/2021/07/07/23/45170659-0-image-a-30_1625698401787.jpg",
    "publishedAt": "2021-07-07T23:29:57Z",
    "content":
        "Nicole Kidman and Tom Cruise's daughter Bella has avoided the public eye for most of her adult life.\r\nBut the London-based artist, 28, made a rare appearance on social media this week as she tuned in… [+4062 chars]"
  },
  {
    "source": {"id": "nbc-news", "name": "NBC News"},
    "author": "Dartunorro Clark, Pete Williams",
    "title":
        "Rudy Giuliani suspended from practicing law in Washington, D.C. - NBC News",
    "description":
        "An appeals court in Washington, D.C., suspended Rudy Giuliani's authority to practice law in the city Wednesday.",
    "url":
        "https://www.nbcnews.com/politics/politics-news/rudy-giuliani-suspended-practicing-law-washington-d-c-n1273311",
    "urlToImage":
        "https://media-cldnry.s-nbcnews.com/image/upload/t_nbcnews-fp-1200-630,f_auto,q_auto:best/newscms/2021_27/3489466/210707-rudy-giuliani-jm-1857.jpg",
    "publishedAt": "2021-07-07T23:29:00Z",
    "content":
        "A local appeals court in Washington, D.C., suspended Rudy Giuliani's authority to practice law in the city Wednesday.\r\nA New York appellate court suspended Giuliani's law license last month, saying h… [+1395 chars]"
  },
  {
    "source": {"id": "cbs-news", "name": "CBS News"},
    "author": "Caitlin Yilek, Manuel Bojorquez",
    "title":
        "Search for Florida condo collapse victims turns to recovery effort - CBS News",
    "description":
        "\"We've truly exhausted every option available to us in the search and rescue mission,\" said Mayor Daniella Levine Cava of Miami-Dade County.",
    "url":
        "https://www.cbsnews.com/news/florida-condo-collapse-turns-to-recovery-effort/",
    "urlToImage":
        "https://cbsnews3.cbsistatic.com/hub/i/r/2021/07/06/54cc6fbb-a4b6-4c3d-9a43-96bd17f927a4/thumbnail/1200x630/4acaf358e1a6c0f918c329a3c0b32bf5/gettyimages-1233822230.jpg",
    "publishedAt": "2021-07-07T23:11:00Z",
    "content":
        "The search of the collapsed condo building in Surfside, Florida, has switched from a rescue effort to a recovery operation. At least 54 people have been confirmed dead and 86 are still missing nearly… [+2310 chars]"
  },
  {
    "source": {"id": null, "name": "MMA Fighting"},
    "author": "Damon Martin",
    "title":
        "VIDEO: Sean O’Malley ‘inspired’ by Conor McGregor but not copying him, claims other fighters ‘jealous’ of his… - MMA Fighting",
    "description":
        "Sean O’Malley says he’s definitely inspired by Conor McGregor but he’s not copying the Irish superstar while adding that most fighters talking bad about him are just jealous of the success he’s had in his career.",
    "url":
        "https://www.mmafighting.com/2021/7/7/22567570/sean-omalley-inspired-by-conor-mcgregor-not-copying-him-claims-other-fighters-jealous-of-his-success",
    "urlToImage":
        "https://cdn.vox-cdn.com/thumbor/mUx1nPXNtwDn1cYrBTZuCpwLah4=/0x0:1920x1005/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/22704554/Omalley.jpg",
    "publishedAt": "2021-07-07T23:00:00Z",
    "content":
        "Ever since first arriving in the UFC, Sean OMalley has been viewed as a future superstar for the promotion. But just because hes a little loud as he enjoys some flash and flare inside and outside of … [+3580 chars]"
  },
  {
    "source": {"id": null, "name": "KTLA Los Angeles"},
    "author": "Associated Press",
    "title":
        "NorCal woman ID’d as camper pulled from tent, killed by grizzly bear in Montana - KTLA Los Angeles",
    "description":
        "A grizzly bear pulled a woman from her tent in a small Montana town in the middle of the night and killed her before fellow campers could use bear spray to force the bruin out of the area, wildlife officials said Wednesday. Leah Davis Lokan, 65, of Chico, Cal…",
    "url":
        "https://ktla.com/news/california/norcal-woman-idd-as-camper-pulled-from-tent-killed-by-grizzly-bear-in-montana/",
    "urlToImage":
        "https://ktla.com/wp-content/uploads/sites/4/2021/07/AP21188715351655.jpg?w=1280",
    "publishedAt": "2021-07-07T22:59:34Z",
    "content":
        "A grizzly bear pulled a woman from her tent in a small Montana town in the middle of the night and killed her before fellow campers could use bear spray to force the bruin out of the area, wildlife o… [+3896 chars]"
  },
  {
    "source": {"id": "google-news", "name": "Google News"},
    "author": null,
    "title":
        "Wednesday 5 p.m. Tropical Update: Elsa moves on to Georgia - WWLTV",
    "description": null,
    "url":
        "https://news.google.com/__i/rss/rd/articles/CBMiK2h0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9b01GQlRaY2hqdGPSAQA?oc=5",
    "urlToImage": null,
    "publishedAt": "2021-07-07T22:54:15Z",
    "content": null
  },
  {
    "source": {"id": null, "name": "Yahoo Entertainment"},
    "author": "Chris Willman",
    "title":
        "Ringo Starr Celebrates 81st Birthday With a Peace-and-Love Drive-By in Beverly Hills - Yahoo Entertainment",
    "description":
        "Sometimes the peace-and-love message has to be celebrated in near-drive-by status, at least when there’s still a pandemic going on and you’re a Beatle trying...",
    "url":
        "https://www.yahoo.com/entertainment/ringo-starr-celebrates-81st-birthday-224828816.html",
    "urlToImage":
        "https://s.yimg.com/uu/api/res/1.2/REZ3d79iMQPJ.dii94O6Iw--~B/aD01ODA7dz0xMDAwO2FwcGlkPXl0YWNoeW9u/https://media.zenfs.com/en/variety.com/249bb290b4d3b99b218dc2dfa5f7e213",
    "publishedAt": "2021-07-07T22:48:28Z",
    "content":
        "Sometimes the peace-and-love message has to be celebrated in near-drive-by status, at least when theres still a pandemic going on and youre a Beatle trying not to draw a crowd. And so Ringo Starrs an… [+2701 chars]"
  }
];
