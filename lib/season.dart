import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'season.g.dart';

enum Season {
  spring,
  summer,
  autumn,
  winter,
}

@riverpod
class SeasonNotifier extends _$SeasonNotifier {
  @override
  Season build() {
    return Season.spring;
  }

  void updateSeason(Season season) {
    state = season;
  }
}
