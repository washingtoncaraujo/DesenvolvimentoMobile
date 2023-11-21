import 'dart:convert';

import 'package:crud_app/models/client.dart';
import 'package:http/http.dart' as http;

class Routes {
 static const INICIAL = '/';
 static const FORMULARIO = '/formulario';
/*
 Future<List<Client>> getClientes() async {
  var uriRest = Uri.parse('http://localhost:8080/clientes');
  var resposta = await http.get(uriRest);
  if(resposta.statusCode != 200) throw Exception("Erro Rest API");
  Iterable listDart = json.decode(resposta.body);
   var listCliente = <Client>[];
  for(Map<String, dynamic> item in listDart){
    listCliente.add(Client(
      id: item['id'], 
      nome: item['nome'], 
      sobrenome: item['sobrenome'],
      email: item['email'], 
      avatarUrl: item['avatarUrl']));
  }
  return listCliente;
  }
  */
}
