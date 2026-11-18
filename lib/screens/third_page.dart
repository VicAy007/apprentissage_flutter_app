import 'package:material_ui/material_ui.dart';
import 'package:percipio_practice_2/widgets/shopping_card.dart';

class ThirdPage extends StatefulWidget {
  final String title;

  const ThirdPage({super.key, this.title = ''});

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  Map<String, bool?> checkLists = {
    'Groceries': false,
    'Kids': false,
    'Personal': false,
    'Community': false,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), centerTitle: true),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: const Text(
                'Shopping Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: checkLists.keys
                    .map(
                      (taskName) => CheckboxListTile(
                        title: Text(taskName),
                        value: checkLists[taskName],
                        onChanged: (bool? value) {
                          setState(() {
                            checkLists[taskName] = value;
                          });
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'Shopping Icons',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.black54,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: checkLists.keys
                    .map(
                      (taskName) => ShoppingCard(
                        chore: taskName,
                        on: checkLists[taskName]!,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
