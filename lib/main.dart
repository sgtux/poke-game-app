import 'package:flutter/material.dart';

import 'src/pages/pokemon_saved.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: PokemonSavedList(),
    );
  }
}
