import 'package:fluro/fluro.dart';

import '../ui/views/counter_provider_view.dart';
import '../ui/views/counter_view.dart';
import '../ui/views/view_404.dart';

//Handlers - View/Page


// CounterView
final Handler counterHandler = Handler(
  handlerFunc: ( context, params) {
    return CounterView(base: params['base']?.first ?? '5');
  }
);

// CounterProviderView
final Handler counterProviderHandler = Handler(
  handlerFunc: (context, params) {
    //print(params);
    return CounterProviderView(base: params['q']?.first ?? '10');
  }
);

// 404
final Handler pageNotFound = Handler(
  handlerFunc: ( context , __ ) => const View404(),
);
