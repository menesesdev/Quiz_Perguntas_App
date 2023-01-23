import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const List<Map> perguntas = [
      {
        'texto': 'Sua cor favorita',
        'respostas': ['Preto claro', 'Vermelho esverdeado', 'Rosu', 'Branco'],
      },
      {
        'texto': 'Seu animal favorito',
        'respostas': ['Vacalo', 'Jaré', 'Rinoceronte branco', 'Chupaku'],
      },
      {
        'texto': 'Bora',
        'respostas': ['Tomar uma', 'Num vai não'],
      },
    ];

    List<Widget> respostas =[];
    for(String textoResp in perguntas[_perguntaSelecionada]['respostas']){
      respostas.add(Resposta(textoResp, _responder));
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto']),
            ...respostas
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
