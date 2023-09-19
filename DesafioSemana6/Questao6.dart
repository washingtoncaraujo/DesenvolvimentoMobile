import 'dart:io';

bool canConstruct(String bilhete, String oraculo) {
  var ref = oraculo.split('');
  var bilhe = bilhete.split('');
  int tref = ref.length;
  int tbilhe = bilhe.length;
  if (ref.length < bilhe.length){
    return false;
  } else {
    for (int i=0; i<tref; i++){
      for (int j=0; j< tbilhe; j++){
        if (bilhe[j] == ref[i]) {
          ref.removeAt(i);
          ++i;
          bilhe.removeAt(j);
          --j;
          print(bilhe.length);
        }
      }      
    }
    if (bilhe.length == 0){
      return true;
    }
  }
  return false; // Altere o retorno.  
}

// NÃO ALTERE O CÓDIGO DAQUI PARA BAIXO
void main() {
  print("Digite duas strings compostas somente por letras. A primeira string é a bilhete e a segunda oráculo. Elas devem ser separadas por '*'. Por exemplo: a * b");
  String lista = stdin.readLineSync() ?? "";
  List strings = lista.split("*");
  print(canConstruct(strings[0], strings[1]));
}
