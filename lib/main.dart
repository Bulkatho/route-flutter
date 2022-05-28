import 'package:bases_web/router/router_generator.dart';
import 'package:bases_web/ui/pages/counter_page.dart';
import 'package:bases_web/ui/pages/counter_provider_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RutasApp',
      debugShowCheckedModeBanner: false,
      initialRoute: '/stateful',
      /*routes: {
        '/stateful': ( _ ) => const CounterPage(),
        '/provider': ( _ ) => const CounterProvider(),
      },*/
      onGenerateRoute: (settings) => RouterGenerator.generateRoute(settings), //Se puede obviar - igual que en JS
    );
  }
}