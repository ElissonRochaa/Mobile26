class Receita {
  final int id;
  final String titulo;
  final String descricao;
  //final String urlImagem;

  Receita({
    required this.id,
    required this.titulo,
    required this.descricao,
    //required this.urlImagem
  });

  factory Receita.fromJson(Map<String, dynamic> json){
    return Receita(
      id: json['id'],
      titulo: json['titulo'],
      descricao: json['descricao'],
      //urlImagem: json['urlImagem']
    );
  }

}