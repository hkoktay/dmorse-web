import 'package:pageloader/pageloader.dart';

part 'userinput_po.g.dart';

@PageObject()
abstract class UserinputPO {
  UserinputPO();
  factory UserinputPO.create(PageLoaderElement context) = $UserinputPO.create;

  @ByClass("input-box")
  PageLoaderElement get _inputBox;

  @ByClass("output-box")
  PageLoaderElement get _outputBox;

  bool get inputBox => _inputBox.exists;
  bool get outputBox => _outputBox.exists;
}