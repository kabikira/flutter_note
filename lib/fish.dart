import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fish.freezed.dart';

@freezed
class Fish with _$Fish {
  const factory Fish({
    required String name,
    required int size,
    required int price,
  }) = _Fish;
}
