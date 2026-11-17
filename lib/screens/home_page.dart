import 'package:material_ui/material_ui.dart';
import 'package:percipio_practice_2/widgets/like_us_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Insta Stores',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        //centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 300.0,
            width: 300,
            padding: const EdgeInsets.all(40),
            margin: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
              color: Colors.white70,
              shape: BoxShape.circle,
            ),
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThm5_J0ujZ3vR9_beiK6vk4fddz13tXOPnimldAhXexg&s=10",
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Welcome to the Insta Store',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(200, 250, 150, 214),
                  fontFamily: 'Verdana',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: LikeUsButton(),

      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(200, 250, 150, 214),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              iconSize: 32,
              onPressed: () {
                debugPrint('Searching');
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              iconSize: 32,
              onPressed: () {
                debugPrint('Adding a photo');
              },
              icon: Icon(Icons.add_a_photo),
            ),
            IconButton(
              iconSize: 32,
              onPressed: () {
                debugPrint('Sharing');
              },
              icon: Icon(Icons.share),
            ),
          ],
        ),
      ),

      drawer: Drawer(
        child: Center(
          child: Column(
            children: [Text('My Profile!', style: TextStyle(fontSize: 20))],
          ),
        ),
      ),

      drawerScrimColor: Colors.transparent,
    );
  }
}
