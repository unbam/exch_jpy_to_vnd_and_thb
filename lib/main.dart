import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';

import 'currency_type.dart';
import 'exchange_provider.dart';

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
                  width: 60,
                  child: DropdownButton(
                    value: currencyType.value,
                    items: const [
                      DropdownMenuItem(
                        value: CurrencyType.jpy,
                        child: Text('JPY'),
                      ),
                      DropdownMenuItem(
                        value: CurrencyType.vnd,
                        child: Text('VND'),
                      ),
                      DropdownMenuItem(
                        value: CurrencyType.thb,
                        child: Text('THB'),
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
                      } else {
                        final resultJPY = await exchange.convert(
                          amount: amount,
                          from: currencyType.value.toShortString(),
                          to: CurrencyType.jpy.toShortString(),
                        );
                        toJPY.value = resultJPY.result;
                        toVND.value = 0;
                        toTHB.value = 0;
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
              width: 150,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text('VND:'),
                      SelectableText(toVND.value.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('THB:'),
                      SelectableText(toTHB.value.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('JPY:'),
                      SelectableText(toJPY.value.toString()),
                    ],
                  ),
                ],
              ),
            ),
          ],
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
