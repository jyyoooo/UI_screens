import 'package:flutter/material.dart';
import 'package:ui_screens/managestore.dart';
import 'package:ui_screens/pages/additionalinfo.dart';
import 'package:ui_screens/pages/delivere_item.dart';
import 'package:ui_screens/pages/homepage.dart';
import 'package:ui_screens/pages/loadhere.dart';
import 'package:ui_screens/pages/payments.dart';
import 'package:ui_screens/pages/premiumpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Poppins-Regular',
          textTheme: Typography.blackCupertino,
          typography: Typography.material2021(),
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white),
          home: LoadHereScreen(),
      
    );
  }
}
