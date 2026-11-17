/* import 'package:material_ui/material_ui.dart';

class TimerColor extends StatefulWidget {
  //final Widget child;

  const TimerColor({super.key});

  @override
  State<TimerColor> createState() => _TimerColorState();
}

class _TimerColorState extends State<TimerColor> {
  bool _isAmber = true;

  Color _getBackgroundColor(bool isAmber) {
    return isAmber ? Colors.amberAccent : Colors.greenAccent;
  }

  void _toggleColor() {
    setState(() {
      _isAmber = !_isAmber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _getBackgroundColor(_isAmber),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: _toggleColor,
            child: const Text('Changer la couleur'),
          ),
        ],
      ),
    );
  }
}
 */

