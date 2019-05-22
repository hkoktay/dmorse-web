import 'morse_alphabet.dart';

class TranslatorService {

  /// Separates morse letters inside a morse word
  var letterSeparator = " ";

  /// Separates morse words in a string with morse code.
  var wordSeparator = "   ";

  /// Converts a single word to a morse code string
  String textwordToMorseword(String word) {
    if (word.isEmpty) {
      return "";
    } else {
      return word.split("").map((letter) {
        var translation = letterMorse[letter.toUpperCase()];
        if (translation != null) {
          return translation;
        } else {
          return "*";
        }
      }).join(letterSeparator);
    }
  }

  /// Converts a single word made of morse code into a text string
  String morsewordToTextword(String word) {
    if (word.isEmpty) {
      return "";
    } else {
      return word.split(letterSeparator).map((letter) {
        var translation = morseLetter[letter];
        if (translation != null) {
          return translation;
        } else {
          return "*";
        }
      }).join("");
    }
  }

  /// Converts a text string into a morse code string
  String textToMorse(String text) {
    return text
        .split(" ")
        .map((word) => textwordToMorseword(word))
        .join(wordSeparator);
  }

  /// Converts a morse code string into a text string
  String morseToText(String morse) {
    return morse
        .split(wordSeparator)
        .map((word) => morsewordToTextword(word))
        .join(" ");
  }
}
