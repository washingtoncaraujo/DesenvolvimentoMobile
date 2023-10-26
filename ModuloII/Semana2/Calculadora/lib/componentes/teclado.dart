import 'package:flutter/material.dart';
import 'botao.dart';
import 'linha_botoes.dart';

class Teclado extends StatelessWidget {
  final void Function(String) callback;

  const Teclado(this.callback, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 2),
          LinhaBotoes([
            Botao.operacao(texto: 'C', duplo: true, callback: callback),
            Botao.operacao(texto: '%', callback: callback),
            Botao.operacao(texto: '/', callback: callback),
          ]),
          const SizedBox(height: 2),
          LinhaBotoes([
            Botao(texto: '7', callback: callback),
            Botao(texto: '8', callback: callback),
            Botao(texto: '9', callback: callback),
            Botao.operacao(texto: '*', callback: callback),
          ]),
          const SizedBox(height: 2),
          LinhaBotoes([
            Botao(texto: '7', callback: callback),
            Botao(texto: '8', callback: callback),
            Botao(texto: '9', callback: callback),
            Botao.operacao(texto: '*', callback: callback),
          ]),
          const SizedBox(height: 2),
          LinhaBotoes([
            Botao(texto: '7', callback: callback),
            Botao(texto: '8', callback: callback),
            Botao(texto: '9', callback: callback),
            Botao.operacao(texto: '*', callback: callback),
          ]),
          const SizedBox(height: 2),


          // Aqui vamos adicionar as listas de linhas que contém os botões
        ],
      ),
    );
  }
}
