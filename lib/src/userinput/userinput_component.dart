import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/material_input/material_input.dart';

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
    ],
    providers: [ClassProvider(TranslatorService), materialProviders])
class UserinputComponent {
  /// Stores the text typed into the input element
  String inputText;

  /// Stores the translation of the input text
  String outputText;

  /// Used to toggle the history content-box
  var history = false;

  /// The saved history of translations
  ///
  /// The input history should be probably handled with localStorage instead of
  /// a variable.
  var savedHistory = List();

  /// This is used to disable the history related buttons
  var isDisabled = true;

  /// This variable controls the translation direction
  ///
  /// If [translateToMorse] is true [onChange] translates an input text
  /// from text to morse code. If it's set to false by [onToggle] the input
  /// string is translated from morse code to text.
  var translateToMorse = true;

  var toggleButtonText = "Text to Morse";

  TranslatorService _translatorService;

  UserinputComponent(this._translatorService);

  /// Translates the input text into a morse string.
  ///
  /// Translates the input string [text] and stores the result in the
  /// variable [UserinputComonent.outputText]. Addidionally stores both [text] and
  /// [UserinputComponent.outputText] in the list [UserinputComponent.savedHistory].
  void onChange(dynamic text) {
    if (translateToMorse) {
      outputText = _translatorService.textToMorse(text);
    } else {
      outputText = _translatorService.morseToText(text);
    }
    // outputText = _translatorService.stringToMorseletters(text).join("  ");
    savedHistory.add([text, outputText]);
    isDisabled = false;
  }

  /// Clears the input and output Text fields
  void onClear() {
    inputText = "";
    outputText = null;
  }

  /// Toogle the history content of translated texts
  void onHistory() {
    if (history == true) {
      history = false;
    } else {
      history = true;
    }
  }

  /// Clears the translation history
  void onClearHistory() {
    savedHistory.clear();
    isDisabled = true;
  }

  /// Toggle the translation and clear input and output text
  void onToggle() {
    if (translateToMorse == true) {
      translateToMorse = false;
      toggleButtonText = "Morse to Text";
      onClear();
    } else {
      translateToMorse = true;
      toggleButtonText = "Text to Morse";
      onClear();
    }
  }
}
