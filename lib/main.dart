import 'package:flutter/material.dart';
import 'package:flutter_note/env.dart';
import 'package:flutter_note/season_dropdown.dart';
import 'package:flutter_note/season_flower.dart';
import 'package:flutter_note/season_time.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  const app = MyApp();
  const scope = ProviderScope(child: app);
  runApp(scope);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Env.pass1),
      ),
    );
  }
}
