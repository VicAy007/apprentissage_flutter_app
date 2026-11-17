import 'package:material_ui/material_ui.dart';

import 'dart:async';

class SecondPage extends StatefulWidget {
  const new({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<Color> colors = [
    Colors.white,
    Colors.yellow,
    Colors.amberAccent,
    Colors.greenAccent,
  ];
  final double _looptime = 4;
  //bool isAmber = false;
  int index = 0;

  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(milliseconds: (1000 * _looptime).toInt()), (
      Timer currentIndex,
    ) {
      for (index = 0; index <= colors.length; index++) {
        setState(() {
          colors[index];
        });
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors[index],

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Insta Stores',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text(
          'Welcome to the Insta Store',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

/*   ///dispose()
C'est une méthode du cycle de vie de State.

Elle est appelée lorsque Flutter retire définitivement ce State de l'arbre des widgets.
timer?.cancel()
Le ? est ici un opérateur d'accès conditionnel.

Il signifie :
« Si timer n'est pas null, appelle sa méthode cancel(). Sinon, ne fais rien. »

C'est équivalent à :
if (timer != null) {
  timer!.cancel();
}

La méthode cancel() arrête le Timer.

Pourquoi est-ce indispensable ?

Imagine que l'utilisateur quitte ton écran alors que le Timer continue de fonctionner.

Il pourrait encore essayer d'exécuter :
setState(() {
  isAmber = !isAmber;
});

Or, ton widget n'existe plus. */
