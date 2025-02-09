import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/*
  最新のFlutterに対応するため、動画と少しコードが変わりました
*/

void main() {
  const app = MaterialApp(home: Home());
  const scope = ProviderScope(child: app);
  runApp(scope);
}

// 選ばれたラジオボタンID
final radioIdProvider = StateProvider<String?>((ref) {
  // 最初はどれも選ばれていないので null
  return null;
});

// 選ばれたチェックボックスIDたち
final checkedIdsProvider = StateProvider<Set<String>>((ref) {
  // 最初は空っぽ {}
  return {};
});

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final radioId = ref.watch(radioIdProvider);
    final checkedIds = ref.watch(checkedIdsProvider);

    void onChangedRadio(String? id) {
      ref.read(radioIdProvider.notifier).state = id!;
    }

    void onChangedCheckbox(String id) {
      final newSet = Set.of(checkedIds);
      if (checkedIds.contains(id)) {
        newSet.remove(id);
      } else {
        newSet.add(id);
      }
      ref.read(checkedIdsProvider.notifier).state = newSet;
    }

    // 縦に並べる
    final col = Column(
      children: [
        RadioListTile(
          groupValue: radioId,
          onChanged: onChangedRadio,
          value: 'A',
          title: const Text('ラジオボタンA'),
        ),
        RadioListTile(
          groupValue: radioId,
          onChanged: onChangedRadio,
          value: 'B',
          title: const Text('ラジオボタンB'),
        ),
        RadioListTile(
          groupValue: radioId,
          onChanged: onChangedRadio,
          value: 'C',
          title: const Text('ラジオボタンC'),
        ),
        CheckboxListTile(
          value: checkedIds.contains('A'),
          onChanged: (check) => onChangedCheckbox('A'),
          title: const Text('チェックボックスB'),
        ),
        CheckboxListTile(
          onChanged: (check) => onChangedCheckbox('B'),
          value: checkedIds.contains('B'),
          title: const Text('チェックボックスB'),
        ),
        CheckboxListTile(
          onChanged: (check) => onChangedCheckbox('C'),
          value: checkedIds.contains('C'),
          title: const Text('チェックボックスC'),
        ),
        ElevatedButton(
          onPressed: () {
            debugPrint(radioId);
            debugPrint(checkedIds.toString());
          },
          child: const Text('OK'),
        )
      ],
    );
    return Scaffold(
      body: col,
    );
  }
}
