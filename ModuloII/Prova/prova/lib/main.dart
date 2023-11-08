import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MeuApp(),
  ));
}

class MeuApp extends StatefulWidget {
  const MeuApp({super.key});

  // This widget is the root of your application.
  @override
_MeuAppState createState() => _MeuAppState();

}

class Comando {
  String _comando = '';
  String get Valor {
    return _comando;
  }
  setComando (String com){
    _comando = com;
  }
}

class _MeuAppState extends State<MeuApp>{
  final Comando comando = Comando();

  void _pressed(String novoComando){
    setState(() {
      _MeuAppState();
  }); 
    
  }

@override
Widget build(BuildContext contest){
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Exemple de Atualização de Estado"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _pressed("Acertou a questão?");
              },
              child: Text(comando.Valor),
            )
          ],
        ),
      ),
    ),
  );
}

}