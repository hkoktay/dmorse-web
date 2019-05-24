class HistoryService {
  var _savedHistory = List();

  void saveToHistory(List translation) {
    _savedHistory.add(translation);
  }

  void deleteHistory() {
    _savedHistory.clear();
  }

  get getHistory => _savedHistory;
}