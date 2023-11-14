import 'package:flutter/material.dart';

class ContextUtils {
  /// Hides keyboard by finding the primary focused [FocusNode] or
  /// [FocusScopeNode] then unfocusing it. Take note that this triggers
  /// [State.didChangeDependencies] on specific UIs which holds the node.
  
  static void hideKeyboard(context) {
    if (context == null) return;

    FocusManager.instance.primaryFocus?.unfocus();
  }
}