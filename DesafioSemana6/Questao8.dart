import 'dart:io';

int maximumUnits(List tiposCaixas, int tamanhoCaminhao) {
  // Classifique as caixas em ordem decrescente de unidades por caixa
  tiposCaixas.sort((a, b) => b[1].compareTo(a[1]));

  int totalUnidades = 0;
  int caixasRestantes = tamanhoCaminhao;

  for (int i = 0; i < tiposCaixas.length && caixasRestantes > 0; i++) {
    int caixasDisponiveis = tiposCaixas[i][0];
    int unidadesPorCaixa = tiposCaixas[i][1];

    // Determine quantas caixas deste tipo podem ser colocadas no caminhão
    int caixasColocadas = caixasDisponiveis < caixasRestantes ? caixasDisponiveis : caixasRestantes;

    // Atualize o total de unidades com base nas caixas colocadas
    totalUnidades += caixasColocadas * unidadesPorCaixa;

    // Reduza o número de caixas disponíveis e as caixas restantes no caminhão
    caixasDisponiveis -= caixasColocadas;
    caixasRestantes -= caixasColocadas;

    // Atualize a lista de tipos de caixas
    tiposCaixas[i][0] = caixasDisponiveis;
  }
return totalUnidades;
}

// NÃO ALTERE O CÓDIGO DAQUI PARA BAIXO
void main() {
  print("Digite uma lista de lista de números inteiros. Itens de uma mesma lista devem ser separados por vírgula. Listas devem ser separados por &. Por exemplo: 1, 2 & 2, 3 & 5, 6 * 5");
  String str = stdin.readLineSync() ?? "";
  List stringLista = str.split("*");
  int tamanhoCaminhao = int.parse(stringLista[1]);
  List tiposCaixas = [];
  
  stringLista[0].split("&").forEach((l) {
    tiposCaixas.add(l.split(",").map<int>((i) => int.parse(i)).toList());
    });
  
  print(maximumUnits(tiposCaixas, tamanhoCaminhao));
}

/*
Máximas Unidades no Caminhão
Digite uma lista de pares de números inteiros e um número inteiro representando o número de caixas que cabe no caminhão (tamanhoCaminhao). Itens de uma mesma lista devem ser separados por vírgula. Listas devem ser separados por "&" e o valor inteiro deve vir no final precedido de "*". Por exemplo: 1, 2 & 2, 3 & 5, 6 * 3.

Você foi designado para colocar uma certa quantidade de caixas em um caminhão. Você recebe uma matriz 2D tiposCaixas, onde tiposCaixas[i] = [numeroCaixas, unidades]:

numeroCaixas é o número de caixas do tipo i.
unidades é o número de unidades em cada caixa do tipo i.
Você também recebe um número inteiro tamanhoCaminhao, que é o número máximo de caixas que podem ser colocadas no caminhão.

Retorne o número total máximo de unidades que podem ser colocadas no caminhão.

Exemplo 1:
Entrada: 1,3 & 2,2 & 3,1 * 4

Saída: 8

Explicação: Você pode pegar todas as caixas do primeiro e segundo tipos e uma caixa do terceiro tipo. O número total de unidades será = (1 * 3) + (2 * 2) + (1 * 1) = 8

Exemplo 2:
Entrada: 5,10 & 2,5 & 4,7 & 3,9 * 10

Saída: 91

Explicação: O número total de unidades será = (5 * 10) + (3 * 9) + (2 * 7) = 91
*/