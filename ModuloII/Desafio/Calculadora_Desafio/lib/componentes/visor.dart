import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
class Visor extends StatelessWidget {
  final String texto;
  const Visor(this.texto, {super.key});
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1, // ocupar toda a altura da tela
      child: Container(        
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(220, 85, 84, 84),
        ),
        child: Column(
          // mover texto para baixo
          mainAxisAlignment: MainAxisAlignment.end,
          // esticar largura coluna
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              // aumentar distancia do texto
              padding: const EdgeInsets.all(10.0),
              child: AutoSizeText(texto),
            ),],),),);
  }}