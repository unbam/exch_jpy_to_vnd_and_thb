# exch_jpy_to_vnd_and_thb

This project is an application to convert JPY to VND and THB.

## APIKEY

exchange_provider.dart

```dart
final exchangeProvider = Provider<ExchangeRepository>(
  (ref) => ExchangeRepository(
    ref.watch(apiClientProvider),
    'APIKEY',
  ),
);
```

## Link

```zsh
cd firebase/public
ln -s ../../build/web/* ./
```

## Build

```zsh
fvm flutter build web --web-renderer html   
```

## Deploy

```zsh
firebase login
firebase projects:list
firebase deploy --only hosting
```
