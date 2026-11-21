import 'package:material_ui/material_ui.dart';
import 'package:percipio_practice_2/screens/dismissible_widget_page.dart';

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
      home: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Insta Store',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: const MySwipeList(),
      ),
    );
  }
}
