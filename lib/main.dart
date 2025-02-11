import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  const app = MaterialApp(home: Home());
  const scope = ProviderScope(child: app);
  runApp(scope);
}

final percentProvider = StateProvider((ref) {
  return 0.00;
});

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final percent = ref.watch(percentProvider);

    final circular = CircularPercentIndicator(
      percent: percent,
      backgroundColor: Colors.yellow,
      progressColor: Colors.green,
      animation: true,
      animationDuration: 200,
      animateFromLastPercent: true,
      radius: 60.0,
      lineWidth: 20.0,
      center: Text('${percent * 100}%'),
    );

    final linear = LinearPercentIndicator(
      percent: percent,
      backgroundColor: Colors.yellow,
      progressBorderColor: Colors.green,
      animation: true,
      animationDuration: 200,
      animateFromLastPercent: true,
      alignment: MainAxisAlignment.center,
      lineHeight: 20,
      width: 300,
    );

    final button = ElevatedButton(
        onPressed: () => onPressed(ref), child: const Text('スタート'));

    final colum = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        circular,
        linear,
        button,
      ],
    );

    return Scaffold(
      body: colum,
    );
  }

  void onPressed(WidgetRef ref) async {
    // 1秒まつ
    await Future.delayed(const Duration(seconds: 1));
    // 20%
    ref.read(percentProvider.notifier).state = 0.20;
    // 1秒まつ
    await Future.delayed(const Duration(seconds: 1));
    // 40%
    ref.read(percentProvider.notifier).state = 0.40;
    // 1秒まつ
    await Future.delayed(const Duration(seconds: 1));
    // 60%
    ref.read(percentProvider.notifier).state = 0.60;
    // 1秒まつ
    await Future.delayed(const Duration(seconds: 1));
    // 80%
    ref.read(percentProvider.notifier).state = 0.80;
    // 1秒まつ
    await Future.delayed(const Duration(seconds: 1));
    // 100%
    ref.read(percentProvider.notifier).state = 1.00;
  }
}
