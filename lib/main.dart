import 'dart:ffi';
import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _notaTotal = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Sua cor favorita',
      'respostas': [
        {'texto': 'Preto claro', 'nota': 10},
        {'texto': 'Vermelho esverdeado', 'nota': 4},
        {'texto': 'Rosu', 'nota': 6},
        {'texto': 'Branco', 'nota': 7},
      ], //max 27
    },
    {
      'texto': 'Seu animal favorito',
      'respostas': [
        {'texto': 'Vacalo', 'nota': 10},
        {'texto': 'Jaré', 'nota': 11},
        {'texto': 'Rinoceronte branco', 'nota': 13},
        {'texto': 'Chupaku', 'nota': 15},
      ], //max 49
    },
    {
      'texto': 'Bora',
      'respostas': [
        {'texto': 'Tomar uma', 'nota': 7},
        {'texto': 'Num vai não', 'nota': 19},
      ], //max 26
    },
  ];

  void _responder(int nota) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _notaTotal += nota;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _reiniciarQuestionario(){
    setState(() {
      _perguntaSelecionada = 0;
      _notaTotal = 0;
    });
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
            : Resultado(_notaTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
