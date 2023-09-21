import 'dart:io';

int maximum69Number(int n) {
  var numero = n.toString().split('');
  var numOp = [];
  var numComp = int.parse(numero.join());
  var numMod = numero;
  
  for(int i=0; i<numero.length; i++){   
    switch (numero[i]){        
      case '6':
        numMod[i] = '9';
        numOp.add(numMod);
        break;
      case '9':
        numMod[i] = '6';
        numOp.add(numMod);
        break;
    }
  numMod = numComp.toString().split('');
  }
  for( int i = 0; i< numOp.length; i++){
    if( int.parse(numOp[i].join()) > numComp){
      numComp = int.parse(numOp[i].join());
    }
  }
  return numComp; 
}

// NÃO ALTERE O CÓDIGO DAQUI PARA BAIXO
void main() {
  print("Digite um número inteiro");
  String str = stdin.readLineSync() ?? "";
  print(maximum69Number(int.parse(str)));
}

/*
Número Máximo 69
Você recebe um número inteiro positivo que consiste apenas nos dígitos 6 e 9

Retorne o número máximo obtido alterando no máximo um dígito (6 torna-se 9 e 9 torna-se 6)

Exemplo 1:
Entrada: 9669

Saída: 9969

Explicação:

Alterar o primeiro dígito resulta em 6669;
Alterar o segundo dígito resulta em 9969;
Alterar o terceiro dígito resulta em 9699;
Alterar o quarto dígito resulta em 9666;
Exemplo 2:
Entrada: num = 9996

Saída: 9999

Explicação: Mudando o último número 6 para 9 resulta no maior número

Exemplo 3:
Entrada: num = 9999

Saída: 9999

Explicação: É melhor não fazer nenhuma alteração
*/