@TestOn('browser')
import 'package:angular/angular.dart';
import 'package:angular_router/testing.dart';
import 'package:angular_test/angular_test.dart';
import 'package:pageloader/html.dart';
import 'package:test/test.dart';
import 'package:angularDart_dmorse/src/about/about_component.dart';
import 'package:angularDart_dmorse/src/about/about_component.template.dart'
    as ng;
import 'about_po.dart';

import 'about_test.template.dart' as self;

@GenerateInjector(routerProvidersTest)
final InjectorFactory rootInjector = self.rootInjector$Injector;

void main() {
  final testBed = NgTestBed.forComponent<AboutComponent>(
      ng.AboutComponentNgFactory,
      rootInjector: rootInjector);
  NgTestFixture<AboutComponent> fixture;
  AboutPO aboutPO;

  setUp(() async {
    fixture = await testBed.create();
    final context =
        HtmlPageLoaderElement.createFromElement(fixture.rootElement);
    aboutPO = AboutPO.create(context);
  });

  tearDown(disposeAnyRunningTest);

  test('Text of heading', () {
    expect(aboutPO.heading, "About");
  });
}
