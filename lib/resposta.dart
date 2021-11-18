import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(100, 10, 100, 10),
      child: RaisedButton(
        color: Colors.cyan,
        textColor: Colors.white,
        child: Text(texto),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
