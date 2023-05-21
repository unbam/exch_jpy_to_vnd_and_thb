import 'package:freezed_annotation/freezed_annotation.dart';

part 'convert_dto.freezed.dart';
part 'convert_dto.g.dart';

@freezed
class ConvertDTO with _$ConvertDTO {
  const factory ConvertDTO({
    required DateTime date,
    required Info info,
    required Query query,
    required double result,
    required bool success,
  }) = _ConvertDTO;

  factory ConvertDTO.fromJson(Map<String, dynamic> json) =>
      _$ConvertDTOFromJson(json);
}

@freezed
class Info with _$Info {
  const factory Info({
    required double rate,
    required int timestamp,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

@freezed
class Query with _$Query {
  const factory Query({
    required double amount,
    required String to,
    required String from,
  }) = _Query;

  factory Query.fromJson(Map<String, dynamic> json) => _$QueryFromJson(json);
}
