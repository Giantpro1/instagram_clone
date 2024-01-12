import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> profileImages = [
      'images/cardi.jpg',
      'images/millie.jpg',
      'images/fireboy.jpg',
      'images/david.jpg',
      'images/pexels-dante-juhasz-12964186.jpg',
      'images/pexels-jay-pizzle-3752169.jpg',
      'images/pexels-leif-bergerson-9764734.jpg',
      'images/pexels-mike-b-5279905.jpg',
      'images/burn2.jfif',
      'images/justin.jfif',
      'images/riha.jfif',
      'images/tems.jfif',
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                contentPadding: const EdgeInsets.all(0),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: const Color.fromRGBO(220, 220, 220, 1),
                filled: true,
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Three items per row
              childAspectRatio: 1, // Adjust as needed for desired proportions
              mainAxisSpacing: 0, // Spacing between rows
              crossAxisSpacing: 0, // Spacing between columns
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final mediaItem = profileImages[index];
                // var thumbnailUrl;
                return GridTile(
                  footer: GridTileBar(
                    title: Text(mediaItem),
                  ),
                  child: SizedBox(
                    width: 100, // Adjust as needed
                    height: 100,
                    child: Image.asset(mediaItem),
                  ),
                );
              },
              childCount: profileImages.length,
            ),
          ),
        ],
      ),
    );
  }
}
