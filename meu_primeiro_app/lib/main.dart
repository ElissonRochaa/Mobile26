import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meu Primeiro APP",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Garanhuns Noticia"),
          backgroundColor: Colors.grey,
        ),
        drawer: Drawer(),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width*0.9,
            height: MediaQuery.of(context).size.height*0.5,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30)
              ),
              
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Olá Turma",
                  style: TextStyle(color: const Color.fromARGB(255, 52, 17, 4), fontSize: 25),
                ),
                Text("Bem vindo a PDM 26")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
