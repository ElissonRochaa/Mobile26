import 'package:estado_exemplo/view/pages/pagina_inicial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Teste estado",
      home: PaginaInicial(),
    );
  }
}