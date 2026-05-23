import 'package:flutter/material.dart';
import 'package:receitaapp/models/categoria.dart';
import 'package:receitaapp/services/categoria_service.dart';
import 'package:receitaapp/view/widgets/card_receita.dart';
import 'package:receitaapp/view/widgets/linha_categoria.dart';
import 'package:receitaapp/view/widgets/list_card_receita.dart';

class PaginaInicial extends StatelessWidget {
  PaginaInicial({super.key});

  final CategoriaService categoriaService = CategoriaService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ReceitApp"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.dark_mode_outlined)),
          IconButton(
            onPressed: () {
              print("Pesquisar");
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(),
      body: FutureBuilder<List<Categoria>>(

        future: categoriaService.buscarCategorias(),

        builder: (context, snapshot) {

          if (snapshot.connectionState ==
              ConnectionState.waiting) {

            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {

            return const Center(
              child: Text("Erro ao carregar categorias"),
            );
          }

          final categorias = snapshot.data ?? []; 
      
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(
                categorias.length, 
                (index) {
                  return Column(
                    children: [
                      LinhaCategoria(nomeCategoria: categorias[index].nome),
                      ListCardReceita(idCategoria: categorias[index].id)
                    ]
                  );
                }
              )
            ),
          );
        }
      ),
    );
  }
}

// Column(
//         children: [
//           LinhaCategoria(nomeCategoria: "Café da Manhã"),
//           ListCardReceita(),
//           LinhaCategoria(nomeCategoria: "Almoço"),
//           LinhaCategoria(nomeCategoria: "Jantar"),
//         ],