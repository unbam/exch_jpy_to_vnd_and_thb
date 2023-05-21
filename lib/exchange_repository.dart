import 'api/api_client.dart';
import 'model/convert_dto.dart';

class ExchangeRepository {
  ExchangeRepository(this._client, this._apikey);
  final ApiClient _client;
  final String _apikey;

  Future<ConvertDTO> convert({
    required double amount,
    required String from,
    required String to,
  }) async {
    final response = await _client.get(
      '/convert',
      queryParameters: {
        'amount': amount,
        'from': from,
        'to': to,
      },
      header: {'apikey': _apikey},
    );

    final result = response.when(
      success: ConvertDTO.fromJson,
      failure: (error) => throw Exception(error),
    );

    return result;
  }
}
