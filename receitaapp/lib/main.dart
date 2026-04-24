import 'package:flutter/material.dart';
import 'package:receitaapp/config/theme_light.dart';
import 'package:receitaapp/view/pages/pagina_inicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Receita App",
      theme: ThemeLight.theme,
      home: PaginaInicial(), 
    );
  }
}