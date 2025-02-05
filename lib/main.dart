import 'package:flutter/material.dart';
import 'package:flutter_note/page_a.dart';
import 'package:flutter_note/page_b.dart';
import 'package:flutter_note/page_c.dart';
import 'package:go_router/go_router.dart';

/*
  最新のFlutterに対応するため、動画と少しコードが変わりました
*/

class CustomRouterObserver extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    print(
        "🔄 画面が戻った: ${route.settings.name} → ${previousRoute?.settings.name}");

    if (previousRoute?.settings.name == "/a") {
      print("✅ PageBからPageAに戻ってきた！");
      // ここでAPIリロードやデータ更新が可能
    }
  }
}

main() {
  final app = App();
  runApp(app);
}

// アプリ全体
class App extends StatelessWidget {
  App({super.key});

  final router = GoRouter(
    // パス (アプリが起動したとき)
    initialLocation: '/a',
    observers: [CustomRouterObserver()],
    // パスと画面の組み合わせ
    routes: [
      GoRoute(
        path: '/a',
        builder: (context, state) => const PageA(),
      ),
      GoRoute(
        path: '/b',
        builder: (context, state) => const PageB(),
      ),
      GoRoute(
        path: '/c',
        builder: (context, state) => const PageC(),
      ),
    ],
    redirect: (context, state) {
      print("現在のパス: ${state.fullPath}");
      return null;
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
