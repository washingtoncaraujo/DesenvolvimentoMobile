import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../componentes/visor.dart';
import '../componentes/teclado.dart';
import '../modelos/memoria.dart';

// Criando a classe principal
class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
 State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
 final Memoria memoria = Memoria();

  _pressionado(String comando) {
    if (kDebugMode) {
      // Mostrar tecla clicada no terminal
      print(comando);
    }
  setState(() {
  memoria.tratarDigito(comando);
  });
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              children: <Widget>[
                Visor(memoria.valorNoVisor),
                const SizedBox(height: 2),
                Teclado(_pressionado),
      ],
      ),),);
  }
}
