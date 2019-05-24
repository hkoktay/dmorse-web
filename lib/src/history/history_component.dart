import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';

import '../routes.dart';
import '../history_service.dart';

@Component(
    selector: "app-history",
    styleUrls: const [
      'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
      "history_component.css"
    ],
    templateUrl: "history_component.html",
    directives: const [
      coreDirectives,
      MaterialButtonComponent,
      MaterialIconComponent,
      MaterialTooltipDirective,
      MaterialListComponent,
      MaterialListItemComponent],
    providers: materialProviders)
class HistoryComponent {
  final Router _router;
  final HistoryService _history;

  HistoryComponent(this._router, this._history);

  Future<NavigationResult> onBack() {
    return _router.navigate(RoutePaths.userinput.toUrl());
  }

  // Deletes history
  void onDelete() {
    _history.deleteHistory();
  }

  List getHistory() {
    return _history.getHistory;
  }
}
