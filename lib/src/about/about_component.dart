import 'package:angular/angular.dart';
// import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'app-about',
  styleUrls: const [
    'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
    "about_component.css",
    ],
  templateUrl: "about_component.html",
  directives: const [
    coreDirectives,
  ],
)

class AboutComponent {}
