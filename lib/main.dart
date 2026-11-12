import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: Text(
            'Insta Store',
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
        floatingActionButton: FloatingActionButton(
          tooltip: 'Add item',
          onPressed: () {
            debugPrint('Added item!');
          },

          child: const Icon(Icons.add),
        ),

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
        endDrawer: const Drawer(
          child: Center(
            child: Text('My Profile!', style: TextStyle(fontSize: 20)),
          ),
        ),
        drawerScrimColor: Colors.transparent,
      ),
    );
  }
}
