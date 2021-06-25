import 'dart:convert';
import 'package:http/http.dart' as http;

import '../utils/constants.dart';

Future<Pokemon> fetchPokemon(id) async {
  final response = await http.get(Uri.parse("$URL_API/pokemon?id=$id"));

  if (response.statusCode == 200) {
    return Pokemon.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Failed to load Pokémon.");
  }
}

class PokemonType {
  final String name;
  final int slot;
  final String url;

  PokemonType({required this.name, required this.slot, required this.url});
}

class PokemonStat {
  final String name;
  final int value;
  final int effort;

  PokemonStat({required this.name, required this.value, required this.effort});
}

class Pokemon {
  final int id;
  final String name;
  final String image;
  final int experience;
  final int height;
  final int weight;

  Pokemon(
      {required this.id,
      required this.name,
      required this.image,
      required this.experience,
      required this.height,
      required this.weight});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    String name = json['name'];
    print("URL IMAGE: $URL_API/pokemon${json['image']}");
    return Pokemon(
      id: json['id'],
      name: name.toUpperCase(),
      image: "$URL_API/pokemon${json['image']}",
      experience: json['experience'],
      weight: json['weight'],
      height: json['height'],
    );
  }
}
