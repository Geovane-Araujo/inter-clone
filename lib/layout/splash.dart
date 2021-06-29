import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: Center(
        child: Text("inter",
          style: TextStyle(
              fontSize: 40,
              color: Color(0xFFFF7A00),
              fontFamily: "Sen"
          ),
        ),
      ),
    );
  }
}
