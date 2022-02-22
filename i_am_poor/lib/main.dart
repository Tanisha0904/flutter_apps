import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          title: Text(
            'I Am Poor',
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/KimiNoNava.png'),

          ),
        ),
      )
    ),
  );
}
