import 'package:flutter/material.dart';

class Clientes extends StatelessWidget {
  String nomeCliente;

  Clientes(this.nomeCliente);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( centerTitle: true, title: Text("Clientes"),
    ),
    body: Column(
      children: <Widget>[
        Container(
          child: Text("Nome : " + nomeCliente),
        )

      ],
    )
    );
  }
}
