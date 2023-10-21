import 'package:flutter/material.dart';
import 'package:planner/widgets/constants.dart';
import 'main_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black,
                    kLavender,
                    kLavender,
                    kLavender,
                    kPink
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
                padding: const EdgeInsets.only(left: 20, right: 20, top: 50,),
                child: Container(
                  width: size.width,
                  height: size.height * 0.40,
                  margin: EdgeInsets.all(size.width * 0.05),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(150.0)),
                      boxShadow: [
                        BoxShadow(
                            color: kBrown.withOpacity(0.9),
                            offset: const Offset(5, 5),
                            blurRadius: 15
                        ),
                        BoxShadow(
                            color: kBrown2.withOpacity(0.4),
                            offset: const Offset(-5, -5),
                            blurRadius: 15
                        )
                      ]
                    ),
                  child: Image.asset('assets/images/1.jpg', fit: BoxFit.cover,),
                  ),
              ),
              Positioned(
                top: size.height * 0.555,
                  child: Container(
                    width: size.width,
                    height: size.height * 0.15,
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    color: Colors.transparent,
                    child: const Text('Manage your \ndaily tasks',
                      style: TextStyle(
                          fontSize: 42,
                          color: kBrown2,
                          fontFamily: 'Mulish Bold'
                      )),
                  )),
              Positioned(
                  top: size.height * 0.715,
                  child: Container(
                    width: size.width,
                    height: size.height * 0.07,
                    color: Colors.transparent,
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: const Text('Team and Project management with \nsolution providing App',
                      style: TextStyle(
                          fontSize: 18,
                          color: kBrown2,
                          fontWeight: FontWeight.w500,
                      )
                    ),
                  )),
              Positioned(
                  bottom: size.height * 0.11,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      width: size.width * 0.16,
                      height: size.height * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xffefb5b3ff),
                            offset: Offset(5, 5),
                            blurRadius: 10
                          )]
                      ),
                    ),
                  )),
              Positioned(
                  bottom: size.height * 0.125,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) {
                                return const MainPage();
                              }));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        width: size.width * 0.5,
                        height: size.height * 0.055,
                        color: Colors.transparent,
                        alignment: Alignment.centerLeft,
                        child: const Text('      Get Started',
                          style: TextStyle(
                              fontSize: 19,
                              color: kBrown2,
                              fontWeight: FontWeight.w600,
                          ),),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
