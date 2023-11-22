import 'package:flutter/material.dart';
import 'dart:math';
import '../data/standard_client.dart';
import '../models/client.dart';


class ClientProvider with ChangeNotifier {
 final Map<String, Client> _itens = {...STANDARD_CLIENTS};
 List<Client> get todos {
  return [..._itens.values];
 }
 int get contador {
  return _itens.length;
 }
 Client peloIndice(int i) {
  return _itens.values.elementAt(i);
 }
 void put(Client cliente) {
 if (cliente.id.trim().isNotEmpty && 
  _itens.containsKey(cliente.id)) {
 _itens.update(cliente.id, (_) => cliente);
 } else {
  final id = Random().nextDouble().toString();
  _itens.putIfAbsent(
  id,
  () => Client(
    id: id,
    nome: cliente.nome,
    sobrenome: cliente.sobrenome,
    email: cliente.email,
    avatarUrl: cliente.avatarUrl));
 }
 notifyListeners();
 }
 void remove(String id) {
  _itens.remove(id);
  notifyListeners();
 }
}
