import 'dart:math';

import 'package:material_ui/material_ui.dart';

class ListviewPage2 extends StatelessWidget {
  const ListviewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        products.length,
        (index) => ListItem(product: products[index]),
      ),
    );
  }
}

class Product {
  final String image;
  final String subtitle;

  Product({required this.image, required this.subtitle});
}

List<Product> products = [
  Product(image: 'images/heels.jpg', subtitle: 'High heels'),
  Product(image: 'images/shoes.jpg', subtitle: 'White shoes'),
  Product(image: 'images/hats.jpg', subtitle: 'A hat'),
  Product(image: 'images/books.png', subtitle: 'Some books'),
  Product(image: 'images/banana.jpg', subtitle: 'Banana'),
  Product(image: 'images/bag.jpg', subtitle: 'A bag'),
];

class ListItem extends StatelessWidget {
  final Product product;
  ListItem({required this.product});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: getRandomColor(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(product.image),
              width: 125,
              height: 125,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 5),
            Text(
              product.subtitle,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Color getRandomColor() {
    Random random = Random();

    return Color.fromARGB(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
    );
  }
}
