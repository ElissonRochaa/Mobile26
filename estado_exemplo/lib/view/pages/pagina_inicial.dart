
import 'package:flutter/material.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  
  int contador = 0;

  void incrementar(){
    setState(() {
      contador++;  
    });
    print(contador);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(contador.toString(),
        style: TextStyle(fontSize: 60),)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          incrementar();
        },
        child: Icon(Icons.add),),
    );
  }
}