import 'package:pageloader/pageloader.dart';

part 'app_po.g.dart';

@PageObject()
abstract class AppPO {
  AppPO();
  factory AppPO.create(PageLoaderElement context) = $AppPO.create;

  @ByTagName("header")
  PageLoaderElement get _header;

  @ByTagName("material-drawer")
  PageLoaderElement get _materialDrawer;

  @ByTagName("material-content")
  PageLoaderElement get _materialContent;

  bool get header => _header.exists;
  bool get materialDrawer => _materialDrawer.exists;
  bool get materialContent => _materialContent.exists;
}
