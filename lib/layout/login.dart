import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contas.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  Color _primaryText = Color(0xFFFF7A00);
  Color _primaryBack = Color(0xFF1E1E1E);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: _primaryBack,
        child: Row(
          children: [
            TextButton.icon(
              icon: Icon(Icons.security_outlined,color:_primaryText ),
              label: Text("iSafe",style: TextStyle(color: _primaryText)),
            ),
            Spacer(flex: 1),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Contas()));
              },
              child: Text("Trocar ou abrir conta",
                  style: TextStyle(color: _primaryText)
              ),
            ),
          ],
        ),
      ),
      backgroundColor: _primaryBack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            heightFactor: 4,
            child: Text("inter",
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFFFF7A00),
                  fontFamily: "Sen"
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:70),
            child: Column(
              children: [
                CircleAvatar(
                  child: Text("G",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
                  radius: 30,
                ),
              ],
            ),
          ),
          Flexible(
            child: Text(""
              "Geovane De",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(""
                  "Conta 123456789",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Icon(Icons.fingerprint_outlined,color: Colors.grey),
                Text("Toque no sensor de impressão\n digital do seu celular",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
