import 'package:flutter/material.dart';
import 'package:instagram_clone/create_post.dart';
import 'package:instagram_clone/home_page.dart';
import 'package:instagram_clone/profile_page.dart';
import 'package:instagram_clone/reel_page.dart';
import 'package:instagram_clone/search_page.dart';

void main() {
  runApp(const InstagramClone());
}

class InstagramClone extends StatelessWidget {
  const InstagramClone({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        appBarTheme: const AppBarTheme(elevation: 1, color: Colors.white),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  List<String> profileImages = [
    'images/burn2.jfif',
    'images/justin.jfif',
    'images/riha.jfif',
    'images/tems.jfif',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage == 1
          ? const SearchPage()
          : currentPage == 0
              ? const HomePage()
              : currentPage == 2
                  ? const CreatePostPage()
                  : currentPage == 3
                      ? const Reelpage()
                      : currentPage == 4 // Case for profile page
                          ? const ProfilePage() // Replace with your profile page widget
                          : const HomePage(),
      bottomNavigationBar: BottomAppBar(
          child: Row(
        children: [
          const Spacer(),
          IconButton(
            onPressed: () {
              setState(() {
                currentPage = 0;
              });
            },
            icon: Icon(
              Icons.home,
              color: currentPage == 0
                  ? const Color.fromRGBO(203, 23, 101, 1)
                  : const Color.fromRGBO(40, 40, 40, 1),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              setState(() {
                currentPage = 1;
              });
            },
            icon: Icon(
              Icons.search,
              color: currentPage == 1
                  ? const Color.fromRGBO(203, 23, 101, 1)
                  : const Color.fromRGBO(40, 40, 40, 1),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              setState(() {
                currentPage = 2;
              });
            },
            icon: Icon(
              Icons.add_box_outlined,
              color: currentPage == 2
                  ? const Color.fromRGBO(203, 23, 101, 1)
                  : const Color.fromRGBO(40, 40, 40, 1),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              setState(() {
                currentPage = 3;
              });
            },
            icon: Icon(
              Icons.ondemand_video_sharp,
              color: currentPage == 3
                  ? const Color.fromRGBO(203, 23, 101, 1)
                  : const Color.fromRGBO(40, 40, 40, 1),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                currentPage = 4; // Set currentPage to 4 for profile page
              });
            },
            child: CircleAvatar(
              // radius: 35,
              // backgroundImage: AssetImage(_backgroundImage),
              child: CircleAvatar(
                radius: 12,
                backgroundImage: AssetImage(profileImages[0]),
              ),
            ),
          ),
          const Spacer(),
        ],
      )),
    );
  }
}
