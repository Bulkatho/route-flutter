import 'package:bases_web/ui/shared/customAppMenu.dart';
import 'package:bases_web/ui/shared/customFlatButtom.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {

  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        //CustomAppMenu(),

        const Spacer(),

        const Text('Contador Stateful', style: TextStyle(fontSize: 20)),

        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Contador: $counter',
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButtom(
              text: 'Incrementar', 
              onPressed: () => setState(() => counter++),
            ),
            CustomFlatButtom(
              text: 'Decrementar',
              onPressed: () => setState(() => counter--),
            ),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}