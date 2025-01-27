import 'package:flutter/material.dart';

void main() {
  const b = 'バナナ';
  const t = Text(b);
  const c = Center(child: t);
  const s = Scaffold(body: c);
  const a = MaterialApp(home: s);
  runApp(a);
}
