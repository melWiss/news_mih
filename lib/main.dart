import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsScreen(),
    );
  }
}

class NewsScreen extends StatefulWidget {
  @override
  NewsScreenState createState() => NewsScreenState();
}

class NewsScreenState extends State<NewsScreen> {
  int bottomIndex = 0;
  switchIndex(int i) {
    setState(() {
      bottomIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.account_balance_rounded,
          color: Colors.blue,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "News App",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext ctx, int index) {
          return Padding(
            padding: EdgeInsets.all(15),
            child: NewsCard(
              title: "Title $index",
              details: "mswkjfmqisbjqsmdijcqs",
              imageUrl:
                  "https://a4.espncdn.com/combiner/i?img=%2Fphoto%2F2021%2F0707%2Fr877295_1296x729_16-9.jpg",
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int i) {
            switchIndex(i);
          },
          currentIndex: bottomIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.save),
              label: "Saved",
            ),
          ]),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String details;
  NewsCard({
    required this.title,
    required this.imageUrl,
    required this.details,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Image.network(imageUrl),
              Positioned(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.pink,
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                bottom: 5,
                left: 5,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              details,
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
