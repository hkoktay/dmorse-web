import 'package:test/test.dart';
import 'package:angularDart_dmorse/src/translator_service.dart';

void main() {
  var translator = TranslatorService();
  group("stringToMorseletters", () {
    

    test("Test simple string", () {
      var word = "SOS";
      expect(translator.stringToMorseletters(word), equals(["...", "---", "..."]));
    });
    test("Test empty string argument", () {
      var word = "";
      expect(translator.stringToMorseletters(word), equals([]));
    });
    test("Test whitespace only argument", () {
      var word = "    ";
      expect(translator.stringToMorseletters(word), equals([]));
    });
  });

  group("morsestringToLetters", () {
    test("Test simple string argument", () {
      var morseStr = "... --- ...";
      expect(translator.morsestringToLetters(morseStr), equals(["S", "O", "S"]));
    });
    test("Test with no matching morse code", () {
      var morseStr = "... 000 ...";
      expect(translator.morsestringToLetters(morseStr), equals(["S", "S"]));
    });
    test("Test with empty string", () {
      var morseStr = "";
      expect(translator.morsestringToLetters(morseStr), equals([]));
    });
  });

  group('wordstringToMorselist', () {
    test("Test example string", () {
      var str = "SOS this is an emergency.";
      expect(translator.wordstringToMorselist(str), [
        ["...", "---", "..."],
        ["-", "....", "..", "..."],
        ["..", "..."],
        [".-", "-."],
        [".", "--", ".", ".-.", "--.", ".", "-.", "-.-.", "-.--", ".-.-.-"],
      ]);
    });
    test("Test empty string", () {
      var str = "";
      expect(translator.wordstringToMorselist(str), []);
    });
    test("Test string with non-valid characters", () {
      var str = "über";
      expect(translator.wordstringToMorselist(str), [
        ["-...", ".", ".-."]
      ]);
    });
  });

  group('morsestringToWordlist', () {
    test("Test example string", () {
      var str = "... --- ...  - .... .. ...  .. ...  .- -.  . -- . .-. --. . -. -.-. -.-- .-.-.-";
      expect(translator.morsestringToWordlist(str), [
        ["S", "O", "S"],
        ["T", "H", "I", "S"],
        ["I", "S"],
        ["A", "N"],
        ["E", "M", "E", "R", "G", "E", "N", "C", "Y", "."]
      ]);
    });
    test("Test empty string", () {
      var str = "";
      expect(translator.morsestringToWordlist(str), []);
    });
    test("Test string with non-valid characters", () {
      var str = "... --- ...  ------------";
      expect(translator.morsestringToWordlist(str), [
        ["S", "O", "S"], []
      ]);
    });
  });
}
