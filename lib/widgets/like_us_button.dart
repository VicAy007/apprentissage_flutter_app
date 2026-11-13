import 'package:material_ui/material_ui.dart';

class LikeUsButton extends StatefulWidget {
  const LikeUsButton({super.key});

  @override
  State<LikeUsButton> createState() => _LikeUsButtonState();
}

class _LikeUsButtonState extends State<LikeUsButton> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Like Us! ($_counter likes)',
      child: const Icon(Icons.thumb_up),
    );
  }
}
