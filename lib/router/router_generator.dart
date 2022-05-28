import 'package:flutter/material.dart';
import 'package:bases_web/ui/pages/counter_page.dart';


class RouterGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings){

    return MaterialPageRoute(
      builder: (_) => const CounterPage(),
    );
  }


}