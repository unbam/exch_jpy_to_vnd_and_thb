// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'convert_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConvertDTO _$$_ConvertDTOFromJson(Map<String, dynamic> json) =>
    _$_ConvertDTO(
      date: DateTime.parse(json['date'] as String),
      info: Info.fromJson(json['info'] as Map<String, dynamic>),
      query: Query.fromJson(json['query'] as Map<String, dynamic>),
      result: (json['result'] as num).toDouble(),
      success: json['success'] as bool,
    );

Map<String, dynamic> _$$_ConvertDTOToJson(_$_ConvertDTO instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'info': instance.info,
      'query': instance.query,
      'result': instance.result,
      'success': instance.success,
    };

_$_Info _$$_InfoFromJson(Map<String, dynamic> json) => _$_Info(
      rate: (json['rate'] as num).toDouble(),
      timestamp: json['timestamp'] as int,
    );

Map<String, dynamic> _$$_InfoToJson(_$_Info instance) => <String, dynamic>{
      'rate': instance.rate,
      'timestamp': instance.timestamp,
    };

_$_Query _$$_QueryFromJson(Map<String, dynamic> json) => _$_Query(
      amount: (json['amount'] as num).toDouble(),
      to: json['to'] as String,
      from: json['from'] as String,
    );

Map<String, dynamic> _$$_QueryToJson(_$_Query instance) => <String, dynamic>{
      'amount': instance.amount,
      'to': instance.to,
      'from': instance.from,
    };
