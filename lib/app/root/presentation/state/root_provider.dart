import 'package:flutter/material.dart';

class RootProvider extends ChangeNotifier {
  PageController pageController = PageController(initialPage: 0);
  int index = 0;
  moveToPage(value) {
    pageController.jumpToPage(
      value,
    );
    index = value;

    notifyListeners();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
