import 'package:bases_web/providers/counter_provider.dart';
import 'package:bases_web/ui/shared/customAppMenu.dart';
import 'package:bases_web/ui/shared/customFlatButtom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProviderPage extends StatelessWidget {
  const CounterProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: _CounterProviderPageBody(),
    );
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final counterProvider = Provider.of<CounterProvider>(context);

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
                'Contador: ${counterProvider.counter}',
                style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButtom(
                text: 'Incrementar', 
                //onPressed: () => setState(() => counter++),
                onPressed: () => counterProvider.increment(),
              ),
              CustomFlatButtom(
                text: 'Decrementar',
                //onPressed: () => setState(() => counter--),
                onPressed: () => counterProvider.decrement(),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}