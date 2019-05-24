@TestOn('browser')
import 'package:angular/angular.dart';
import 'package:angular_router/testing.dart';
import 'package:angular_test/angular_test.dart';
import 'package:pageloader/html.dart';
import 'package:test/test.dart';
import 'package:dmorse_web/src/history/history_component.dart';
import 'package:dmorse_web/src/history/history_component.template.dart'
    as ng;
import 'package:dmorse_web/src/history_service.dart';
import 'history_po.dart';

import 'history_test.template.dart' as self;


@GenerateInjector([routerProvidersTest, ClassProvider(HistoryService)])
final InjectorFactory rootInjector = self.rootInjector$Injector;

void main() {
  final testBed = NgTestBed.forComponent<HistoryComponent>(
      ng.HistoryComponentNgFactory,
      rootInjector: rootInjector);
  NgTestFixture<HistoryComponent> fixture;
  HistoryPO historyPO;

  setUp(() async {
    fixture = await testBed.create();
    final context =
        HtmlPageLoaderElement.createFromElement(fixture.rootElement);
    historyPO = HistoryPO.create(context);
  });

  tearDown(disposeAnyRunningTest);

  test('test if the input and output box exist', () {
    expect(historyPO.heading, "History");
  });
}
