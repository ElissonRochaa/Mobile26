import 'package:flutter/material.dart';
import 'package:receitaapp/view/widgets/estrelas_avaliacao.dart';

class CardReceita extends StatefulWidget {
  final String nomeReceita;
  final String urlImagem;
  final double notaReceita;
  const CardReceita({
    required this.nomeReceita,
    required this.urlImagem,
    required this.notaReceita,
    super.key,
  });

  @override
  State<CardReceita> createState() => _CardReceitaState();
}

class _CardReceitaState extends State<CardReceita> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 136,
          height: 136,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 8),
          child: Container(
            width: 120,
            height: 88,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(
                  widget.urlImagem,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                width: 120,
                height: 21,
                child: Center(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      widget.nomeReceita,
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 8,
          child: EstrelasAvaliacao(notaReceita: widget.notaReceita),
        ),
      ],
    );
  }
}
