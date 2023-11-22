
import 'package:flutter/material.dart';
import '../models/client.dart';
import '../services/client_service.dart';
class ClientProvider with ChangeNotifier {
 final ClientService _service = ClientService();
 Map<String, Client> _itens = {};
 ClientProvider() {
 _service.encontrar().then((value) => {_itens = value, notifyListeners()});
 }
void put(Client cliente) async {
 await _service.salvar(cliente);
 _service.encontrar().then((value) => {_itens = value, notifyListeners()});
 }
 void remove(String id) {
 _service.remover(id).then((value) => {_itens = value, notifyListeners()});
 }
}