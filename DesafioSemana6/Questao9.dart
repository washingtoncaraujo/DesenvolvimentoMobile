import 'dart:io';
import 'dart:math';

num maxIncreaseKeepingSkyline(List grid) {
 
  int linhas = grid.length;
  int colunas = grid[0].length;

  List<int> max_linha = List.filled(linhas, 0);
  List<int> max_coluna = List.filled(colunas, 0);

  for (int i = 0; i < linhas; i++) {
    for (int j = 0; j < colunas; j++) {
      max_linha[i] = max(max_linha[i], grid[i][j]);
      max_coluna[j] = max(max_coluna[j], grid[i][j]);
    }
  }

  num total = 0;
  for (int i = 0; i < linhas; i++) {
    for (int j = 0; j < colunas; j++) {
      var calculo = min(max_linha[i], max_coluna[j]) - grid[i][j];
      total += calculo;
    }
  }

  return total;
}


// NÃO ALTERE O CÓDIGO DAQUI PARA BAIXO
void main() {
  print("Digite uma lista de lista de números inteiros. Itens de uma mesma lista devem ser separados por vírgula. Listas devem ser separados por &. Por exemplo: 1, 2, 3 & 2, 3, 4 & 5, 6, 7");
  String? str = stdin.readLineSync();
  List stringLista = str?.split("&") ?? [];
  List listas = []; 
  for (final stri in stringLista) {
    listas.add(stri?.split(",").map<int>((i) => int.parse(i)).toList() ?? []);
  }
  print(maxIncreaseKeepingSkyline(listas));
}

/*
Aumento Máximo Para Manter o Horizonte da Cidade
Existe uma cidade composta por n x n quarteirões, onde cada quarteirão contém um único edifício em forma de prisma quadrado vertical. Você recebe uma grade de matriz inteira n x n indexada em 0, onde grid[r][c] representa a altura do edifício localizado no bloco na linha r e coluna c.

O horizonte de uma cidade é o contorno externo formado por todo o edifício quando se observa a lateral da cidade. O horizonte de cada direção cardeal pode ser diferente.

Podemos aumentar a altura de qualquer número de edifícios em qualquer valor. A altura de um edifício com altura 0 também pode ser aumentada. No entanto, aumentar a altura de um edifício não deve afetar o horizonte da cidade em nenhuma direção cardeal.

Retorne a soma total máxima pela qual a altura dos edifícios pode ser aumentada sem alterar o horizonte da cidade em qualquer direção cardeal.

Exemplo 1:
Entrada: 0,0,0 & 0,0,0 & 0,0,0

Saída: 0

Explicação: Aumentar a altura de qualquer edifício resultará na mudança do horizonte.

Exemplo 2:
Entrada: 3,0,8,4 & 2,4,5,7 & 9,2,6,3 & 0,3,1,0

Saída: 35

Explicação: As alturas dos edifícios são mostradas no centro da imagem acima. Os horizontes quando vistos de cada direção cardeal são desenhados em vermelho. A grade após aumentar a altura dos edifícios sem afetar os horizontes é: gradeNova = [[8, 4, 8, 7], [7, 4, 7, 7], [9, 4, 8, 7], [3, 3, 3, 3]]
*/