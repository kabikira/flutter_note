import 'package:flutter/material.dart';
import 'package:flutter_note/season.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SeasonDropdown extends ConsumerWidget {
  const SeasonDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final season = ref.watch(seasonNotifierProvider);
    const items = [
      DropdownMenuItem(
        value: Season.spring,
        child: Text('ハル'),
      ),
      DropdownMenuItem(
        value: Season.summer,
        child: Text('ナツ'),
      ),
      DropdownMenuItem(
        value: Season.autumn,
        child: Text('アキ'),
      ),
      DropdownMenuItem(
        value: Season.winter,
        child: Text('フユ'),
      ),
    ];
    return DropdownButton(
        value: season,
        items: items,
        onChanged: (newSeason) {
          final notifier = ref.read(seasonNotifierProvider.notifier);
          notifier.updateSeason(newSeason!);
        });
  }
}
