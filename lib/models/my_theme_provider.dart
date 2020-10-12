import 'package:flutter/material.dart';

class MyThemeModel extends ChangeNotifier {
  bool _isLisghtTheme = true;
  void changeTheme() {
    _isLisghtTheme = !_isLisghtTheme;
    notifyListeners();
  }

  bool get isLightTheme => _isLisghtTheme;
}
