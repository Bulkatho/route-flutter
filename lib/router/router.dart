import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {

  static final FluroRouter router = FluroRouter();

  static void configureRoutes(){

    /*
    * /home
    * /stateful
    * /provider
    */
    
    router.define(
      '/', 
      handler: _counterHandler, 
      transitionType: TransitionType.fadeIn
    );

    router.define(
      '/stateful',
      handler: _counterHandler, 
      transitionType: TransitionType.fadeIn
    );

    router.define(
      '/stateful/:base',
      handler: _counterHandler, 
      transitionType: TransitionType.fadeIn
    );

    router.define(
      '/provider',
      handler: _counterProviderHandler, 
      transitionType: TransitionType.fadeIn
    );

    router.notFoundHandler = _pageNotFound;

  }

  //Handlers - View/Page

  // CounterView
  static Handler _counterHandler = Handler(
    handlerFunc: ( context, params) {
      return CounterView(base: params['base']?[0] ?? '5');
    }
  );

  // CounterProviderView
  static Handler _counterProviderHandler = Handler(
    handlerFunc: (context, parameters) => CounterProviderView(),
  );

  // 404
  static Handler _pageNotFound = Handler(
    handlerFunc: ( context , __ ) => View404(),
  );

}