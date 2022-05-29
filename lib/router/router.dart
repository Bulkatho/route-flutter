import 'package:bases_web/router/route_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {

  static final FluroRouter router = FluroRouter();

  static void configureRoutes(){

    /*
    * /home
    * /stateful
    * /provider
    */
    
    //Stateful Routes.
    router.define( '/', handler: counterHandler, transitionType: TransitionType.fadeIn );
    router.define( '/stateful', handler: counterHandler,  transitionType: TransitionType.fadeIn );
    router.define( '/stateful/:base', handler: counterHandler, transitionType: TransitionType.fadeIn );
    
    //Provider Routes.
    router.define('/provider',handler: counterProviderHandler, transitionType: TransitionType.fadeIn );
    
    //404 - page not found.
    router.notFoundHandler = pageNotFound;

  }
}