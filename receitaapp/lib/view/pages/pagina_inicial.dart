import 'package:flutter/material.dart';
import 'package:receitaapp/view/widgets/linha_categoria.dart';


class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ReceitApp"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.dark_mode_outlined)),
          IconButton(onPressed: () {
            print("PEsquisar");
          }, icon: Icon(Icons.search)),
          
        ],
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          LinhaCategoria(nomeCategoria: "Café da Manhã"),
          LinhaCategoria(nomeCategoria: "Almoço",),
          LinhaCategoria(nomeCategoria: "Jantar",),
        ],
        ),
    );
  }
}