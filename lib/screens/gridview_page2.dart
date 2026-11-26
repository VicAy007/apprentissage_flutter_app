import 'package:material_ui/material_ui.dart';

import 'dart:math';

class ProductsView2 extends StatelessWidget {
  const ProductsView2({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(15.0),

      children: List.generate(
        products.length,
        ((index) => GridItem(product: products[index])),
      ),
    );
  }
}

class Product {
  final String title;
  final String image;

  Product({required this.title, required this.image});
}

List<Product> products = [
  Product(title: 'Heels', image: 'images/heels.jpg'),
  Product(title: 'Shoes', image: 'images/shoes.jpg'),
  Product(title: 'Hat', image: 'images/hats.jpg'),
  Product(title: 'Book', image: 'images/books.png'),
  Product(title: 'Banana', image: 'images/banana.jpg'),
  Product(title: 'Bag', image: 'images/bag.jpg'),
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
      elevation: 5,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Theme.of(context).colorScheme.outline),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
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

            Text(
              product.title,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
