// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userinput_po.dart';

// **************************************************************************
// PageObjectGenerator
// **************************************************************************

// ignore_for_file: private_collision_in_mixin_application
class $UserinputPO extends UserinputPO with $$UserinputPO {
  PageLoaderElement $__root__;
  $UserinputPO.create(PageLoaderElement currentContext)
      : $__root__ = currentContext {
    $__root__.addCheckers([]);
  }
  factory $UserinputPO.lookup(PageLoaderSource source) =>
      throw "'lookup' constructor for class "
      "UserinputPO is not generated and can only be used on Page Object "
      "classes that have @CheckTag annotation.";
  static String get tagName =>
      throw '"tagName" is not defined by Page Object "UserinputPO". Requires @CheckTag annotation in order for "tagName" to be generated.';
  bool get inputBox {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('UserinputPO', 'inputBox');
    }
    final returnMe = super.inputBox;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('UserinputPO', 'inputBox');
    }
    return returnMe;
  }

  bool get outputBox {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('UserinputPO', 'outputBox');
    }
    final returnMe = super.outputBox;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('UserinputPO', 'outputBox');
    }
    return returnMe;
  }

  String toStringDeep() => 'UserinputPO\n\n${$__root__.toStringDeep()}';
}

class $$UserinputPO {
  PageLoaderElement $__root__;
  PageLoaderMouse __mouse__;
  PageLoaderElement get $root => $__root__;
  PageLoaderElement get _inputBox {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('UserinputPO', '_inputBox');
    }
    final element = $__root__.createElement(ByClass("input-box"), [], []);
    final returnMe = element;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('UserinputPO', '_inputBox');
    }
    return returnMe;
  }

  PageLoaderElement get _outputBox {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('UserinputPO', '_outputBox');
    }
    final element = $__root__.createElement(ByClass("output-box"), [], []);
    final returnMe = element;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('UserinputPO', '_outputBox');
    }
    return returnMe;
  }
}
