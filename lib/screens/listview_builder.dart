import 'package:material_ui/material_ui.dart';

class Action {
  final String image;
  final String title;
  final String subtitle;

  Action({required this.image, required this.subtitle, required this.title});

  @override
  String toString() {
    return '$title ($subtitle)';
  }
}

List<Action> actions = [
  Action(
    image: 'images/profiles/Portrait1.png',
    title: 'My Profile',
    subtitle: 'Edit your profile',
  ),
  Action(
    image: 'images/profiles/Portrait2.png',
    title: 'Past Orders',
    subtitle: 'View your past orders',
  ),
  Action(
    image: 'images/profiles/Portrait3.png',
    title: 'Account settings',
    subtitle: 'Edit your account settings',
  ),
  Action(
    image: 'images/profiles/Portrait4.png',
    title: 'About',
    subtitle: 'Learn about us',
  ),
  Action(
    image: 'images/profiles/Portrait5.png',
    title: 'Share',
    subtitle: 'Lis us ? Share us !',
  ),
  Action(
    image: 'images/profiles/Portrait1.png',
    title: 'Contact Us',
    subtitle: 'Have a query',
  ),
  Action(
    image: 'images/profiles/Portrait5.png',
    title: 'Share',
    subtitle: 'Lis us ? Share us !',
  ),
];

class ListviewBuilder extends StatelessWidget {
  const ListviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          'Insta Store',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: actions.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.amberAccent,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(actions[index].image),
              ),
              title: Text(actions[index].title),
              subtitle: Text(actions[index].subtitle),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                print(actions[index].title);
              },
            ),
          );
        },
      ),
    );
  }
}
