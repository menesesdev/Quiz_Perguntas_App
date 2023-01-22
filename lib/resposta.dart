import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Resposta extends StatelessWidget {
  //const Resposta({super.key});
  final String texto;
  Resposta(this.texto);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(texto),
      onPressed: null,
    );
  }
}
