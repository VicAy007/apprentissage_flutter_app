import 'package:material_ui/material_ui.dart';

import 'package:percipio_practice_2/screens/list_tile_page_2.dart';

void main() {
  runApp(MyStore());
}

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Insta Store',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blueGrey,
      ),
      home: ListTilePage2(),
    );
  }
}
