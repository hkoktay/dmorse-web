import 'package:test/test.dart';
import 'package:dmorse_web/src/history_service.dart';

void main() {
  group("Test HistoryService", () {
    var sample1 = ["SOS", "... --- ..."];
    var sample2 = ["this", "- .... .. ..."];

    test('adding and retrieving translation', () {
      var history = HistoryService()
        ..saveToHistory(sample1)
        ..saveToHistory(sample2);
      expect(
          history.getHistory,
          equals([
            ["SOS", "... --- ..."],
            ["this", "- .... .. ..."]
          ]));
    });

    test('deletion of history', () {
      var history = HistoryService()..saveToHistory(sample1);
      history.deleteHistory();
      expect(history.getHistory.isEmpty, true);
    });
  });
}
