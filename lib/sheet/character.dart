import 'character_class.dart';

class Character {
  String chracterName;
  int totalLevel;
  List<CharacterClass> characterClasses;

  Character({
    required this.chracterName,
    required this.totalLevel,
    required this.characterClasses,
  });
}