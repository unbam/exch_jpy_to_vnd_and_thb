import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:number_to_words_english/number_to_words_english.dart';
import 'package:url_strategy/url_strategy.dart';

import 'currency_type.dart';
import 'exchange_provider.dart';

final formatter = NumberFormat('#,###.##');

void main() {
  setPathUrlStrategy();
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Exchange';
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: title,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exchange = ref.watch(exchangeProvider);
    final currencyType = useState(CurrencyType.jpy);
    final currencyController = useTextEditingController();
    final toJPY = useState<double>(0);
    final toVND = useState<double>(0);
    final toTHB = useState<double>(0);
    final toJPYEng = useState<String>('');
    final toVNDEng = useState<String>('');
    final toTHBEng = useState<String>('');
    final processing = useState<bool>(false);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 85,
                  child: DropdownButton(
                    value: currencyType.value,
                    items: const [
                      DropdownMenuItem(
                        value: CurrencyType.jpy,
                        child: Text('🇯🇵JPY'),
                      ),
                      DropdownMenuItem(
                        value: CurrencyType.vnd,
                        child: Text('🇻🇳VND'),
                      ),
                      DropdownMenuItem(
                        value: CurrencyType.thb,
                        child: Text('🇹🇭THB'),
                      ),
                    ],
                    onChanged: (CurrencyType? value) {
                      if (value != null) {
                        currencyType.value = value;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 120,
                  child: CurrencyInputTextField(
                    controller: currencyController,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              children: [
                price(100, (value) {
                  currencyController.text = value.toString();
                }),
                price(1000, (value) {
                  currencyController.text = value.toString();
                }),
                price(10000, (value) {
                  currencyController.text = value.toString();
                }),
                price(100000, (value) {
                  currencyController.text = value.toString();
                }),
                price(1000000, (value) {
                  currencyController.text = value.toString();
                }),
                price(0, (value) {
                  currencyController.text = value.toString();
                }),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: !processing.value
                  ? () async {
                      final amount = double.tryParse(currencyController.text);
                      if (amount == null || amount <= 0) {
                        return;
                      }

                      processing.value = true;
                      if (currencyType.value == CurrencyType.jpy) {
                        final resultVND = await exchange.convert(
                          amount: amount,
                          from: currencyType.value.toShortString(),
                          to: CurrencyType.vnd.toShortString(),
                        );
                        final resultTHB = await exchange.convert(
                          amount: amount,
                          from: currencyType.value.toShortString(),
                          to: CurrencyType.thb.toShortString(),
                        );

                        toVND.value = resultVND.result;
                        toTHB.value = resultTHB.result;
                        toJPY.value = 0;
                        toVNDEng.value =
                            NumberToWordsEnglish.convert(toVND.value.round());
                        toTHBEng.value =
                            NumberToWordsEnglish.convert(toTHB.value.round());
                        toJPYEng.value = '';
                      } else {
                        final resultJPY = await exchange.convert(
                          amount: amount,
                          from: currencyType.value.toShortString(),
                          to: CurrencyType.jpy.toShortString(),
                        );
                        toJPY.value = resultJPY.result;
                        toVND.value = 0;
                        toTHB.value = 0;
                        toJPYEng.value =
                            NumberToWordsEnglish.convert(toJPY.value.round());
                        toVNDEng.value = '';
                        toTHBEng.value = '';
                      }

                      processing.value = false;
                    }
                  : null,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: SizedBox(
                  width: 100,
                  child: Row(
                    children: const [
                      Icon(Icons.change_circle),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Exchange'),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text('🇻🇳VND:'),
                      SelectableText(formatter.format(toVND.value)),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  Text(toVNDEng.value),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text('🇹🇭THB:'),
                      SelectableText(formatter.format(toTHB.value)),
                    ],
                  ),
                  Text(toTHBEng.value),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text('🇯🇵JPY:'),
                      SelectableText(formatter.format(toJPY.value)),
                    ],
                  ),
                  Text(toJPYEng.value),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget price(int price, Function(int) onTap) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: GestureDetector(
        onTap: () => onTap(price),
        child: Chip(
          label: price == 0 ? const Text('Clear') : Text('$price'),
        ),
      ),
    );
  }
}

class CurrencyInputTextField extends StatelessWidget {
  const CurrencyInputTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
    );
  }
}
