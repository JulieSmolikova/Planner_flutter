import 'package:flutter/material.dart';
import 'package:planner/start_page.dart';
import 'package:planner/widgets/bottom_nav_bar.dart';
import 'package:planner/widgets/constants.dart';
import 'package:provider/provider.dart';

import 'common_page.dart';
import 'main_page.dart';
import 'model/model_provider.dart';

class OngoingPage extends StatelessWidget {
  const OngoingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Consumer<Data>(
        builder: (context, data, child) {
          return Scaffold(
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
                              // data.changePage(data.activePage = data.activePage - 1);
                              // Navigator.push(
                              //           context,
                              //           MaterialPageRoute(
                              //               builder: (context) {
                              //                 return const MainPage();
                              //               }));
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
                          Container(
                            width: size.width * 0.14,
                            height: size.width * 0.14,
                            decoration: BoxDecoration(
                                color: KPink.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                width: size.width * 0.14,
                                height: size.width * 0.14,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(50),
                                    boxShadow: [
                                      BoxShadow(
                                          color: KPink.withOpacity(0.3),
                                          offset: const Offset(5, 5),
                                          blurRadius: 15
                                      ),
                                      BoxShadow(
                                          color: KPink.withOpacity(0.3),
                                          offset: const Offset(-5, -5),
                                          blurRadius: 15
                                      )
                                    ]
                                ),
                                child: Image.asset('assets/images/avatar.jpg', fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]
              ),
            ),
          );
        },
      )
      
    );
  }
}
