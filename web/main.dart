import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angularDart_dmorse/app_component.template.dart' as ng;

import 'main.template.dart' as self;

@GenerateInjector([routerProvidersHash])
final InjectorFactory appInjector = self.appInjector$Injector;

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: appInjector);
}
