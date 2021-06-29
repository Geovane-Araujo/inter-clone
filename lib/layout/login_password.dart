import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inter_dark_clone/components.dart';

import 'contas.dart';

class LoginPassword extends StatelessWidget {
  String _nameAcount;
  String _sigAcount;
  String _numberAcount;

  LoginPassword(String _nameAcount, String _sigAcount, String _numberAcount){
    this._nameAcount = _nameAcount;
    this._sigAcount = _sigAcount;
    this._numberAcount = _numberAcount;
  }


  Color _primaryText = Color(0xFFFF7A00);
  Color _primaryBack = Color(0xFF1E1E1E);
  Color _hintBackInput = Color(0xFF333333);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 0,
        leading: Container(),
        backgroundColor: _primaryBack,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.help_outline,color:_primaryText),
          ),
        ],
      ),
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
                Navigator.pop(context);
              },
              child: Text("Trocar ou abrir conta",
                  style: TextStyle(color: _primaryText)
              ),
            ),
          ],
        ),
      ),
      backgroundColor: _primaryBack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("inter",
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFFFF7A00),
                  fontFamily: "Sen"
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Componentes.TextButtonAcount(context,_sigAcount,_nameAcount,_numberAcount),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Senha",
                  fillColor: _hintBackInput,
                  border: OutlineInputBorder(borderSide: BorderSide(color: _hintBackInput)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: _primaryText
                ),
                child: Text("Entrar",style: TextStyle(color: Colors.white)),
                onPressed: (){

                },
              )
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
      ),
    );
  }
}
