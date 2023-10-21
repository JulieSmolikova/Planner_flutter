import 'package:flutter/material.dart';
import 'package:planner/widgets/constants.dart';
import 'package:provider/provider.dart';
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
                    kVin,
                    kVin,
                    kVin,
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

//App_bar
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
                            Icons.add_task,
                            color: kPink.withOpacity(0.6),
                            size: size.width * 0.11,),
                        ),
                      ),
                      Container(
                        width: size.width * 0.14,
                        height: size.width * 0.14,
                        decoration: BoxDecoration(
                            color: kPink.withOpacity(0.7),
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
                                      color: kPink.withOpacity(0.3),
                                      offset: const Offset(5, 5),
                                      blurRadius: 15
                                  ),
                                  BoxShadow(
                                      color: kPink.withOpacity(0.3),
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

//ListWheelScrollView_Months
                Positioned(
                  top: size.height * 0.15,
                    child: Container(
                      width: size.width,
                      height: size.height * 0.12,
                      color: Colors.transparent,
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: ListWheelScrollView(
                          perspective: 0.005,
                          diameterRatio: 4,
                          squeeze: 1.1,
                          offAxisFraction: 1,
                          physics: const FixedExtentScrollPhysics(),
                          onSelectedItemChanged: (index) => data.SelectedMonth(index),
                          itemExtent: 150,
                          children: List.generate(
                              data.months.length, (index) => RotatedBox(
                                quarterTurns: 1,
                                child: Center(
                                  child: AnimatedSize(
                                    duration: const Duration(milliseconds: 200),
                                    child: Text(data.isSelectedMonth == index
                                      ? '${data.months[index]}'
                                      : '${data.months[index]}'.substring(0,3),
                                      style: TextStyle(
                                      fontFamily: 'Mulish Bold',
                                      color: data.isSelectedMonth == index
                                      ? kYellow
                                      : kPink.withOpacity(0.8),
                                      fontSize: data.isSelectedMonth == index
                                        ? 25
                                        : 15,
                                    ),),
                                  ),
                                ),),
                          ),
                        ),
                      )
                    )
                ),

//ListWheelScrollView_Data
                  Positioned(
                    top: size.height * 0.25,
                    child: Container(
                        width: size.width,
                        height: size.height * 0.12,
                        color: Colors.transparent,
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: ListWheelScrollView(
                            perspective: 0.003,
                            diameterRatio: 4,
                            squeeze: 1.2,
                            offAxisFraction: 1,
                            physics: const FixedExtentScrollPhysics(),
                            onSelectedItemChanged: (index) => data.SelectedData(index),
                            itemExtent: 100,
                            children: List.generate(
                              data.isSelectedMonth == 1
                              ? 29
                              : data.isSelectedMonth %2 != 0
                              ? 31
                              : 30,
                              (index) => RotatedBox(
                                quarterTurns: 0,
                                child: Container(
                                  width: size.width * 0.18,
                                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 23),
                                  decoration: BoxDecoration(
                                    color: data.isSelectedData == index
                                    ? kPink
                                    : kYellow,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color: data.isSelectedData == index
                                        ? kBrown.withOpacity(0.7)
                                        : kBrown.withOpacity(0.9),
                                        width: 3),
                                    boxShadow: data.isSelectedData == index
                                    ? kBoxShadowYellow
                                    : kBoxShadow
                                  ),
                                  child: RotatedBox(
                                    quarterTurns: 1,
                                    child: Center(
                                      child: AnimatedSize(
                                        duration: const Duration(milliseconds: 200),
                                        child: Text(
                                          '${index + 1}',
                                          style: TextStyle(
                                            fontFamily: 'Mulish Bold',
                                            color: data.isSelectedData == index
                                                ? kBrown
                                                : kBrown.withOpacity(0.8),
                                            fontSize: data.isSelectedData == index
                                                ? 25
                                                : 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                ),),
                            ),
                          ),
                        )),

//ListView.builder_tasks
                Positioned(
                  bottom: 0,
                    child: Container(
                        width: size.width,
                        height: size.height * 0.64,
                        decoration: const BoxDecoration(
                          color: Colors.transparent
                        ),
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            width: size.width,
                            height: size.height * 0.15,
                            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: kPink,
                              border: Border.all(width: 3, color: kBrown.withOpacity(0.9)),
                              boxShadow: kBoxShadow,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Text text', style: kTextStyle18),
                                      Text('text', style: kTextStyle18),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('data', style: kTextStyle15,),
                                      Text('time', style: kTextStyle15,),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                      )
                    )),

                ]
              ),
            ),
          );
        },
      )
    );
  }
}
