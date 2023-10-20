import 'package:flutter/material.dart';
import '../common_page.dart';
import '../ongoing_page.dart';

class Data extends ChangeNotifier {

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

 //  List months_data = [
 //    'January', '31',
 //    'February', '28',
 //    'March', '31',
 //    'April', '30',
 //    'May', '31',
 //    'June', '30',
 //    'July', '31',
 //    'August', '31',
 //    'September', '30',
 //    'October', '31',
 //    'November', '30',
 //    'December', '31',
 // ];

  // List months_data = [
  //   '31',
  //   '28',
  //   '31',
  //   '30',
  //   '31',
  //   '30',
  //   '31',
  //   '31',
  //   '30',
  //   '31',
  //   '30',
  //   '31',
  // ];

  int isSelectedMonth = 0;
  void SelectedMonth(int index) {
    isSelectedMonth = index;
    notifyListeners();
  }

  //int amountData = 0;
  int isSelectedData = 0;
  void SelectedData(int index) {
    isSelectedData = index;
    // if (isSelectedMonth == 0 || isSelectedMonth == 2 || isSelectedMonth == 4 || isSelectedMonth == 6 || isSelectedMonth == 7 || isSelectedMonth == 9 || isSelectedMonth == 11)
    //   amountData = 31;
    // if (isSelectedMonth == 1)
    //   amountData = 28;
    // if (isSelectedMonth == 3 || isSelectedMonth == 5 || isSelectedMonth == 8 || isSelectedMonth == 9 || isSelectedMonth == 10)
    //   amountData = 31;
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