import 'package:flutter/cupertino.dart';

class MainScreenNotifier extends ChangeNotifier {
  static MainScreenNotifier _instance = MainScreenNotifier();
  static MainScreenNotifier get instance {
    if (_instance == null) {
      _instance = MainScreenNotifier();
    }
    return _instance;
  }

  int _pageIndex = 0;

  int get pageIndex => _pageIndex;
  set pageIndex(int newIndex) {
    _pageIndex = newIndex;
    notifyListeners();
  }
}
