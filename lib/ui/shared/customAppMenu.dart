import 'package:flutter/material.dart';
import 'package:bases_web/ui/shared/customFlatButtom.dart';

class CustomAppMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //height: 50,
      //color: Colors.red,
      child: Row(
        children: [
          CustomFlatButtom(
            text: 'Contador Statefull',
            onPressed: () => Navigator.pushNamed(context, '/stateful'),
            color: Colors.black,
          ),

          SizedBox(width: 10),

          CustomFlatButtom(
            text: 'Contador Provider',
            onPressed: () => Navigator.pushNamed(context, '/provider'),
            color: Colors.black,
          ),

          SizedBox(width: 10),

          CustomFlatButtom(
            text: 'Otra pagina',
            onPressed: () => Navigator.pushNamed(context, '/abc123'),
            color: Colors.black,
          ),
        ],
      )
    );
  }
}