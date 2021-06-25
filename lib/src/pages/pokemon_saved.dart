import 'package:flutter/material.dart';
import 'pokemon-shop.dart';

class PokemonSavedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus Pokémons"),
      ),
      body: Text("Meus Pokémons"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PokemonShop()));
        },
        child: Text("Loja"),
      ),
    );
  }
}
