import 'dart:html';

class HistoryService {
  var _storage = window.localStorage;

  void saveToHistory(List translation) {
    _storage[translation[0]] = translation[1];
  }

  void deleteHistory() {
    _storage.clear();
  }

  List get getHistory {
    if (_storage.isEmpty) {
      return [];
    } else {
      return _storage.entries.map((e) {
        return [e.key, e.value];
      }).toList();
    }
  }
}
