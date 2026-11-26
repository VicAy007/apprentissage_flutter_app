//A revoir

import 'package:material_ui/material_ui.dart';

import 'dart:math';

final randomColor = Random();

//Configuring Gridview Properties

class ProductsView4 extends StatelessWidget {
  const ProductsView4({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //itemCount: 20,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (_, index) {
        return Card(
          color: Color.fromARGB(
            randomColor.nextInt(256),
            randomColor.nextInt(256),
            randomColor.nextInt(256),
            randomColor.nextInt(256),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text('Item: $index'),
          ),
        );
      },
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(5.0),
    );
  }
}
