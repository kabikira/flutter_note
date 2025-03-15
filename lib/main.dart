import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: ExampleOverflow(),
        ),
      ),
    );
  }
}

class ExampleOverflow extends StatelessWidget {
  const ExampleOverflow({super.key});

  @override
  Widget build(BuildContext context) {
    final stack = Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.all(40),
          color: Colors.blue,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
        )
      ],
    );

    return Container(
      width: 300,
      height: 300,
      color: Colors.yellow,
      child: stack,
    );
  }
}

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Text('テスト\nテストうんち'),
          Stack(
            clipBehavior: Clip.none,
            children: [
              // 緑の四角形
              Container(
                width: 120,
                height: 150,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
              // 赤い丸（右上に配置）
              const Positioned(
                right: -10, // 外にはみ出るように調整
                top: -20,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
