import 'package:bases_web/ui/shared/customFlatButtom.dart';
import 'package:flutter/material.dart';

class View404 extends StatelessWidget {
  const View404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('404', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),

          const SizedBox(height: 10),

          const Text('No se encontró la página', style: TextStyle(fontSize: 20)),

          CustomFlatButtom(
            text: 'Regresar', 
            onPressed: () => Navigator.pushNamed(context, '/stateful'),
          )
        ],
      ),
    );
  }
}