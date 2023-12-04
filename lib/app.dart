import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:appdev232_project_21700185/login.dart';
import 'sheet_page/build.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'bg3 builder',
      initialRoute: '/build',
      routes: {
        '/build': (BuildContext context) => const BuildPage(),
        '/login': (BuildContext context) => const LoginPage(),
      },
      theme: ThemeData(
        primaryColor: Colors.black,
        highlightColor: Colors.white,
        scaffoldBackgroundColor: Colors.black,
        unselectedWidgetColor: Colors.white,
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
