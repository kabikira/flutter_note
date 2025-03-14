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
          child: MyStack(),
        ),
      ),
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
