import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _imagemApp = AssetImage('imagens/padrao.png');
  String _resultado = '';

  void clickEscolha(String escolha) {
    var indice = Random().nextInt(3);
    var opcoes = ['pedra', 'papel', 'tesoura'];

    setState(() {
      _imagemApp = AssetImage('imagens/' + opcoes[indice] + '.png');

      if (escolha == 'pedra' && opcoes[indice] == 'tesoura' ||
          escolha == 'papel' && opcoes[indice] == 'pedra' ||
          escolha == 'tesoura' && opcoes[indice] == 'papel') {
        _resultado = 'Parabéns você ganhou :)';
      } else if (opcoes[indice] == 'pedra' && escolha == 'tesoura' ||
          opcoes[indice] == 'papel' && escolha == 'pedra' ||
          opcoes[indice] == 'tesoura' && escolha == 'papel') {
        _resultado = 'Você perdeu ;(';
      } else {
        _resultado = 'Empatamos';
      }
    });
  }

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
            Image(
              image: this._imagemApp,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Escolha uma opção abaixo'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  onTap: () => this.clickEscolha("pedra"),
                  child: Image.asset(
                    'imagens/pedra.png',
                    height: 100,
                  ),
                ),
                GestureDetector(
                  onTap: () => this.clickEscolha('papel'),
                  child: Image.asset(
                    'imagens/papel.png',
                    height: 100,
                  ),
                ),
                GestureDetector(
                  onTap: () => this.clickEscolha('tesoura'),
                  child: Image.asset(
                    'imagens/tesoura.png',
                    height: 100,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                _resultado,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
