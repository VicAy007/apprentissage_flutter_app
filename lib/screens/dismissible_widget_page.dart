//A étudier
import 'package:material_ui/material_ui.dart';

class MySwipeList extends StatefulWidget {
  const MySwipeList({super.key});

  @override
  State<StatefulWidget> createState() => MyListView();
}

class Product {
  final String image;
  final String title;

  Product({required this.image, required this.title});
}

class MyListView extends State<MySwipeList> {
  List<Product> products = [
    Product(image: 'images/heels.jpg', title: 'High heels'),
    Product(image: 'images/shoes.jpg', title: 'White shoes'),
    Product(image: 'images/hats.jpg', title: 'A hat'),
    Product(image: 'images/books.png', title: 'Some books'),
    Product(image: 'images/banana.jpg', title: 'Banana'),
    Product(image: 'images/bag.jpg', title: 'A bag'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(products[index].title),
          background: Container(
            alignment: AlignmentDirectional.centerEnd,
            color: Colors.red,
            child: const Icon(Icons.delete, color: Colors.white),
          ),
          onDismissed: (direction) {
            setState(() {
              products.removeAt(index);
            });
          },
          direction: DismissDirection.endToStart,
          child: Card(
            elevation: 5,
            color: Colors.cyan[100],
            child: SizedBox(
              height: 100.0,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(products[index].image),
                      ),
                    ),
                  ),
                  const SizedBox(width: 24),
                  Container(
                    child: Text(
                      products[index].title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
