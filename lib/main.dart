import 'package:flutter/material.dart';
import 'package:bases_web/locator.dart';

import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/router/route_generator.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'package:bases_web/router/router.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RutasApp',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      //onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings), //Se puede obviar - igual que en JS

      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: ( _, child ) {
        return MainLayoutPage(
          child: child ?? const CircularProgressIndicator(),
        );
      }
    );
  }
}