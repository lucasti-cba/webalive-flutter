import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final String texto;

  Login(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      color: Colors.white,
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
