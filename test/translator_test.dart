import 'package:test/test.dart';
import 'package:dmorse_web/src/translator_service.dart';

void main() {
  var translator = TranslatorService();
  group("test textwordToMorseword", () {

    test("with simple string", () {
      var word = "SOS";
      expect(translator.textwordToMorseword(word), equals("... --- ..."));
    });
    test("with empty string argument", () {
      var word = "";
      expect(translator.textwordToMorseword(word), equals(""));
    });
    test('with letter not represented in morse code', () {
      var word = "S^S";
      expect(translator.textToMorse(word), equals("... * ..."));
    });
  });

  group("morsewordToTextword", () {
    test("Test simple string argument", () {
      var morseStr = "... --- ...";
      expect(translator.morsewordToTextword(morseStr), equals("SOS"));
    });
    test("Test with no matching morse code", () {
      var morseStr = "... 000 ...";
      expect(translator.morsewordToTextword(morseStr), equals("S*S"));
    });
    test("Test with empty string", () {
      var morseStr = "";
      expect(translator.morsewordToTextword(morseStr), equals(""));
    });
  });

  group('textToMorse', () {
    test("Test example string", () {
      var str = "SOS this is an emergency.";
      expect(translator.textToMorse(str),
       equals("... --- ...   - .... .. ...   .. ...   .- -.   . -- . .-. --. . -. -.-. -.-- .-.-.-"));
    });
    test("Test empty string", () {
      var str = "";
      expect(translator.textToMorse(str), equals(""));
    });
    test("Test string with non-valid characters", () {
      var str = "über";
      expect(translator.textToMorse(str), equals("* -... . .-."));
    });
  });

  group('morseToText', () {
    test("Test example string", () {
      var str = "... --- ...   - .... .. ...   .. ...   .- -.   . -- . .-. --. . -. -.-. -.-- .-.-.-";
      expect(translator.morseToText(str), equals("SOS THIS IS AN EMERGENCY."));
    });
    test("Test empty string", () {
      var str = "";
      expect(translator.morseToText(str), equals(""));
    });
    test("Test string with non-valid characters", () {
      var str = "... --- ...   ------------";
      expect(translator.morseToText(str), equals("SOS *"));
    });
  });
}
