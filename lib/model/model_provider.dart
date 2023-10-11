import 'package:flutter/material.dart';
import '../common_page.dart';
import '../ongoing_page.dart';
import '../start_page.dart';

class Data extends ChangeNotifier {

  final List pages = [
    //const StartPage(),
    const CommonPage(),
    const OngoingPage(),
  ];

  final List icons = [
    //Icons.circle_outlined,
    Icons.home_outlined,
    Icons.checklist_rtl,
    //Icons.manage_accounts,
    //Icons.mark_email_unread_outlined,
  ];

  final List iconsActive = [
    'home_brown.png',
    'user_brown.png',
  ];

  final List iconsPassive = [
    'home_yellow.png',
    'user_yellow.png',
  ];

  final PageController mainPageController = PageController(initialPage: 0);

  int activePage = 0;

  void changePage(int index) {
    activePage = index;
    notifyListeners();
  }

  // int selectedIndex = 0;
  // final index = ();
  //
  // void SelectedNav(int index) {
  //   if (selectedIndex == index) return;
  //   selectedIndex = index;
  //   notifyListeners();
  // }



  //String text = '';

  //final TextEditingController controller = TextEditingController();

  // void changeText() {
  //   text = controller.text;
  //   notifyListeners();
  // }

}