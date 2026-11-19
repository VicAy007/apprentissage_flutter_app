import 'package:material_ui/material_ui.dart';

import 'dart:math';

class MyListView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    var items = [
      "Breakfast",
      "Diary",
      "Vegetables",
      'Pizza',
      'Desserts',
      'Home Care',
      'Personal Care',
      'Pet Care',
      'Kitchen',
      'Snacks',
      'Breads',
      'Fruits',
      'Dinner',
    ];

    List<Widget> containers = [];

    containers.addAll(createContainers(items));
    containers.addAll(createContainers(items));
    containers.addAll(createContainers(items));

    return ListView(
      padding: const EdgeInsets.all(8),
      scrollDirection: Axis.horizontal,
      children: containers,
    );
  }
}

List<Widget> createContainers(List<String> items) {
  Random random = Random();
  List<Widget> containers = [];

  for (var item in items) {
    containers.add(
      Container(
        padding: const EdgeInsets.all(20),
        width: 100,
        height: 150,
        color: Color.fromARGB(
          random.nextInt(255),
          random.nextInt(255),
          random.nextInt(255),
          random.nextInt(255),
        ),
        alignment: Alignment.center,
        child: Text(
          item,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
  return containers;
}
