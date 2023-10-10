import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:planner/common_page.dart';
import 'package:planner/model/model_provider.dart';
import 'package:planner/ongoing_page.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<Data>(
        builder: (context, data, child) {
          return SizedBox(
            height: 50,
            width: size.width,
            child: CurvedNavigationBar(
                height: 50,
                color: Colors.transparent,
                backgroundColor: Colors.transparent,
                buttonBackgroundColor: Colors.transparent,
                animationCurve: Curves.easeInOutCubic,
                items:
                [
                  BottomBarItem(
                    selectedIndex: data.selectedIndex,
                    index: 0,
                    active: 'home_brown',
                    passive: 'home_yellow',
                  ),
                  BottomBarItem(
                    selectedIndex: data.selectedIndex,
                    index: 1,
                    active: 'list_brown',
                    passive: 'list_yellow',
                  ),
                  BottomBarItem(
                    selectedIndex: data.selectedIndex,
                    index: 2,
                    active: 'user_brown',
                    passive: 'user_yellow',
                  ),
                  BottomBarItem(
                    selectedIndex: data.selectedIndex,
                    index: 3,
                    active: 'bell_brown',
                    passive: 'bell_yellow',
                  ),
                ],

                onTap: (index) {
                  data.SelectedNav(index);
                }

            ),
          );
        }
    );
  }
}

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({Key? key,
    required this.selectedIndex,
    required this.index,
    required this.active,
    required this.passive}) : super(key: key);

  final int selectedIndex;
  final int index;
  final String active;
  final String passive;

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
        builder: (context, data, child) {
          return selectedIndex == index
              ? SizedBox(
                  width: 28,
                  height: 28,
                  child: Image.asset(
                    'assets/icons/$active.png',
              ))
              : SizedBox(
                  width: 25,
                  height: 25,
                  child: Image.asset(
                    'assets/icons/$passive.png',
              ));
        });
  }
}

