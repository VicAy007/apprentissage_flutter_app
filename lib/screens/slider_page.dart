import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';

import 'dart:async';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _looptime = 4;
  bool isAmber = false;

  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(milliseconds: (1000 * _looptime).toInt()), (
      Timer timer,
    ) {
      setState(() {
        isAmber = !isAmber;
      });
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
      backgroundColor: isAmber ? Colors.amber : Colors.green,
      appBar: AppBar(centerTitle: true, title: Text('Insta Store')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            activeColor: Colors.black,
            value: _looptime,
            max: 15,
            min: 0,
            onChanged: (value) {
              setState(() {
                _looptime = value;
              });
            },
          ),
          Text(_looptime.toString()),
          const Expanded(
            child: Center(
              child: Text(
                'Welcome to the Insta Store',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Verdana',
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}
