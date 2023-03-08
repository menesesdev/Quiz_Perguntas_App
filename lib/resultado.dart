import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  //const Resultado({super.key});

  final int nota;
  final void Function() quandoReiniciarQuestionario;
  Resultado(this.nota, this.quandoReiniciarQuestionario);

  String get fraseNota {
    if (nota < 30) {
      return 'Sabe nada sobre o Mateus :/';
    } else if (nota < 50) {
      return 'Conhece mais ou menos';
    } else if (nota < 60) {
      return 'Tá sabendo legal';
    } else {
      return 'Oloco sabe mt :o';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseNota,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: quandoReiniciarQuestionario,
            child: Text('Reiniciar'),
          ),
        )
      ],
    );
  }
}
