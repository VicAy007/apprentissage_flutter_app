import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';

class RowOrColumn extends StatelessWidget {
  const RowOrColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Insta Store',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Colors.grey,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
          
            children: <Widget>[
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(width: 3.0, color: Colors.blueGrey),
                ),
                child: Image.asset('images/banana.jpg', fit: BoxFit.cover),
              ),
              const SizedBox(width: 60),
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(width: 3.0, color: Colors.blueGrey),
                ),
                child: Image.asset('images/heels.jpg', fit: BoxFit.cover),
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}
