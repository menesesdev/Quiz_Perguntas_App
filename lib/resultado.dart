import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
                child: Text(
                  'Para! bens!',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              );
  }
}