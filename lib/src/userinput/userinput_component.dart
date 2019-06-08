import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:dmorse_web/src/history_service.dart';
import 'package:dmorse_web/src/routes.dart';

import '../translator_service.dart';

@Component(
    selector: 'app-userinput',
    styleUrls: const [
      'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
      "userinput_component.css"
    ],
    templateUrl: "userinput_component.html",
    directives: const [
      coreDirectives,
      formDirectives,
      materialInputDirectives,
      // MaterialMultilineInputComponent,
      MaterialButtonComponent,
      MaterialIconComponent,
      MaterialTooltipDirective,
    ],
    providers: [ClassProvider(TranslatorService), materialProviders])
class UserinputComponent {
  /// Stores the text typed into the input element
  String inputText;

  /// Stores the translation of the input text
  String outputText;

  /// The saved history of translations
  ///
  /// The input history should be probably handled with localStorage instead of
  /// a variable.
  var savedHistory = List();

  /// This variable controls the translation direction
  ///
  /// If [translateToMorse] is true [onChange] translates an input text
  /// from text to morse code. If it's set to false by [onToggle] the input
  /// string is translated from morse code to text.
  var translateToMorse = true;

  var inputHeading = "Text";

  final Router _router;
  final TranslatorService _translatorService;
  final HistoryService _history;

  UserinputComponent(this._translatorService, this._router, this._history);

  /// Translates the input text into a morse string.
  ///
  /// Translates the input string [text] and stores the result in the
  /// variable [UserinputComonent.outputText]. Addidionally stores both [text] and
  /// [UserinputComponent.outputText] in the list [UserinputComponent.savedHistory].
  void onChange(dynamic text) {
    if (translateToMorse) {
      outputText = _translatorService.textToMorse(text);
      inputText = "";
    } else {
      outputText = _translatorService.morseToText(text);
      inputText = "";
    }
    // outputText = _translatorService.stringToMorseletters(text).join("  ");
    _history.saveToHistory([text, outputText]);
  }

  /// Clears the input and output Text fields
  void onClear() {
    inputText = "";
    outputText = null;
  }

  Future<NavigationResult> onHistory() {
    return _router.navigate(RoutePaths.history.toUrl());
  }

  /// Toggle the translation and clear input and output text
  void onToggle() {
    if (translateToMorse == true) {
      translateToMorse = false;
      inputHeading = "Morse Code";
      onClear();
    } else {
      translateToMorse = true;
      inputHeading = "Text";
      onClear();
    }
  }
}
