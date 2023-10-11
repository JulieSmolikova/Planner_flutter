import 'package:flutter/material.dart';
import 'package:planner/model/model_provider.dart';
import 'package:planner/start_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:planner/widgets/constants.dart';
import 'package:provider/provider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CommonPage extends StatelessWidget {
  const CommonPage({Key? key}) : super(key: key);

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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) {
                                      return const StartPage();
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
                        )
                      ],
                    ),
                  ),

                  Positioned(
                    top: size.height * 0.17,
                    left: size.width * 0.05,
                    child: Container(
                      width: size.width * 0.9,
                      height: size.width * 0.2,
                      color: Colors.transparent,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hi Julie',
                            style: TextStyle(
                                fontSize: 35,
                                color: KPink,
                                fontFamily: 'Mulish Bold'),),
                          Text('6 Tasks are pending',
                            style: TextStyle(
                                fontSize: 20,
                                color: KPink,
                                fontFamily: 'Mulish Bold'),)
                        ],
                      ),
                    ),
                  ),

                  //Yellow Box
                  Positioned(
                      top: size.height * 0.29,
                      left: size.width * 0.05,
                      child: Container(
                        width: size.width * 0.9,
                        height: size.width * 0.25,
                        decoration: BoxDecoration(
                            color: KYellow,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: KBrown.withOpacity(0.9), width: 3),
                            boxShadow: [
                              BoxShadow(
                                  color: KBrown.withOpacity(0.9),
                                  offset: const Offset(5, 5),
                                  blurRadius: 15
                              ),
                              BoxShadow(
                                  color: KBrown.withOpacity(0.4),
                                  offset: const Offset(-5, -5),
                                  blurRadius: 15
                              )
                            ]
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Mobile App \nFlutter',
                                    style: TextStyle(
                                        color: KBrown,
                                        fontFamily: 'Mulish Bold',
                                        fontSize: 18),),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('Now',
                                      style: TextStyle(
                                          color: KBrown,
                                          fontFamily: 'Mulish Bold',
                                          fontSize: 15))
                                ],
                              )
                            ],
                          ),
                        ),
                      )),

                  Positioned(
                    top: size.height * 0.45,
                    left: size.width * 0.09,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Monthly Review',
                          style: TextStyle(
                              fontSize: 25,
                              color: KPink,
                              fontFamily: 'Mulish Bold'),)],
                    ),
                  ),

                  Positioned(
                      top: size.height * 0.45,
                      left: size.width * 0.05,
                      child: Container(
                          width: size.width * 0.9,
                          height: size.height * 0.5,
                          color: Colors.transparent,
                          // child: MasonryGridView.builder(
                          //   itemCount: 6,
                          //   gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                          //   itemBuilder: (context, index) => Padding(
                          //     padding: const EdgeInsets.all(5.0),
                          //     child: Container(
                          //       color: Colors.blue,
                          //       height: size.height * 0.15,
                          //       ),
                          //     ),),
                          // child: ClipRRect(borderRadius: BorderRadius.circular(12),
                          //     child: Image.asset('assets/images/${index + 1 }.jpg')),
                          child: GridView.custom(
                              gridDelegate: SliverWovenGridDelegate.count(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 12,
                                  mainAxisSpacing: 3,
                                  pattern: const [
                                    WovenGridTile(1),
                                    WovenGridTile(
                                        6 / 5,
                                        crossAxisRatio: 1,
                                        alignment: AlignmentDirectional.centerStart)
                                  ]
                              ),
                              childrenDelegate: SliverChildBuilderDelegate(
                                childCount: 4,
                                    (context, index) => Container(
                                  decoration: BoxDecoration(
                                      color: KPink,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: KBrown.withOpacity(0.8), width: 3),
                                      boxShadow: [
                                        BoxShadow(
                                            color: KBrown.withOpacity(0.4),
                                            offset: const Offset(-5, -5),
                                            blurRadius: 15
                                        ),
                                        BoxShadow(
                                            color: KBrown.withOpacity(0.9),
                                            offset: const Offset(5, 5),
                                            blurRadius: 15
                                        )
                                      ]
                                  ),
                                ),
                              )
                          )
                      )
                  ),
                ],
              ),
            ),
          );
        },
      )


    );
  }
}
