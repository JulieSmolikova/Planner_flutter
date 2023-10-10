import 'package:flutter/material.dart';

import '../common_page.dart';
import '../ongoing_page.dart';

class Data extends ChangeNotifier {

  int selectedIndex = 0;
  final index = ();

  void SelectedNav(int index) {
    if (selectedIndex == index) return;
    selectedIndex = index;
    notifyListeners();
  }

  //String text = '';

  //final TextEditingController controller = TextEditingController();

  // void changeText() {
  //   text = controller.text;
  //   notifyListeners();
  // }

}