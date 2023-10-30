import 'package:flutter/cupertino.dart' ;

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
    return Expanded(
      flex: 1,
        child: CupertinoButton(
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        alignment: Alignment.center,
        color: cor,
        onPressed: () => callback(texto),
          child: Text(
            textAlign: TextAlign.justify,
            texto,
            style: TextStyle(
              color: txtcor,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
        )));
  }
}

