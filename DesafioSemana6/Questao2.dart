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
