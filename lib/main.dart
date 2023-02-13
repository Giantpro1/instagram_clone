import 'package:flutter/material.dart';
import 'package:instagram_clone/home_page.dart';
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
      home:const MyHomePage(title: ''),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage==1? const SearchPage(): const HomePage(),
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
              Icons.ondemand_video,
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
              Icons.favorite_border,
              color: currentPage == 3
                  ? const Color.fromRGBO(203, 23, 101, 1)
                  : const Color.fromRGBO(40, 40, 40, 1),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
                setState(() {
                currentPage = 4;
              });
            },
            icon: Icon(
              Icons.person,
              color: currentPage == 4
                  ? const Color.fromRGBO(203, 23, 101, 1)
                  : const Color.fromRGBO(40, 40, 40, 1),
            ),
          ),
          const Spacer(),
        ],
      )),
    );
  }
}
