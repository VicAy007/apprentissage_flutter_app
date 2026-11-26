//A étudier et mettre à jour
import 'package:material_ui/material_ui.dart';

class Item {
  String imageName;
  Item(this.imageName);
}

class GridItem extends StatefulWidget {
  final Item item;
  final ValueChanged<bool> gridItemSelectedStateChanges;

  const GridItem({
    super.key,
    required this.item,
    required this.gridItemSelectedStateChanges,
  });

  @override
  State<GridItem> createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          widget.gridItemSelectedStateChanges(isSelected);
        });
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 175,
              width: 175,
              child: Image.asset(
                widget.item.imageName,
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(isSelected ? 0.9 : 0),
                colorBlendMode: BlendMode.color,
              ),
            ),
          ),
          isSelected
              ? const Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.check_circle, color: Colors.blue),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}

class ProductsView6 extends StatefulWidget {
  const new({super.key});

  @override
  State<ProductsView6> createState() => _ProductsView6State();
}

class _ProductsView6State extends State<ProductsView6> {
  late List<Item> itemList;
  late List<Item> selectedList;

  @override
  void initState() {
    super.initState();
    loadList();
  }

  void loadList() {
    itemList = [];
    selectedList = [];

    itemList.add(Item('images/bag.jpg'));
    itemList.add(Item('images/heels.jpg'));
    itemList.add(Item('images/banana.jpg'));
    itemList.add(Item('images/hats.jpg'));
    itemList.add(Item('images/shoes.jpg'));
    itemList.add(Item('images/books.png'));
  }

  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return GridItem(
          item: itemList[index],
          gridItemSelectedStateChanges: (bool value) {
            setState(() {
              if (value) {
                selectedList.add(itemList[index]);
              } else {
                selectedList.remove(itemList[index]);
              }
            });
            var numOfItemSelected = selectedList.length;
            print('Selected $numOfItemSelected items');
          },
        );
      },
    );
  }
}
