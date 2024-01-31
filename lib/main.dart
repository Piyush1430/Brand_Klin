import "package:flutter/material.dart";
import 'package:rathamansion/presentation/screens/Credentials_screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heightRatio = size.height / 980;
    double widthRatio = size.width / 360;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      home: WelcomePage(heightRatio: heightRatio, widthRatio: widthRatio),
    );
  }
}
