import 'package:flutter/material.dart';
import 'package:flutter_note/season.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SeasonFlower extends ConsumerWidget {
  const SeasonFlower({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final season = ref.watch(seasonNotifierProvider);
    return Image.asset(switch (season) {
      Season.spring => 'images/cherry-blossom.png',
      Season.summer => 'images/sunflower.png',
      Season.autumn => 'images/maple.png',
      Season.winter => 'images/narcissus.png',
    });
  }
}
