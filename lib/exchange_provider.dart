import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'api/api_client.dart';
import 'exchange_repository.dart';

final exchangeProvider = Provider<ExchangeRepository>(
  (ref) => ExchangeRepository(
    ref.watch(apiClientProvider),
    '', // TODO: APIKEY
  ),
);
