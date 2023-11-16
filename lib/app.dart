import 'package:appdev232_project_21700185/login.dart';
import 'package:flutter/material.dart';
import 'build.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bg3 builder',
      initialRoute: '/build',
      routes: {
        '/build': (BuildContext context) => const BuildPage(),
        '/login': (BuildContext context) => const LoginPage(),
      },
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        primaryColor: Colors.black,
      ),
    );
  }
}
