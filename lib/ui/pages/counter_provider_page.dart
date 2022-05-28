import 'package:bases_web/ui/shared/customAppMenu.dart';
import 'package:bases_web/ui/shared/customFlatButtom.dart';
import 'package:flutter/material.dart';

class CounterProvider extends StatefulWidget {
  const CounterProvider({Key? key}) : super(key: key);

  @override
  State<CounterProvider> createState() => _CounterProviderState();
}

class _CounterProviderState extends State<CounterProvider> {

  int counter = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          CustomAppMenu(),

          Spacer(),

          Text('Contador Provider', style: TextStyle(fontSize: 20)),

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
          Spacer(),
        ],
      ),
    );
  }
}