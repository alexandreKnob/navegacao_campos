import 'package:flutter/material.dart';

class Produtos extends StatefulWidget {
  String nome;
  String endereco;

  Produtos(this.nome, this.endereco);

  @override
  _ProdutosState createState() => _ProdutosState();
}

class _ProdutosState extends State<Produtos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Produtos "),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Text("Nome : " + widget.nome),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text("Endereço : " + widget.endereco),
          ),
        ],
      ),
    );
  }
}
