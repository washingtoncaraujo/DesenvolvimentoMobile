import 'dart:io';

int numberOfSteps(int n) {
  int etapas = 0;
for(int i = n; i > 0;){
  if (n % 2 != 0){
    n = --n;
    ++etapas;
  }
  n = (n ~/ 2);
  i = n;
  if (n>0) ++etapas;
}
  return etapas; // Altere o retorno.
}

// NÃO ALTERE O CÓDIGO DAQUI PARA BAIXO
void main() {
  print("Digite um número inteiro");
  String str = stdin.readLineSync() ?? "";
  print(numberOfSteps(int.parse(str)));
}

/*
Etapas para Reduzir Número a Zero
Dado um número inteiro n, retorne o número de etapas para reduzi-lo a zero.

Em uma etapa, se o número atual for par, você deverá dividi-lo por 2, caso contrário, deverá subtrair 1 dele

Exemplo 1:
Entrada: 14

Saída: 6

Explicação:

Etapa - 14 é par; divida por 2 e obtenha 7
Etapa - 7 é ímpar; subtraia 1 e obtenha 6
Etapa - 6 é par; divida por 2 e obtenha 3
Etapa - 3 é ímpar; subtraia 1 e obtenha 2
Etapa - 2 é par; divida por 2 e obtenha 1
Etapa - 1 é ímpar; subtraia 1 e obtenha 0
Exemplo 2:
Entrada: 8

Saída: 4

Explicação:

Etapa - 8 é par; divida por 2 e obtenha 4
Etapa - 4 é par; divida por 2 e obtenha 2
Etapa - 2 é par; divida por 2 e obtenha 1
Etapa - 1 é ímpar; subtraia 1 e obtenha 0
Exemplo 3:
Entrada: 123

Saída: 12
*/