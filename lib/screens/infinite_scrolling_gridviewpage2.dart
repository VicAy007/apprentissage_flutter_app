import 'package:material_ui/material_ui.dart';

//Setting_up a gridview to hold selection State
final List<String> images = [
  'images/heels.jpg',
  'images/bag.jpg',
  'images/banana.jpg',
  'images/books.png',
  'images/hats.jpg',
  'images/shoes.jpg',
];

class ProductsView5 extends StatelessWidget {
  const ProductsView5({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      padding: const EdgeInsets.all(10),
      //itemCount: 20,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
      ),
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return Image.asset(images[index % images.length], fit: BoxFit.cover);
      }),
    );
  }
}
