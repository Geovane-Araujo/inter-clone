import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inter_dark_clone/components.dart';

class Contas extends StatelessWidget {

  Color _primaryText = Color(0xFFFF7A00);
  Color _primaryBack = Color(0xFF1E1E1E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _primaryBack,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: _primaryBack,
        title: Text("Contas", style: TextStyle(color: Colors.white, fontSize: 17)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_backspace,
              color: _primaryText)
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Componentes.TextButtonPersonalize(context,"G","Geovane De","123456789")
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Componentes.TextButtonPersonalize(context,"E","Edna De","123456789")
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Componentes.TextButtonPersonalize(context,"P","Pietra De","123456789")
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Componentes.TextButtonPersonalizeOutline("Entrar com outra conta",_primaryBack,_primaryText,_primaryText),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Componentes.TextButtonPersonalizeOutline("Abra uma conta gratuita",_primaryText,Colors.white,_primaryText),
          )
        ],
      )
    );
  }


}

