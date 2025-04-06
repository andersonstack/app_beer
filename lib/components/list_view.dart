import 'package:flutter/material.dart';

class ListBeer extends StatelessWidget {
  const ListBeer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista de Cervejas")),
      body: Center(child: Text("Cervejas")),
    );
  }
}
