// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_po.dart';

// **************************************************************************
// PageObjectGenerator
// **************************************************************************

// ignore_for_file: private_collision_in_mixin_application
class $HistoryPO extends HistoryPO with $$HistoryPO {
  PageLoaderElement $__root__;
  $HistoryPO.create(PageLoaderElement currentContext)
      : $__root__ = currentContext {
    $__root__.addCheckers([]);
  }
  factory $HistoryPO.lookup(PageLoaderSource source) =>
      throw "'lookup' constructor for class "
      "HistoryPO is not generated and can only be used on Page Object "
      "classes that have @CheckTag annotation.";
  static String get tagName =>
      throw '"tagName" is not defined by Page Object "HistoryPO". Requires @CheckTag annotation in order for "tagName" to be generated.';
  String get heading {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('HistoryPO', 'heading');
    }
    final returnMe = super.heading;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('HistoryPO', 'heading');
    }
    return returnMe;
  }

  String toStringDeep() => 'HistoryPO\n\n${$__root__.toStringDeep()}';
}

class $$HistoryPO {
  PageLoaderElement $__root__;
  PageLoaderMouse __mouse__;
  PageLoaderElement get $root => $__root__;
  PageLoaderElement get _heading {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('HistoryPO', '_heading');
    }
    final element = $__root__.createElement(ByTagName("h2"), [], []);
    final returnMe = element;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('HistoryPO', '_heading');
    }
    return returnMe;
  }
}
