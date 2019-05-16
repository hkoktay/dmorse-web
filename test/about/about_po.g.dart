// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_po.dart';

// **************************************************************************
// PageObjectGenerator
// **************************************************************************

// ignore_for_file: private_collision_in_mixin_application
class $AboutPO extends AboutPO with $$AboutPO {
  PageLoaderElement $__root__;
  $AboutPO.create(PageLoaderElement currentContext)
      : $__root__ = currentContext {
    $__root__.addCheckers([]);
  }
  factory $AboutPO.lookup(PageLoaderSource source) =>
      throw "'lookup' constructor for class "
      "AboutPO is not generated and can only be used on Page Object "
      "classes that have @CheckTag annotation.";
  static String get tagName =>
      throw '"tagName" is not defined by Page Object "AboutPO". Requires @CheckTag annotation in order for "tagName" to be generated.';
  String get heading {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('AboutPO', 'heading');
    }
    final returnMe = super.heading;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('AboutPO', 'heading');
    }
    return returnMe;
  }

  String toStringDeep() => 'AboutPO\n\n${$__root__.toStringDeep()}';
}

class $$AboutPO {
  PageLoaderElement $__root__;
  PageLoaderMouse __mouse__;
  PageLoaderElement get $root => $__root__;
  PageLoaderElement get _heading {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('AboutPO', '_heading');
    }
    final element = $__root__.createElement(ByTagName("h1"), [], []);
    final returnMe = element;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('AboutPO', '_heading');
    }
    return returnMe;
  }
}
