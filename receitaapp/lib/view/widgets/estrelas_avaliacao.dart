import 'package:flutter/material.dart';

class EstrelasAvaliacao extends StatelessWidget {
  final double notaReceita;
  const EstrelasAvaliacao({required this.notaReceita, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        IconData icon;

        if(index < notaReceita.floor()){
          icon = Icons.star_rounded;
        }else if(index < notaReceita && notaReceita % 1 > 0.4){
          icon = Icons.star_half_rounded;
        }else{
          icon = Icons.star_border_rounded;
        }

        return Icon(
          icon,
          size: 20,
          color: Theme.of(context).colorScheme.primary,
        );
      }),
      // children: [
      //   Icon(
      //     Icons.star_rounded,
      //     size: 20,
      //     color: Theme.of(context).colorScheme.primary,
      //   ),
      //   Icon(
      //     Icons.star_rounded,
      //     size: 20,
      //     color: Theme.of(context).colorScheme.primary,
      //   ),
      //   Icon(
      //     Icons.star_rounded,
      //     size: 20,
      //     color: Theme.of(context).colorScheme.primary,
      //   ),
      //   Icon(
      //     Icons.star_rounded,
      //     size: 20,
      //     color: Theme.of(context).colorScheme.primary,
      //   ),
      //   Icon(
      //     Icons.star_border_rounded,
      //     size: 20,
      //     color: Theme.of(context).colorScheme.primary,
      //   ),
      // ],
    );
  }
}
