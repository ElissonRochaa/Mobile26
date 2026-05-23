import 'dart:convert';

import 'package:receitaapp/models/receita.dart';
import 'package:http/http.dart' as http;

class ReceitaService {

  final String urlBase = "http://172.16.32.80:8080";

  Future<List<Receita>> buscarReceitaPorIdCategoria(int id) async {

    final response = await http.get(
      Uri.parse("$urlBase/receitas/categorias/$id")
    );

    if(response.statusCode == 200){

        List jsonResponse = jsonDecode(response.body);

        return jsonResponse
          .map((receita) => Receita.fromJson(receita))
          .toList();

      }else{
        throw Exception("Erro ao buscar receitas");
      }


  }

}