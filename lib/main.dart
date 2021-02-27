import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/Auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white.withOpacity(0.8)),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFFF6600),
        ),
      ),
      home: Auth(),
    );
  }
}
