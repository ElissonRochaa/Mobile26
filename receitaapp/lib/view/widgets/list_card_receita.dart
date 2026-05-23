
import 'package:flutter/material.dart';
import 'package:receitaapp/models/receita.dart';
import 'package:receitaapp/services/receita_service.dart';
import 'package:receitaapp/view/widgets/card_receita.dart';

class ListCardReceita extends StatelessWidget {
  final int idCategoria;

  ListCardReceita({super.key, required this.idCategoria});

  ReceitaService receitaService = ReceitaService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Receita>>(

      future: receitaService.buscarReceitaPorIdCategoria(idCategoria),

      builder: (context, snapshot) {

        if (snapshot.connectionState ==
            ConnectionState.waiting) {

          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasError) {

          return const Center(
            child: Text("Erro ao carregar receitas"),
          );
        }

        final receitas = snapshot.data ?? [];
    

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(
            left: 8,
            top: 12,
            bottom: 12,
            right: 8,
          ),
          child: Row(
            children: List.generate(receitas.length, 
              (index){
                return Row(
                  children: [
                    CardReceita(
                      nomeReceita: receitas[index].titulo,
                      urlImagem:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkAel3vNNGcBSC6qn_7ir93--YqGUsDlORdQ&s",
                      notaReceita: 2.0,
                    ),
                    SizedBox(width: 24,),
                  ],
                );
              }
            ),
          ),
        );
      }
    );
  }
}


// CardReceita(
//                   nomeReceita: "Tapioca de Queijo",
//                   urlImagem:
//                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkAel3vNNGcBSC6qn_7ir93--YqGUsDlORdQ&s",
//                   notaReceita: 2.0,
//                 ),
//                 SizedBox(
//                   width: 24,
//                 ),
//                 CardReceita(
//                   nomeReceita: "Pão Assado", 
//                   urlImagem: "https://images.pexels.com/photos/2000511/pexels-photo-2000511.jpeg", 
//                   notaReceita: 4.5,
//                 ),
//                 SizedBox(
//                   width: 24,
//                 ),
//                 CardReceita(
//                   nomeReceita: "Cuscuz com Queijo",
//                   urlImagem: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGU2g1YY4vODPR92G1ICPR-fYXMIa-402D_w&s",
//                   notaReceita: 5.0,
//                 ),