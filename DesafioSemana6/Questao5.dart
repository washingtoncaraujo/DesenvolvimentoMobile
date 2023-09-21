import 'dart:io';

LinkedListNode<int> middleNode(LinkedListNode<int> head) {
  
  if (head.next == null) return head;

LinkedListNode<int>? lento = head.next;
LinkedListNode<int>? rapido = lento!.next;
while (rapido?.next != null) {
    lento = lento!.next;
    rapido = rapido?.next!.next;      
} 
return lento!;
}

// NÃO ALTERE O CÓDIGO DAQUI PARA BAIXO
void main() {  
  print("Digite uma lista de números inteiros separados por vírgula. Por exemplo: 1, 2, 3");
  String lista = stdin.readLineSync() ?? "";
  List nums = lista.split(",").map<int>((i) => int.parse(i)).toList();
  final linkedList = LinkedList<int>();
  for (var n in nums){ 
    linkedList.add(n);
  }

  LinkedListNode<int> midNode = middleNode(linkedList.head ?? LinkedListNode(0));

  linkedList.head = midNode;
  linkedList.printList();
}


class LinkedListNode<int> {
  int? value;
  LinkedListNode<int>? next;

  LinkedListNode(this.value);
}

class LinkedList<T> {
  LinkedListNode<T>? head; // Referencia para o primeiro nó da lista

  LinkedList();

  // Adiciona um novo nó no final da linkedList
  void add(T value) {
    final newNode = LinkedListNode<T>(value);
    if (head == null) {
      // Se a lista é vazia, coloca o novo nó como primeiro nó da lista (head)
      head = newNode;
    } else {
      var current = head;
      while (current!.next != null) {
        // Traversa a linkedList para encontrar o ultimo nó
        current = current.next;
      }
      current.next = newNode; // coloca o novo nó como próximo nó do último nó
    }
  }

   // Imprime os valores de todos os nós da lista
  void printList() {
    var current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }

}

/*
Meio da Lista Encadeada
Digite uma lista de números inteiros positivos representando uma lista encadeada (linkedList)

Dado o início de uma lista encadeada, retorne o nó do meio da lista.

Se houver dois nós intermediários, retorne o segundo nó intermediário.

Exemplo 1:
Entrada: 1, 2, 3, 4, 5

Saída: 3

4

5

Exemplo 2:
Entrada: 1,2,3,4,5,6

Saída: 4

5

6
*/