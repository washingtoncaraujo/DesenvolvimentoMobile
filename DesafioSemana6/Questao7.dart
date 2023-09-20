import 'dart:io';

int maximum69Number(int n) {
  var numero = n.toString().split('');
  //print(numero);
  var numOp = [];
  var numComp = int.parse(numero.join());
  for(int i=0; i<numero.length; i++){
    var numMod = numero;
    switch (numero[i]){
      case '6':
        numMod[i] = '9';
        numOp.add (numMod);
        break;
      case '9':
        numMod[i] = '6';
        numOp.add (numMod);
        break;
    }
  }
  for( int i = 0; i< numOp.length; i++){
    if( int.parse(numOp[i].join()) > numComp){
      numComp = int.parse(numOp[i].join());
    }
  }
  return numComp; // Altere o retorno.
}

// NÃO ALTERE O CÓDIGO DAQUI PARA BAIXO
void main() {
  print("Digite um número inteiro");
  String str = stdin.readLineSync() ?? "";
  print(maximum69Number(int.parse(str)));
}