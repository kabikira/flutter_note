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

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: row,
      ),
    ),
  );
  runApp(a);
}
