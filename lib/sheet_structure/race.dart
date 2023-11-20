import 'package:appdev232_project_21700185/sheet_structure/spell.dart';
import 'package:appdev232_project_21700185/sheet_structure/trait.dart';
import 'package:appdev232_project_21700185/sheet_structure/proficiency.dart';

class Race {
  int speedType;
  int weightCapacity;
  int raceAddedHealth;

  List<Proficiency> raceProf;
  List<Trait> raceTraits;
  List<Spell> raceSpells;
  List<int> raceRegists;

  Race({
    required this.speedType,
    required this.weightCapacity,
    required this.raceAddedHealth,
    required this.raceProf,
    required this.raceTraits,
    required this.raceRegists,
    required this.raceSpells,
  });
}
