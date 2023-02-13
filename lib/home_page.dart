import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    'images/burn2.jfif',
    'images/justin.jfif',
    'images/riha.jfif',
    'images/tems.jfif',
    'images/cardi.jpg',
    'images/millie.jpg',
    'images/fireboy.jpg',
    'images/david.jpg',
    'images/pexels-dante-juhasz-12964186.jpg',
    'images/pexels-jay-pizzle-3752169.jpg',
    'images/pexels-leif-bergerson-9764734.jpg',
    'images/pexels-mike-b-5279905.jpg',
  ];

  List<String> posts = [
    'images/burnapost.jpg',
    'images/bieber_post.jpg',
    'images/rihanna_post.jpg',
    'images/temsPost.jpg',
    'images/card_post.jpg',
    'images/millie_post.jpg',
    'images/fireboy_post.jpg',
    'images/david_post.jpg',
    'images/pexels-dante-juhasz-12964186.jpg',
    'images/pexels-jay-pizzle-3802508.jpg',
    'images/pexels-leif-bergerson-9843198.jpg',
    'images/pexels-mike-noga-3608542.jpg',
  ];
 Future<void>refreshPage()async {
  await Future.delayed(const Duration(seconds: 1));  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/instalogo.png",
          height: 50,
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_card_outlined, color: Colors.black,)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.chat_bubble_outline, color: Colors.black,)),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: refreshPage,
        child: SingleChildScrollView(
            child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      12,
                      (index) => Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      const AssetImage('images/instaBack.jpg'),
                                  child: CircleAvatar(
                                    radius: 32,
                                    backgroundImage:
                                        AssetImage(profileImages[index]),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Profile Name',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black87),
                                ),
                              ],
                            ),
                          ))),
            ),
            const Divider(),
            Column(
                children: List.generate(
              12,
              (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Header Post
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: CircleAvatar(
                          radius: 14,
                          backgroundImage:
                              const AssetImage('images/instaBack.jpg'),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundImage: AssetImage(profileImages[index]),
                          ),
                        ),
                      ),
                      const Text("Profile Name"),
                      const Spacer(),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_horiz))
                    ],
                  ),
                  // image post
                  Image.asset(posts[index]),
                  Row(children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.chat_bubble_outline_rounded),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send_rounded),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_border),
                    ),
                  ]),
      
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(text: "Liked By"),
                              TextSpan(
                                text: "Profile Name",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: " and"),
                              TextSpan(
                                text: " others",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: "Profile Name",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text:
                                      "Love Damini Album will be out 12:00Am Guys Love you All!"),
                            ],
                          ),
                        ),
                        const Text(
                          "View all 12 comment",
                          style: TextStyle(
                            color: Colors.black38,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        )),
      ),
    );
  }
}
