import 'package:material_ui/material_ui.dart';

import 'dart:math';

class ProductsView2 extends StatelessWidget {
  const ProductsView2({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(15.0),

      children: [...images],
    );
  }
}

final List<Image> images = [
  const Image(
    image: AssetImage('images/profiles/Portrait1.png'),
    fit: BoxFit.cover,
  ),
  const Image(
    image: AssetImage('images/profiles/Portrait2.png'),
    fit: BoxFit.cover,
  ),
  const Image(
    image: AssetImage('images/profiles/Portrait3.png'),
    fit: BoxFit.cover,
  ),
  const Image(
    image: AssetImage('images/profiles/Portrait4.png'),
    fit: BoxFit.cover,
  ),
  const Image(
    image: AssetImage('images/profiles/Portrait5.png'),
    fit: BoxFit.cover,
  ),
];

class Product {
  final String title;
  final String subtitle;

  Product({required this.title, required this.subtitle});
}

List<Product> products = [
  Product(title: 'Heels', subtitle: 'High heels'),
  Product(title: 'Shoes', subtitle: 'White shoes'),
  Product(title: 'Hat', subtitle: 'A warrior hat'),
  Product(title: 'Book', subtitle: 'Some books'),
  Product(title: 'Banana', subtitle: 'Fresh Fruits'),
  Product(title: 'Bag', subtitle: 'A bag'),
];

class GridItem extends StatelessWidget {
  final Product product;
  const GridItem({super.key, required this.product});

  Color getRandomColor() {
    Random random = Random(); 

    return Color.fromARGB(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: getRandomColor(),
      elevation: 2,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(product.title, style: const TextStyle(fontSize: 20)),
            Text(product.subtitle, style: const TextStyle(fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
