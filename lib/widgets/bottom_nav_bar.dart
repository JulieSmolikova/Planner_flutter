import 'package:flutter/material.dart';
import 'package:planner/model/model_provider.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<Data>(builder: (context, data, _){
      return Positioned(
        bottom: 10,
        child: Container(
          height: 30,
          width: size.width,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              data.pages.length, (index) =>
                GestureDetector(
                  onTap: (){
                    data.mainPageController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn);
                  },
                  child: Center(
                    child: Container(
                      height: 30,
                      width: 30,
                      color: Colors.transparent,
                      child: Image.asset(
                        data.activePage == index
                            ? ('assets/icons/${data.iconsActive[index]}')
                            : ('assets/icons/${data.iconsPassive[index]}')

                        // data.icons[index],
                        // color: data.activePage == index
                        //   ? KBrown
                        //   : KYellow,
                        // size: 30,

                      ),
                    ),
                  ),
                )
              ),

          ),
        ),
      );

    });
  }
}


// class BottomNavBar extends StatelessWidget {
//   const BottomNavBar({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Consumer<Data>(
//         builder: (context, data, child) {
//           return SizedBox(
//             height: 50,
//             width: size.width,
//             child: CurvedNavigationBar(
//                 height: 50,
//                 color: Colors.transparent,
//                 backgroundColor: Colors.transparent,
//                 buttonBackgroundColor: Colors.transparent,
//                 animationCurve: Curves.easeInOutCubic,
//                 items:
//                 [
//                   BottomBarItem(
//                     selectedIndex: data.selectedIndex,
//                     index: 0,
//                     active: 'home_brown',
//                     passive: 'home_yellow',
//                   ),
//                   BottomBarItem(
//                     selectedIndex: data.selectedIndex,
//                     index: 1,
//                     active: 'list_brown',
//                     passive: 'list_yellow',
//                   ),
//                   BottomBarItem(
//                     selectedIndex: data.selectedIndex,
//                     index: 2,
//                     active: 'user_brown',
//                     passive: 'user_yellow',
//                   ),
//                   BottomBarItem(
//                     selectedIndex: data.selectedIndex,
//                     index: 3,
//                     active: 'bell_brown',
//                     passive: 'bell_yellow',
//                   ),
//                 ],
//
//                 onTap: (index) {
//                   data.SelectedNav(index);
//                 }
//
//             ),
//           );
//         }
//     );
//   }
// }
//
// class BottomBarItem extends StatelessWidget {
//   const BottomBarItem({Key? key,
//     required this.selectedIndex,
//     required this.index,
//     required this.active,
//     required this.passive}) : super(key: key);
//
//   final int selectedIndex;
//   final int index;
//   final String active;
//   final String passive;
//
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<Data>(
//         builder: (context, data, child) {
//           return selectedIndex == index
//               ? SizedBox(
//                   width: 28,
//                   height: 28,
//                   child: Image.asset(
//                     'assets/icons/$active.png',
//               ))
//               : SizedBox(
//                   width: 25,
//                   height: 25,
//                   child: Image.asset(
//                     'assets/icons/$passive.png',
//               ));
//         });
//   }
// }
//
