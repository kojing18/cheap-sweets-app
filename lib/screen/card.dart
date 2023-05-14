import 'package:flutter/material.dart';

class CardDetail extends StatelessWidget {
  const CardDetail(
      {super.key,
      required this.title,
      required this.price,
      required this.image});

  final String title;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                title,
                style: const TextStyle(fontSize: 18),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                "¥$price",
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              padding: const EdgeInsets.all(6),
              child: Image.network(image),
            ),
          ],
        ),
      ),
      onTap: () => debugPrint('on tap $title'),
    );
  }
}

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("CHEAP SWEETS"),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 6),
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(14, (index) {
            return const CardDetail(
                title: "蒲焼さん太郎",
                price: "14",
                image:
                    'https://m.media-amazon.com/images/I/41PpeVIhaOL._SL500_.jpg');
          }),
        ),
      ),
    );
  }
}
