import 'package:material_ui/material_ui.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key, this.title = ''});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Image.asset('images/heels.jpg'),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset('images/banana.jpg'),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset('images/hats.jpg', height: 200, width: 200),
            ),
          ],
        ),
      ),
    );
  }
}
