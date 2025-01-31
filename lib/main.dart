import 'package:flutter/material.dart';

void main() {
  final img = Image.asset('images/banana.png');
  final col = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [img, img, img],
  );

  final row = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [col, col, col],
  );

  final con2 = Container(
    color: Colors.blue,
    width: 50,
    height: 50,
  );

  final con = Container(
    color: Colors.deepOrange,
    width: 200,
    height: 130,
    child: con2,
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.all(20),
  );

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: con,
      ),
    ),
  );
  runApp(a);
}
