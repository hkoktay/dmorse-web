// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_po.dart';

// **************************************************************************
// PageObjectGenerator
// **************************************************************************

// ignore_for_file: private_collision_in_mixin_application
class $AppPO extends AppPO with $$AppPO {
  PageLoaderElement $__root__;
  $AppPO.create(PageLoaderElement currentContext) : $__root__ = currentContext {
    $__root__.addCheckers([]);
  }
  factory $AppPO.lookup(PageLoaderSource source) =>
      throw "'lookup' constructor for class "
      "AppPO is not generated and can only be used on Page Object "
      "classes that have @CheckTag annotation.";
  static String get tagName =>
      throw '"tagName" is not defined by Page Object "AppPO". Requires @CheckTag annotation in order for "tagName" to be generated.';
  bool get header {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('AppPO', 'header');
    }
    final returnMe = super.header;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('AppPO', 'header');
    }
    return returnMe;
  }

  bool get materialDrawer {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('AppPO', 'materialDrawer');
    }
    final returnMe = super.materialDrawer;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('AppPO', 'materialDrawer');
    }
    return returnMe;
  }

  bool get materialContent {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('AppPO', 'materialContent');
    }
    final returnMe = super.materialContent;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('AppPO', 'materialContent');
    }
    return returnMe;
  }

  String toStringDeep() => 'AppPO\n\n${$__root__.toStringDeep()}';
}

class $$AppPO {
  PageLoaderElement $__root__;
  PageLoaderMouse __mouse__;
  PageLoaderElement get $root => $__root__;
  PageLoaderElement get _header {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('AppPO', '_header');
    }
    final element = $__root__.createElement(ByTagName("header"), [], []);
    final returnMe = element;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('AppPO', '_header');
    }
    return returnMe;
  }

  PageLoaderElement get _materialDrawer {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('AppPO', '_materialDrawer');
    }
    final element =
        $__root__.createElement(ByTagName("material-drawer"), [], []);
    final returnMe = element;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('AppPO', '_materialDrawer');
    }
    return returnMe;
  }

  PageLoaderElement get _materialContent {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('AppPO', '_materialContent');
    }
    final element =
        $__root__.createElement(ByTagName("material-content"), [], []);
    final returnMe = element;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('AppPO', '_materialContent');
    }
    return returnMe;
  }
}
