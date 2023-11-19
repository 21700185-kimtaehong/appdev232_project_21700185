import 'character_class.dart';
import 'race.dart';

class Character {
  String chracterName;
  int totalLevel;
  Race chracterRace;
  List<CharacterClass> characterClasses;

  Character({
    required this.chracterName,
    required this.totalLevel,
    required this.chracterRace,
    required this.characterClasses,
  });
}
