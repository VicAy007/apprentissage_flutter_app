import 'package:material_ui/material_ui.dart';

class ListTilePage3 extends StatelessWidget {
  const ListTilePage3({super.key});

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
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/profiles/Portrait1.png'),
              ),
              title: Text(
                'My Profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/profiles/Portrait2.png'),
              ),
              title: Text(
                'Past Orders',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/profiles/Portrait3.png'),
              ),
              title: Text(
                'Account settings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/profiles/Portrait4.png'),
              ),
              title: Text(
                'About',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/profiles/Portrait5.png'),
              ),
              title: Text(
                'Share',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/profiles/Portrait1.png'),
              ),
              title: Text(
                'Contact Us',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ],
        ).toList(),
      ),
    );
  }
}
