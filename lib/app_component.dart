import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';

import 'src/userinput/userinput_component.dart';
import 'src/history/history_component.dart';
import 'src/history_service.dart';
import 'src/routes.dart';

@Component(
    selector: 'my-app',
    styleUrls: const [
      'package:angular_components/app_layout/layout.scss.css',
      'app_component.css'
    ],
    templateUrl: 'app_component.html',
    directives: const [
      coreDirectives,
      routerDirectives,
      MaterialButtonComponent,
      MaterialIconComponent,
      MaterialToggleComponent,
      MaterialTemporaryDrawerComponent,
      MaterialListComponent,
      MaterialListItemComponent,
      MaterialProgressComponent,
      UserinputComponent,
      HistoryComponent,
    ],
    exports: [RoutePaths, Routes],
    providers: [ClassProvider(HistoryService)])
class AppComponent{
  // The variable where we save the beforeinstallprompt event
  var deferredPrompt;
  // Variable to hide or display the installation prompt
  var prompt = false;

  // Listen for the beforeinstallpromt event
  // 
  // Safe the event in the deferredPrompt variable, which
  // should activate the install button by setting the prompt
  // variable to true.
  @HostListener("beforeinstallprompt")
  void onbeforeinstallprompt(e) {
    e.preventDefault();
    deferredPrompt = e;
    prompt = true;
  }

  // Activate the installation prompt
  void addToHomeScreen() {
    prompt = false;
    deferredPrompt.prompt();
    deferredPrompt.userChoice.then((choiceResult) {
      if (choiceResult.outcome == "accepted") {
        print("User accepted");
      } else {
        print("User declinded.");
      }
      this.deferredPrompt = null;
    });
  }
}
