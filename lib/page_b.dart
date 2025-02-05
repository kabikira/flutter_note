import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//
// 画面 B
//
class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('画面 B'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // context.pop(); // A へ戻る
            Navigator.of(context).pop();
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
          child: const Text('< 戻る'),
        ),
      ),
    );
  }
}
