import 'package:flutter/cupertino.dart' ;
import 'package:flutter/material.dart' ;

class Botao extends StatelessWidget {
  static const corPadrao = Color.fromARGB(255, 248, 243, 243);
  static const corOperacao = Color.fromRGBO(3, 3, 3, 1);
  final String texto;
  final bool duplo;
  final Color txtcor;
  final Color cor;
  final void Function(String) callback;

  const Botao({
    super.key,
    required this.texto,
    this.duplo = false,
    this.txtcor = const Color.fromARGB(255, 15, 15, 15),
    this.cor = corPadrao,
    required this.callback,
  });

  const Botao.operacao({
    super.key,
    required this.texto,
    this.duplo = false,
    this.txtcor = const Color.fromRGBO(245, 240, 240, 1),
    this.cor = corOperacao,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 100,
          height: 100,
          alignment: AlignmentDirectional.center,
        child: CupertinoButton(
           borderRadius: const BorderRadius.all(Radius.circular(10.0)),
           alignment: Alignment.center,
           color: cor,
           onPressed: () => callback(texto),
           child: Text(
             texto,
             style: TextStyle(
               color: txtcor,
               fontSize: 25,
               fontWeight: FontWeight.w500,
             ),
           )));
  }
}
