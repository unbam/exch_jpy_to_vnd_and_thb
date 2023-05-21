// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Exchange {
  double get toJpy => throw _privateConstructorUsedError;
  double get toVnd => throw _privateConstructorUsedError;
  double get toThb => throw _privateConstructorUsedError;
  double get toUsd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExchangeCopyWith<Exchange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeCopyWith<$Res> {
  factory $ExchangeCopyWith(Exchange value, $Res Function(Exchange) then) =
      _$ExchangeCopyWithImpl<$Res, Exchange>;
  @useResult
  $Res call({double toJpy, double toVnd, double toThb, double toUsd});
}

/// @nodoc
class _$ExchangeCopyWithImpl<$Res, $Val extends Exchange>
    implements $ExchangeCopyWith<$Res> {
  _$ExchangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toJpy = null,
    Object? toVnd = null,
    Object? toThb = null,
    Object? toUsd = null,
  }) {
    return _then(_value.copyWith(
      toJpy: null == toJpy
          ? _value.toJpy
          : toJpy // ignore: cast_nullable_to_non_nullable
              as double,
      toVnd: null == toVnd
          ? _value.toVnd
          : toVnd // ignore: cast_nullable_to_non_nullable
              as double,
      toThb: null == toThb
          ? _value.toThb
          : toThb // ignore: cast_nullable_to_non_nullable
              as double,
      toUsd: null == toUsd
          ? _value.toUsd
          : toUsd // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExchangeCopyWith<$Res> implements $ExchangeCopyWith<$Res> {
  factory _$$_ExchangeCopyWith(
          _$_Exchange value, $Res Function(_$_Exchange) then) =
      __$$_ExchangeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double toJpy, double toVnd, double toThb, double toUsd});
}

/// @nodoc
class __$$_ExchangeCopyWithImpl<$Res>
    extends _$ExchangeCopyWithImpl<$Res, _$_Exchange>
    implements _$$_ExchangeCopyWith<$Res> {
  __$$_ExchangeCopyWithImpl(
      _$_Exchange _value, $Res Function(_$_Exchange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toJpy = null,
    Object? toVnd = null,
    Object? toThb = null,
    Object? toUsd = null,
  }) {
    return _then(_$_Exchange(
      toJpy: null == toJpy
          ? _value.toJpy
          : toJpy // ignore: cast_nullable_to_non_nullable
              as double,
      toVnd: null == toVnd
          ? _value.toVnd
          : toVnd // ignore: cast_nullable_to_non_nullable
              as double,
      toThb: null == toThb
          ? _value.toThb
          : toThb // ignore: cast_nullable_to_non_nullable
              as double,
      toUsd: null == toUsd
          ? _value.toUsd
          : toUsd // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Exchange implements _Exchange {
  const _$_Exchange(
      {this.toJpy = 0.0, this.toVnd = 0.0, this.toThb = 0.0, this.toUsd = 0.0});

  @override
  @JsonKey()
  final double toJpy;
  @override
  @JsonKey()
  final double toVnd;
  @override
  @JsonKey()
  final double toThb;
  @override
  @JsonKey()
  final double toUsd;

  @override
  String toString() {
    return 'Exchange(toJpy: $toJpy, toVnd: $toVnd, toThb: $toThb, toUsd: $toUsd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Exchange &&
            (identical(other.toJpy, toJpy) || other.toJpy == toJpy) &&
            (identical(other.toVnd, toVnd) || other.toVnd == toVnd) &&
            (identical(other.toThb, toThb) || other.toThb == toThb) &&
            (identical(other.toUsd, toUsd) || other.toUsd == toUsd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toJpy, toVnd, toThb, toUsd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeCopyWith<_$_Exchange> get copyWith =>
      __$$_ExchangeCopyWithImpl<_$_Exchange>(this, _$identity);
}

abstract class _Exchange implements Exchange {
  const factory _Exchange(
      {final double toJpy,
      final double toVnd,
      final double toThb,
      final double toUsd}) = _$_Exchange;

  @override
  double get toJpy;
  @override
  double get toVnd;
  @override
  double get toThb;
  @override
  double get toUsd;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeCopyWith<_$_Exchange> get copyWith =>
      throw _privateConstructorUsedError;
}
