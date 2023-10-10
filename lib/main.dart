import 'package:flutter/material.dart';
import 'package:planner/start_page.dart';
import 'package:provider/provider.dart';

import 'model/model_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Data(),
        builder: (context, child) {

          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: StartPage(),
          );
        },
    );
  }
}
