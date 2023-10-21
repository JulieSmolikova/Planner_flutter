import 'package:flutter/material.dart';
import '../common_page.dart';
import '../ongoing_page.dart';

class Data extends ChangeNotifier {

  //Navigation_Bar (MainPage, BottomNavBar)
  final List pages = [
    const CommonPage(),
    const OngoingPage(),
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


  //Ongoing_Page
    // Months__ListWheelScrollView
  List months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  int isSelectedMonth = 0;
  void SelectedMonth(int index) {
    isSelectedMonth = index;
    notifyListeners();
  }

  int isSelectedData = 0;
  void SelectedData(int index) {
    isSelectedData = index;
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