import 'dart:ffi';
import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Sua cor favorita',
      'respostas': [
        {'texto': 'Preto claro', 'nota': 10},
        {'texto': 'Vermelho esverdeado', 'nota': 4},
        {'texto': 'Rosu', 'nota': 6},
        {'texto': 'Branco', 'nota': 7},
      ],
    },
    {
      'texto': 'Seu animal favorito',
      'respostas': [
        {'texto': 'Vacalo', 'nota': 10},
        {'texto': 'Jaré', 'nota': 11},
        {'texto': 'Rinoceronte branco', 'nota': 13},
        {'texto': 'Chupaku', 'nota': 15},
      ],
    },
    {
      'texto': 'Bora',
      'respostas': [
        {'texto': 'Tomar uma', 'nota': 7},
        {'texto': 'Num vai não', 'nota': 19},
      ],
    },
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
