import 'package:flutter/material.dart';

extension StringExtension on String{
  String getPrefix() => this[0];
}

extension NavigateExtension on BuildContext {
  Future navigateNextScreen(Widget nextScreen) =>
      Navigator.of(this).push(MaterialPageRoute(builder: (_) => nextScreen));
}
