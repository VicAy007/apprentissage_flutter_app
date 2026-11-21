import 'package:material_ui/material_ui.dart';

class ListTilePage2 extends StatelessWidget {
  const ListTilePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          'Insta Store',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: const <ListTile>[
            ListTile(
              leading: Icon(Icons.man),
              title: Text(
                'My Profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text(
                'Past Orders',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Account settings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.store_rounded),
              title: Text(
                'About',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text(
                'Share',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text(
                'Contact Us',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ).toList(),
      ),
    );
  }
}
