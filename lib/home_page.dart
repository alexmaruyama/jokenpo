import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Jokenpo'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Escolha do App'),
            ),
            GestureDetector(
              onTap: () {
                print('clicou aqui');
              },
              child: Image.asset('imagens/padrao.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Escolha uma opção abaixo'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'imagens/pedra.png',
                  height: 100,
                ),
                Image.asset(
                  'imagens/papel.png',
                  height: 100,
                ),
                Image.asset(
                  'imagens/tesoura.png',
                  height: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
