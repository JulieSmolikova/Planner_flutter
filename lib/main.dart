import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main_page.dart';
import 'model/model_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(create: (_) => Data(),
      builder: (context, child){

          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MainPage(),
          );
        },
    );
  }
}
