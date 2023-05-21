import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange.freezed.dart';

@freezed
class Exchange with _$Exchange {
  const factory Exchange({
    @Default(0.0) double toJpy,
    @Default(0.0) double toVnd,
    @Default(0.0) double toThb,
    @Default(0.0) double toUsd,
  }) = _Exchange;
}
