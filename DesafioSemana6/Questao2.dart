import 'dart:io';
import 'dart:math';

int computaMaiorPatrimonio(List contas) {
 
  List<int> rico = [];
  int valor = 0;  
  for (int i = 0; i<contas.length; i++){ 
    num soma = 0;
    for (int j=0; j<contas[i].length; j++){
      soma = soma + contas[i][j];
    }   
    rico.add(soma.toInt());
  }
  valor = rico[0];
  rico.forEach((m) => {
    if (m > valor){
      valor = m
    }
  });
return valor; // Altere o retorno.
}

// NÃO ALTERE O CÓDIGO DAQUI PARA BAIXO
void main() {
  print("Digite uma lista de lista de números. Itens de uma mesma lista devem ser separados por vírgula. Listas devem ser separados por &. Por exemplo: 1, 2, 3 & 2, 3, 4 & 5, 6, 7");
  String? str = stdin.readLineSync();
  List stringLista = str?.split("&") ?? [];
  List listas = []; 
  for (final stri in stringLista) {
    listas.add(stri?.split(",").map<int>((i) => int.parse(i)).toList() ?? []);
  }
  print(computaMaiorPatrimonio(listas));
}


/*
Patrimônio do Cliente Mais Rico
Digite uma lista de lista de números inteiros (grade de contas). Itens de uma mesma lista devem ser separados por vírgula. Listas devem ser separados por &. Por exemplo: 1, 2, 3 & 2, 3, 4 & 5, 6, 7

Você recebe uma grade de contas inteiras m x n onde contas[i][j] é a quantidade de dinheiro que o i-ésimo cliente tem no banco j. Devolva o patrimônio do cliente mais rico.

O patrimônio de um cliente é a quantidade de dinheiro que ele possui em todas as suas contas bancárias. O cliente mais rico é aquele que possui maior patrimônio.

Exemplo 1:
Entrada: 1,2,3 & 3,2,1

Saída: 6

Explicação: O 1º cliente tem riqueza = 1 + 2 + 3 = 6; O 2º cliente tem riqueza = 3 + 2 + 1 = 6

Exemplo 2:
Entrada: 1,5 & 7,3 & 3,5

Saída: 10

Explicação: 1º cliente tem riqueza = 6; 2º cliente tem riqueza = 10; 3º cliente tem riqueza = 8
*/