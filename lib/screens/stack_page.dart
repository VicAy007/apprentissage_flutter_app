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
            const SizedBox(height: 400, width: 400),
            Positioned(
              top: 100,
              left: 50,
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                      spreadRadius: 3.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                ),
                height: 300,
                width: 300,
                child: Image.asset('images/heels.jpg'),
              ),
            ),
            Positioned(
              top: 70,
              right: 30,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                      spreadRadius: 3.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                ),
                height: 200,
                width: 200,
                child: Image.asset('images/shoes.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
