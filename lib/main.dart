import 'package:flutter/material.dart';
import 'package:flutter_note/banana_counter.dart';

void main() {
  final b = BananaCounter(
    number: 888,
  );
  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: b,
      ),
    ),
  );
  runApp(a);
}
