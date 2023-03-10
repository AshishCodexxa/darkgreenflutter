import 'package:darkgreen/LoginRegistation/login_screen.dart';
import 'package:darkgreen/LoginRegistation/otp_base_register.dart';
import 'package:darkgreen/constant/color.dart';
import 'package:darkgreen/presentation/Address.dart';
import 'package:darkgreen/presentation/darkgreen_dashboard_screen.dart';
import 'package:flutter/material.dart';

import 'LoginRegistation/Registation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DarkGreen',
      home:  MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 0)).then((_) {
      showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          elevation: 0,
          isScrollControlled: true,
          isDismissible: false,
          enableDrag: true,
          builder: (BuildContext bc) {
            return LoginScreen();
          });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor.APP_BAR_COLOR,

    );
  }


}
