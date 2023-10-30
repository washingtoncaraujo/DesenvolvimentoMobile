import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../componentes/visor.dart';
import '../componentes/teclado.dart';

// Criando a classe principal
class Calculadora extends StatelessWidget {
  const Calculadora({super.key});

  _pressionado(String texto) {
    if (kDebugMode) {
      // Mostrar tecla clicada no terminal
      print(texto);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      home: Container(
          color: const Color.fromARGB(255, 238, 234, 231),          
          padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const Visor('12345.789'),
            const SizedBox(height: 10,),
            Teclado(_pressionado),
      ],
      ),),);
  }
}
