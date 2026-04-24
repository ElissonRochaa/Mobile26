import 'package:flutter/material.dart';

class LinhaCategoria extends StatelessWidget {
  //const LinhaCategoria({Key?key, required this.nomeCategoria}): super(key);
  const LinhaCategoria({super.key, required this.nomeCategoria});
  final String nomeCategoria;

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.09,
                height: 2,
                color: Colors.black,
              ),
              Text(nomeCategoria),
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                height: 2,
                color: Colors.black,
              ),
            ],
          );
  }
}