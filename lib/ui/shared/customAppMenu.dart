import 'package:flutter/material.dart';
import 'package:bases_web/locator.dart';

import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/customFlatButtom.dart';


class CustomAppMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //return _TableDesktopMenu();
    return LayoutBuilder(
      builder: ( _ , constraints) {
        return (constraints.maxWidth > 520)
          ? _TableDesktopMenu()
          : _MobileMenu();
      },
    );
  }
}

class _TableDesktopMenu extends StatelessWidget {
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
            //onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),

          const SizedBox(width: 10),

          CustomFlatButtom(
            text: 'Contador provider',
            //onPressed: () => Navigator.pushNamed(context, '/provider'),
            onPressed: () => locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),

          const SizedBox(width: 10),

          CustomFlatButtom(
            text: 'Otra pagina',
            //onPressed: () => Navigator.pushNamed(context, '/abc123'),
            onPressed: () => locator<NavigationService>().navigateTo('/xyz123'),
            color: Colors.black,
          ),
        ],
      )
    );
  }
}


class _MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButtom(
            text: 'Contador Statefull',
            onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),

          const SizedBox(width: 10),

          CustomFlatButtom(
            text: 'Contador provider',
            onPressed: () => locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),

          const SizedBox(width: 10),

          CustomFlatButtom(
            text: 'Otra pagina',
            onPressed: () => locator<NavigationService>().navigateTo('/xyz123'),
            color: Colors.black,
          ),
        ],
      )
    );
  }
}