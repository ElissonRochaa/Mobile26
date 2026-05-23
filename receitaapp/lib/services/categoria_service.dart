
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:receitaapp/models/categoria.dart';

class CategoriaService {

    //atributos
    //emulador
    //final String urlBase = "http://10.0.2.2:8080";
    //chrome
    final String urlBase = "http://172.16.32.80:8080";

    //métodos
    //Buscar Categorias
    Future<List<Categoria>> buscarCategorias() async {

      final response = await http.get(
        Uri.parse("$urlBase/categorias")
      );

      if(response.statusCode == 200){

        List jsonResponse = jsonDecode(response.body);

        return jsonResponse
          .map((categoria) => Categoria.fromJson(categoria))
          .toList();

      }else{
        throw Exception("Erro ao buscar categorias");
      }

    }  

}