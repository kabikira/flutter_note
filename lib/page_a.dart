import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//
// 画面 A
//
class PageA extends StatefulWidget {
  const PageA({super.key});

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('画面 A'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Bへ遷移して結果を受け取る
            await context.push('/b');

            // PageB から戻ってきたときの処理
            print("PageBからPageAに戻ってきた！");
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          child: const Text('進む >'),
        ),
      ),
    );
  }
}
