import 'package:pageloader/pageloader.dart';

part 'history_po.g.dart';

@PageObject()
abstract class HistoryPO {
  HistoryPO();
  factory HistoryPO.create(PageLoaderElement context) = $HistoryPO.create;

  @ByTagName("h2")
  PageLoaderElement get _heading;

  String get heading => _heading.visibleText;
}