@TestOn('browser')
import 'package:angular/angular.dart';
import 'package:angular_router/testing.dart';
import 'package:angular_test/angular_test.dart';
import 'package:pageloader/html.dart';
import 'package:test/test.dart';
import 'package:dmorse_web/src/userinput/userinput_component.dart';
import 'package:dmorse_web/src/userinput/userinput_component.template.dart'
    as ng;
import 'userinput_po.dart';

import 'userinput_test.template.dart' as self;

@GenerateInjector(routerProvidersTest)
final InjectorFactory rootInjector = self.rootInjector$Injector;

void main() {
  final testBed = NgTestBed.forComponent<UserinputComponent>(
      ng.UserinputComponentNgFactory,
      rootInjector: rootInjector);
  NgTestFixture<UserinputComponent> fixture;
  UserinputPO userInputPO;

  setUp(() async {
    fixture = await testBed.create();
    final context =
        HtmlPageLoaderElement.createFromElement(fixture.rootElement);
    userInputPO = UserinputPO.create(context);
  });

  tearDown(disposeAnyRunningTest);

  test('test if the input and output box exist', () {
    expect(userInputPO.inputBox, true);
    // The output box is false because it is first rendered when the user
    // types in text and returns enter.
    expect(userInputPO.outputBox, false);
  });
}
