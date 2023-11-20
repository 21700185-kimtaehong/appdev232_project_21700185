import 'package:appdev232_project_21700185/sheet_structure/proficiency.dart';

import 'character_class.dart';

class Character {
  String chracterName;
  int raceType;
  List<Proficiency> characterProficiencies;
  List<CharacterClass> characterClasses;

  Character({
    this.chracterName = "",
    this.raceType = 0,
    required this.characterProficiencies,
    required this.characterClasses,
  });
}
