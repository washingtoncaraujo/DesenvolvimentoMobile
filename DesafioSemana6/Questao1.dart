import 'dart:io';

List arraySum(List nums) { 
  var soma = [];
  if (nums.length == 1){
    return [nums];
  } else {
    soma.add(nums [0]);
    for (int i=1; i<=nums.length; i++){
      soma.add((nums[i] + nums[i-1]));
    }
  }
  nums = soma;
  return [nums]; // Altere o retorno.
}

// NÃO ALTERE O CÓDIGO DAQUI PARA BAIXO
void main() {
  print("Digite uma lista de números inteiros separados por vírgula. Por exemplo: 1, 2, 3");
  String? lista = stdin.readLineSync();
  List nums = lista?.split(",").map<int>((i) => int.parse(i)).toList() ?? [];
  print(arraySum(nums));
}