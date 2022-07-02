// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';

class FocusNavigationStyle {
  final Color primaryColor;
  final Color inactiveColor;
  final Color? shadowColor;
  final Color? barColor;
  FocusNavigationStyle({
    required this.primaryColor,
    required this.inactiveColor,
    this.shadowColor,
    this.barColor,
  });
}
