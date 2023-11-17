import "package:appdev232_project_21700185/sheet/spell.dart";
import "package:appdev232_project_21700185/sheet/trait.dart";
import "package:appdev232_project_21700185/sheet/proficiency.dart";

class Race {
  int movementSpeed;
  int weightCapacity;
  int raceAddedHealth;
  
  List<Proficiency> raceProf;
  List<Trait> raceTraits;
  List<Spell> raceSpells;
  List<int> raceRegists;

  Race({
    required this.movementSpeed,
    required this.weightCapacity,
    required this.raceAddedHealth,
    required this.raceProf,
    required this.raceTraits,
    required this.raceRegists,
    required this.raceSpells,
  });
}