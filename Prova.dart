import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista de Pessoas"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: ListView.builder(
            itemCount: pessoas.length,
            itemBuilder: (context, i) {
              return ListTile(
                leading: (i % 2 == 0)
                    ? Icon(Icons.audiotrack)
                    : Icon(Icons.favorite),
                title: Text(pessoas[i].nome),
                subtitle: Text(pessoas[i].descricao),
              );
            },
          ),
        ));
  }
}

class Pessoa {
  String nome;
  String descricao;
  Pessoa({required this.nome, required this.descricao});
}

List<Pessoa> pessoas = [
  Pessoa(nome: 'João', descricao: 'João é fofoqueiro'),
  Pessoa(nome: 'Maria', descricao: 'Maria é fofoqueira também'),
  Pessoa(nome: 'Ana', descricao: 'Ana é bonita'),
  Pessoa(nome: 'Cassia', descricao: 'Cassia gosta de sorvete'),
  Pessoa(nome: 'Sabrino', descricao: 'Sabrino gosta de cães'),
  Pessoa(nome: 'Lourdes', descricao: 'Lourdes faz natação'),
  Pessoa(nome: 'Natasho', descricao: 'Natasho gosta da música Natasha'),
  Pessoa(nome: 'Naruto', descricao: 'Naruto gosta de lamen'),
  Pessoa(nome: 'Sasuke', descricao: 'Sasuke só arruma confusão'),
  Pessoa(nome: 'Gon', descricao: 'Gon é feliz'),
  Pessoa(nome: 'Killua', descricao: 'Killua gosta de seguir Gon'),
  Pessoa(nome: 'Kuririn', descricao: 'Kuririn está nervoso'),
  Pessoa(nome: 'Freeza', descricao: 'Freeza matou o kuririn.'),
];
