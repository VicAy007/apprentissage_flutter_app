import 'package:material_ui/material_ui.dart';

class ShoppingCard extends StatelessWidget {
  const ShoppingCard({super.key, this.on = true, this.chore = ''});

  final bool on;
  final String chore;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffeeeeee), width: 2.0),
        color: Colors.white38,
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      ),
      margin: const EdgeInsets.all(8),
      height: 200,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Icons.shopping_bag_outlined,
              size: 100.0,
              color: on ? Colors.green : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
