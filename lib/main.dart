import 'package:flutter/material.dart';
import 'package:inter_dark_clone/layout/contas.dart';
import 'package:inter_dark_clone/layout/splash.dart';

import 'layout/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Color _primaryText = Color(0xFFFF7A00);
  Color _primaryBack = Color(0xFF1E1E1E);
  Color _hintBackInput = Color(0xFF333333);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inter Clone Dark',
      theme: ThemeData(
        hintColor: _primaryText,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: _hintBackInput)
          )
        ),
        primaryColorDark: Color(0xFF1E1E1E),
        primaryColor:  _hintBackInput,
      ),
      home: Login(),
    );
  }
}

