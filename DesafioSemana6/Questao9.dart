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