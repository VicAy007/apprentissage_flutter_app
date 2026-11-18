import 'package:material_ui/material_ui.dart';
//import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThirdPage extends StatefulWidget {
  final String title;

  const ThirdPage({super.key, this.title = ''});

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  Map<String, bool?> checkLists = {
    'Groceries': true,
    'Kids': true,
    'Personal': true,
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
                'Shopping Categoriesss',
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
        ],
      ),
    );
  }
}
