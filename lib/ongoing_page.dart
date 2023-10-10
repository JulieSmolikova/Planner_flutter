import 'package:flutter/material.dart';
import 'package:planner/start_page.dart';
import 'package:planner/widgets/bottom_nav_bar.dart';
import 'package:planner/widgets/constants.dart';

import 'common_page.dart';

class OngoingPage extends StatelessWidget {
  const OngoingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBody: true,
        bottomNavigationBar: const BottomNavBar(),
        body: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  KVin,
                  KVin,
                  KVin,
                  KPink
                ],
                stops: [
                  0,
                  0.4,
                  0.8,
                  0.6,
                  1
                ]
            ),
          ),
          child: Stack(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 55),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) {
                                  return const CommonPage();
                                }));
                      },
                      child: Container(
                        height: size.width * 0.13,
                        width: size.width * 0.13,
                        color: Colors.transparent,
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: KPink.withOpacity(0.7),
                          size: size.width * 0.1,),
                      ),
                    ),
                  ],
                ),
              ),



              // Positioned(
              //     bottom: 0,
              //     left: 0,
              //     child: SizedBox(
              //       height: 50,
              //       width: size.width,
              //       child: const BottomNavBar(),
              //     ))
            ]
          ),
      ),
    ));
  }
}
