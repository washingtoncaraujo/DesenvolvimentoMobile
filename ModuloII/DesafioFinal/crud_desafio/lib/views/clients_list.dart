import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/client_widget.dart';

import '../providers/client_provider.dart';
import '../routers/routes.dart';


class ClientsList extends StatelessWidget {
 const ClientsList({super.key});
 @override
 Widget build(BuildContext context) {
    final ClientProvider clientes = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text('Lista de clientes'),
        actions: <Widget>[
          IconButton(
          iconSize: 50,
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.FORMULARIO);
          },
          icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
      itemCount: clientes.contador,
      itemBuilder: (ctx, i) =>
      ClientWidget(cliente: clientes.peloIndice(i))),

 );
 }
}
