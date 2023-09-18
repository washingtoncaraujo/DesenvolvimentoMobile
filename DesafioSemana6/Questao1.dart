import 'dart:io';

List arraySum(List nums) {
  
  var soma = [];
  if (nums.length == 1){
    return nums;
  } else if (nums.length == 0) { 
    return [];
  }else {
    soma.add(nums [0]);
    for (int i=1; i<nums.length; i++){
      soma.add((soma[i-1] + nums[i]));
    }
  }
  nums = soma;
  return nums; // Altere o retorno.
}

// NÃO ALTERE O CÓDIGO DAQUI PARA BAIXO
void main() {
  print("Digite uma lista de números inteiros separados por vírgula. Por exemplo: 1, 2, 3");
  String? lista = stdin.readLineSync();
  List nums = lista?.split(",").map<int>((i) => int.parse(i)).toList() ?? [];
  print(arraySum(nums));
}

/*
Soma Acumulada de Vetor
Digite uma lista de números inteiros separados por vírgula para criar uma lista nums. Por exemplo: 1, 2, 3

Definimos uma soma acumulada de um array como runningSum[i] = sum(nums[0]…nums[i]).

Retorne a soma acumulada de nums.

Exemplo 1:
Entrada: 1,2,3,4

Saída: [1, 3, 6, 10]

Explicação: A soma acumulada é: [1, 1+2, 1+2+3, 1+2+3+4].

Exemplo 2:
Entrada: 1,1,1,1,1

Saída: [1, 2, 3, 4, 5]

Explicação: A soma acumulada é: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1]
*/