import 'package:pageloader/pageloader.dart';

part 'about_po.g.dart';

@PageObject()
abstract class AboutPO {
  AboutPO();
  factory AboutPO.create(PageLoaderElement context) = $AboutPO.create;

  @ByTagName("h1")
  PageLoaderElement get _heading;

  String get heading => _heading.visibleText;
}