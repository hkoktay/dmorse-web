import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'about/about_component.template.dart' as about_template;
import 'userinput/userinput_component.template.dart' as userinput_template;
import 'history/history_component.template.dart' as history_template;

export 'route_paths.dart';

class Routes {
  static final about = RouteDefinition(
    routePath: RoutePaths.about,
    component: about_template.AboutComponentNgFactory,
  );

  static final history = RouteDefinition(
    routePath: RoutePaths.history,
    component: history_template.HistoryComponentNgFactory,
  );

  static final userinput = RouteDefinition(
    routePath: RoutePaths.userinput,
    component: userinput_template.UserinputComponentNgFactory,
    useAsDefault: true,
  );

  static final all = <RouteDefinition>[
    about,
    userinput,
    history,
  ];
}
