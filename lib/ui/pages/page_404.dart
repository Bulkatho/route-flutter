

import 'dart:ui';

import 'package:bases_web/ui/shared/customFlatButtom.dart';
import 'package:flutter/material.dart';


class Page404 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('404', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),

            SizedBox(height: 10),

            Text('No se encontró la página', style: TextStyle(fontSize: 20)),

            CustomFlatButtom(
              text: 'Regresar', 
              onPressed: () => Navigator.pushNamed(context, '/stateful'),
            )
          ],
        ),
      ),
    );
  }
}