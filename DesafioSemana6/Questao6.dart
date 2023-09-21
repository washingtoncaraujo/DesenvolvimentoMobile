import 'dart:io';

bool canConstruct(String bilhete, String oraculo) {
  Map<String, int> valor = {};
  for (int i = 0; i < oraculo.length; i++) {
    String letra = oraculo[i];
    if (letra != " ") { 
      valor[letra] = (valor[letra] ?? 0) + 1;
    }
  }  
  for (int i = 0; i < bilhete.length; i++) {
    String letra = bilhete[i];
   if (letra != " ") { 
      if (!valor.containsKey(letra) || valor[letra] == 0) {
        return false;
      }
      valor[letra] = valor[letra]! - 1;
    }
          
  }
return true; // Altere o retorno.  
}
/* Versão 1:
bool canConstruct(String bilhete, String oraculo) {
  var ref = oraculo.split('');
  var bilhe = bilhete.split('');
  int tref = ref.length;
  int tbilhe = bilhe.length;
  if (ref.length < bilhe.length){
    return false;
  } else {
    for (int i=0; i<=tref; i++){
      for (int j=0; j< tbilhe; j++){
        if(ref[i] == bilhe[j]){
          do {
            ref.removeAt(i);
            tref = ref.length;
            bilhe.removeAt(j);
            tbilhe = bilhe.length;
            if(bilhe.length == 0) return true;
          } while(ref[i] == bilhe[j]);
          print(bilhe);
          
        }
 }   
    }
    if (bilhe.length == 0){
      return true;
    }
  }
*/
       /*if (bilhe.length == 1) j = bilhe.length-1;
       if (bilhe[j] == ref[i]) {
         ref.removeAt(i);
         tref = ref.length;
         if (i != 0) --i;
          print(ref);
          print(i);
          bilhe.removeAt(j);
          tbilhe = bilhe.length;
          if (j != 0) --j;
          if(bilhe[j] == ref[i]){
          }
          print(bilhe);
          print(j);
          if(bilhe.length == 0) return true;
        }*/
     
  

// NÃO ALTERE O CÓDIGO DAQUI PARA BAIXO
void main() {
  print("Digite duas strings compostas somente por letras. A primeira string é a bilhete e a segunda oráculo. Elas devem ser separadas por '*'. Por exemplo: a * b");
  String lista = stdin.readLineSync() ?? "";
  List strings = lista.split("*");
  print(canConstruct(strings[0], strings[1]));
}

/*
Bilhete do Oráculo
Digite duas strings compostas somente por letras. A primeira string é a "bilhete" e a segunda é a "oráculo". Elas devem ser separadas por '*'. Por exemplo: a * b.

Dadas duas strings bilhete e oráculo, retorne true se bilhete puder ser construído usando as letras de oráculo e false caso contrário.

Cada letra do oráculo só pode ser usada uma vez no bilhete.

Exemplo 1:
Entrada: a * b

Saída: false

Exemplo 2:
Entrada: aa * ab

Saída: false

Exemplo 3:
Entrada: aa * aab

Saída: true
*/