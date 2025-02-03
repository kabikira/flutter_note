import 'package:flutter/material.dart';

/*
  最新のFlutterに対応するため、動画と少しコードが変わりました
*/

void main() {
  xxxx() {
    debugPrint('これから通信を始めます');
    debugPrint('通信中です');
    debugPrint('通信が終わりました');
  }

  final button = ElevatedButton(
    onPressed: xxxx,
    style: ElevatedButton.styleFrom(
      // MEMO: primary は古くなったので backgroundColor へ変更しました
      backgroundColor: Colors.green,
    ),
    child: const Text('押してみて'),
  );

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: button,
      ),
    ),
  );

  runApp(a);
}
