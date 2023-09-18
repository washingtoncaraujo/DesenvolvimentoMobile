import 'dart:io';

List ticToc(int n) {
  
  var valores = [];
  if (n == 0) {
    return [];
  }
  for (int i=1; i<=n; i++){
    if(i % 3 == 0 && i % 5 == 0){
      valores.add("TicToc");
    } else if (i % 3 == 0) {
      valores.add("Tic");
    } else if (i % 5 == 0){
      valores.add("Toc");
    } else {
      valores.add(i.toString());
    }
  }
  return valores; // Altere o retorno.
}

// NÃO ALTERE O CÓDIGO DAQUI PARA BAIXO
void main() {
  print("Digite um número inteiro");
  String str = stdin.readLineSync() ?? "";
  print(ticToc(int.parse(str)));
}

/* 
Tic-Toc
Dado um número inteiro n, retorne:

resposta[i] == "TicToc" se i for divisível por 3 e 5.
resposta[i] == "Tic" se i for divisível por 3.
resposta[i] == "Toc" se i for divisível por 5.
resposta[i] == i (como uma string) se nenhuma das condições acima for verdadeira.
Exemplo 1:
Entrada: 3

Saída: ["1", "2", "Tic"]

Exemplo 2:
Entrada: 5

Saída: ["1", "2", "Tic", "4", "Toc"]

Exemplo 3:
Entrada: 15

Saída: ["1", "2", "Tic", "4", "Toc", "Tic", "7", "8", "Tic", "Toc", "11", "Tic", "13", "14", "TicToc"]
 */