import 'proficiency.dart';
import 'character_class.dart';

class Character {
  String chracterName;
  late int raceType;
  late int backgroundType;
  List<Proficiency> characterProficiencies;
  late List<CharacterClass> characterClasses;

  Character({
    this.chracterName = "",
    required this.characterProficiencies,
  });
}
