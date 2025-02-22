import 'package:flutter/material.dart';
import 'package:flutter_note/season.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SeasonTime extends ConsumerWidget {
  const SeasonTime({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final season = ref.watch(seasonNotifierProvider);

    return Text(switch (season) {
      Season.spring => 'あけぼの',
      Season.summer => 'よる',
      Season.autumn => 'ゆうぐれ',
      Season.winter => 'つとめて',
    });
  }
}
