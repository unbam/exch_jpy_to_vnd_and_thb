// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'convert_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConvertDTO _$ConvertDTOFromJson(Map<String, dynamic> json) {
  return _ConvertDTO.fromJson(json);
}

/// @nodoc
mixin _$ConvertDTO {
  DateTime get date => throw _privateConstructorUsedError;
  Info get info => throw _privateConstructorUsedError;
  Query get query => throw _privateConstructorUsedError;
  double get result => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConvertDTOCopyWith<ConvertDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvertDTOCopyWith<$Res> {
  factory $ConvertDTOCopyWith(
          ConvertDTO value, $Res Function(ConvertDTO) then) =
      _$ConvertDTOCopyWithImpl<$Res, ConvertDTO>;
  @useResult
  $Res call(
      {DateTime date, Info info, Query query, double result, bool success});

  $InfoCopyWith<$Res> get info;
  $QueryCopyWith<$Res> get query;
}

/// @nodoc
class _$ConvertDTOCopyWithImpl<$Res, $Val extends ConvertDTO>
    implements $ConvertDTOCopyWith<$Res> {
  _$ConvertDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? info = null,
    Object? query = null,
    Object? result = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as Query,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as double,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoCopyWith<$Res> get info {
    return $InfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QueryCopyWith<$Res> get query {
    return $QueryCopyWith<$Res>(_value.query, (value) {
      return _then(_value.copyWith(query: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ConvertDTOCopyWith<$Res>
    implements $ConvertDTOCopyWith<$Res> {
  factory _$$_ConvertDTOCopyWith(
          _$_ConvertDTO value, $Res Function(_$_ConvertDTO) then) =
      __$$_ConvertDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date, Info info, Query query, double result, bool success});

  @override
  $InfoCopyWith<$Res> get info;
  @override
  $QueryCopyWith<$Res> get query;
}

/// @nodoc
class __$$_ConvertDTOCopyWithImpl<$Res>
    extends _$ConvertDTOCopyWithImpl<$Res, _$_ConvertDTO>
    implements _$$_ConvertDTOCopyWith<$Res> {
  __$$_ConvertDTOCopyWithImpl(
      _$_ConvertDTO _value, $Res Function(_$_ConvertDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? info = null,
    Object? query = null,
    Object? result = null,
    Object? success = null,
  }) {
    return _then(_$_ConvertDTO(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as Query,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as double,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConvertDTO implements _ConvertDTO {
  const _$_ConvertDTO(
      {required this.date,
      required this.info,
      required this.query,
      required this.result,
      required this.success});

  factory _$_ConvertDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ConvertDTOFromJson(json);

  @override
  final DateTime date;
  @override
  final Info info;
  @override
  final Query query;
  @override
  final double result;
  @override
  final bool success;

  @override
  String toString() {
    return 'ConvertDTO(date: $date, info: $info, query: $query, result: $result, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConvertDTO &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, info, query, result, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConvertDTOCopyWith<_$_ConvertDTO> get copyWith =>
      __$$_ConvertDTOCopyWithImpl<_$_ConvertDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConvertDTOToJson(
      this,
    );
  }
}

abstract class _ConvertDTO implements ConvertDTO {
  const factory _ConvertDTO(
      {required final DateTime date,
      required final Info info,
      required final Query query,
      required final double result,
      required final bool success}) = _$_ConvertDTO;

  factory _ConvertDTO.fromJson(Map<String, dynamic> json) =
      _$_ConvertDTO.fromJson;

  @override
  DateTime get date;
  @override
  Info get info;
  @override
  Query get query;
  @override
  double get result;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$_ConvertDTOCopyWith<_$_ConvertDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

Info _$InfoFromJson(Map<String, dynamic> json) {
  return _Info.fromJson(json);
}

/// @nodoc
mixin _$Info {
  double get rate => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoCopyWith<Info> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoCopyWith<$Res> {
  factory $InfoCopyWith(Info value, $Res Function(Info) then) =
      _$InfoCopyWithImpl<$Res, Info>;
  @useResult
  $Res call({double rate, int timestamp});
}

/// @nodoc
class _$InfoCopyWithImpl<$Res, $Val extends Info>
    implements $InfoCopyWith<$Res> {
  _$InfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InfoCopyWith<$Res> implements $InfoCopyWith<$Res> {
  factory _$$_InfoCopyWith(_$_Info value, $Res Function(_$_Info) then) =
      __$$_InfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double rate, int timestamp});
}

/// @nodoc
class __$$_InfoCopyWithImpl<$Res> extends _$InfoCopyWithImpl<$Res, _$_Info>
    implements _$$_InfoCopyWith<$Res> {
  __$$_InfoCopyWithImpl(_$_Info _value, $Res Function(_$_Info) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
    Object? timestamp = null,
  }) {
    return _then(_$_Info(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Info implements _Info {
  const _$_Info({required this.rate, required this.timestamp});

  factory _$_Info.fromJson(Map<String, dynamic> json) => _$$_InfoFromJson(json);

  @override
  final double rate;
  @override
  final int timestamp;

  @override
  String toString() {
    return 'Info(rate: $rate, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Info &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rate, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoCopyWith<_$_Info> get copyWith =>
      __$$_InfoCopyWithImpl<_$_Info>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfoToJson(
      this,
    );
  }
}

abstract class _Info implements Info {
  const factory _Info(
      {required final double rate, required final int timestamp}) = _$_Info;

  factory _Info.fromJson(Map<String, dynamic> json) = _$_Info.fromJson;

  @override
  double get rate;
  @override
  int get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$_InfoCopyWith<_$_Info> get copyWith => throw _privateConstructorUsedError;
}

Query _$QueryFromJson(Map<String, dynamic> json) {
  return _Query.fromJson(json);
}

/// @nodoc
mixin _$Query {
  double get amount => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueryCopyWith<Query> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryCopyWith<$Res> {
  factory $QueryCopyWith(Query value, $Res Function(Query) then) =
      _$QueryCopyWithImpl<$Res, Query>;
  @useResult
  $Res call({double amount, String to, String from});
}

/// @nodoc
class _$QueryCopyWithImpl<$Res, $Val extends Query>
    implements $QueryCopyWith<$Res> {
  _$QueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? to = null,
    Object? from = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QueryCopyWith<$Res> implements $QueryCopyWith<$Res> {
  factory _$$_QueryCopyWith(_$_Query value, $Res Function(_$_Query) then) =
      __$$_QueryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, String to, String from});
}

/// @nodoc
class __$$_QueryCopyWithImpl<$Res> extends _$QueryCopyWithImpl<$Res, _$_Query>
    implements _$$_QueryCopyWith<$Res> {
  __$$_QueryCopyWithImpl(_$_Query _value, $Res Function(_$_Query) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? to = null,
    Object? from = null,
  }) {
    return _then(_$_Query(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Query implements _Query {
  const _$_Query({required this.amount, required this.to, required this.from});

  factory _$_Query.fromJson(Map<String, dynamic> json) =>
      _$$_QueryFromJson(json);

  @override
  final double amount;
  @override
  final String to;
  @override
  final String from;

  @override
  String toString() {
    return 'Query(amount: $amount, to: $to, from: $from)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Query &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.from, from) || other.from == from));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, to, from);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryCopyWith<_$_Query> get copyWith =>
      __$$_QueryCopyWithImpl<_$_Query>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueryToJson(
      this,
    );
  }
}

abstract class _Query implements Query {
  const factory _Query(
      {required final double amount,
      required final String to,
      required final String from}) = _$_Query;

  factory _Query.fromJson(Map<String, dynamic> json) = _$_Query.fromJson;

  @override
  double get amount;
  @override
  String get to;
  @override
  String get from;
  @override
  @JsonKey(ignore: true)
  _$$_QueryCopyWith<_$_Query> get copyWith =>
      throw _privateConstructorUsedError;
}
