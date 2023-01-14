import 'package:flutter/material.dart';
import 'package:states/screens/screen_stateful.dart';
import 'package:states/screens/screen_stateless.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/stateful": (BuildContext context) => SceenStateful(),
        "/stateless": (BuildContext context) => SceenStateless()
      },
      initialRoute: "/stateful", //açılış sayfası
    );
  }
}
