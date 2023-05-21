import 'package:freezed_annotation/freezed_annotation.dart';

import 'api_error.dart';

part 'api_result.freezed.dart';

///
/// ApiResult
///
@freezed
class ApiResult with _$ApiResult {
  /// Success
  const factory ApiResult.success({required Map<String, dynamic> data}) =
      Success;

  /// Failure
  const factory ApiResult.failure({required ApiError error}) = Failure;
}
