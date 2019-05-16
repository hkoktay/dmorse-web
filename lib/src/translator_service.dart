import 'morse_alphabet.dart';

class TranslatorService {

  /// A dash is equal to three dots.
  final dashSpace = 3;
  /// The space between the signals forming the same letter is equal to one dot. 
  final signalSpace = 1;
  /// The space between two letters is equal to three dots. 
  final letterSpace = 3;
  /// The space between two words is equal to seven dots.
  final wordSpace = 7;

  /// Converts a string to a alist of morse code strings
  List<String> stringToMorseletters(String w) {
    var result = List<String>();
    for (var letter in w.split("")) {
      var morseLetter = letterMorse[letter.toUpperCase()];
      if (morseLetter != null) {
        result.add(morseLetter);
      }
    }
    return result;
  }

  /// Converts a morse code string into a list of translated letters
  List<String> morsestringToLetters(String w) {
    var result = List<String>();
    for (var letter in w.split(" ")) {
      var l = morseLetter[letter];
      if (l != null) {
        result.add(l);
      }
    }
    return result;
  }

  /// Converts a string into a list of morse strings
  List<List<String>> wordstringToMorselist(String str) {
    if (str.isEmpty) {
      return [];
    } else {
      var result = List<List<String>>();
      for (var word in str.split(" ")) {
        result.add(stringToMorseletters(word));
      }
      return result;
    }
  }

// Converts a string of morse code into a translated list of words
//
// This function assumes that words consisting of morse code are
// seperated with two whitespace characters.
  List<List<String>> morsestringToWordlist(String str) {
    if (str.isEmpty) {
      return [];
    } else {
      var result = List<List<String>>();
      for (var word in str.split("  ")) {
        result.add(morsestringToLetters(word));
      }
      return result;
    }
  }
}
