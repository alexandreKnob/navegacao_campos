import 'package:flutter/material.dart';
import 'produtos.dart';
import 'servicos.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final nomeControler = TextEditingController();
  final enderecoControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste de Navegação entre Páginas"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "- Cadastros -",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: nomeControler,
              style: TextStyle(color: Colors.red),
              decoration: InputDecoration(labelText: "Nome"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: enderecoControler,
              style: TextStyle(color: Colors.red),
              decoration: InputDecoration(labelText: "Endereço"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              color: Colors.blueAccent,
              textColor: Colors.white,
              padding: EdgeInsets.all(12),
              child: Text(
                "Produtos",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Produtos(
                            nomeControler.text, enderecoControler.text)));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
                color: Colors.blueAccent,
                textColor: Colors.white,
                padding: EdgeInsets.all(12),
                child: Text(
                  "Serviços",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Servicos()));
                }),
          ),
        ],
      ),
    );
  }
}
