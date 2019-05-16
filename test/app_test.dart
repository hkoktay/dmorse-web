@TestOn('browser')
import 'package:angular/angular.dart';
import 'package:angular_router/testing.dart';
import 'package:angular_test/angular_test.dart';
import 'package:pageloader/html.dart';
import 'package:test/test.dart';
import 'package:angularDart_dmorse/app_component.dart';
import 'package:angularDart_dmorse/app_component.template.dart' as ng;
import 'app_po.dart';

import 'app_test.template.dart' as self;

@GenerateInjector(routerProvidersTest)
final InjectorFactory rootInjector = self.rootInjector$Injector;

void main() {
  final testBed =
      NgTestBed.forComponent<AppComponent>(ng.AppComponentNgFactory, rootInjector: rootInjector);
  NgTestFixture<AppComponent> fixture;
  AppPO appPO;

  setUp(() async {
    fixture = await testBed.create();
    final context =
        HtmlPageLoaderElement.createFromElement(fixture.rootElement);
    appPO = AppPO.create(context);
  });

  tearDown(disposeAnyRunningTest);

  test('test if main tags exist', () {
    expect(appPO.header, true);
    expect(appPO.materialDrawer, true);
    expect(appPO.materialContent, true);
  });
}
