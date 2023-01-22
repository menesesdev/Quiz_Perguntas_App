import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  final perguntas = [
    '1 - Cor favorita do Mateus',
    '2 - Animal favorito do Mateus',
  ];

  void responder(){
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  var perguntaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            TextButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            TextButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            TextButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}
