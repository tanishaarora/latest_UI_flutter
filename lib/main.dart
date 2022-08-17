import 'package:aug_ui/Sign_up/login_screen.dart';
import 'package:flutter/material.dart';
import 'Utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // initialRoute: "/login",
      routes: {
        '/' : (context) => Loginpage(),
        MyRoutes.login_page_Route : (context) => Loginpage(),
     //   MyRoutes.registration_page_Route : (context) => ,
    },
    );
  }
}