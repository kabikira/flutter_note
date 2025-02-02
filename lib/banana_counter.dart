import 'package:flutter/material.dart';

class BananaCounter extends StatelessWidget {
  final int number;
  const BananaCounter({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    final banana = Image.asset('images/banana.png');
    final text = Text(
      '$number',
      style: const TextStyle(color: Colors.yellow, fontSize: 50),
    );
    final row =
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      banana,
      text,
    ]);
    final con = Container(
      width: 300,
      height: 100,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
          color: Colors.black87, borderRadius: BorderRadius.circular(12)),
      child: row,
    );
    return con;
  }
}
