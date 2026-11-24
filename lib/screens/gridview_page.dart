import 'package:material_ui/material_ui.dart';


import 'dart:math';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(20.0),
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        products.length,
        (index) => GridItem(product: products[index]),
      ),
    );
  }
}

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
