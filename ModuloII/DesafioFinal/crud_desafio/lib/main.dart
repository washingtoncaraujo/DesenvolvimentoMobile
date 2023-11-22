import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './routers/routes.dart';
import 'providers/client_provider.dart';
import 'views/clients_list.dart';
import 'views/formulaire.dart';


void main() {
 runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (ctx) => ClientProvider())
    ],
    child: MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.grey),
    useMaterial3: true,
    ),
    routes: {
      Routes.INICIAL: (_) => const ClientsList(),
      Routes.FORMULARIO: (_) => const Formulaire()
    }),
    );
  }
}

