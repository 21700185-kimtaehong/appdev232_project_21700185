import 'package:appdev232_project_21700185/sheet_structure/spell.dart';
import 'package:appdev232_project_21700185/sheet_structure/trait.dart';

import 'action.dart';

class Race {
  int raceType;
  int speedType;
  int weightCapacity;
  int raceAddedHealth;

  List<Action> raceActions;
  List<Trait> raceTraits;
  List<Spell> raceSpells;
  List<int> raceRegists;

  Race({
    this.raceType = -1,
    required this.speedType,
    required this.weightCapacity,
    required this.raceAddedHealth,
    required this.raceActions,
    required this.raceTraits,
    required this.raceRegists,
    required this.raceSpells,
  });

  void addAction(List<Action> actions) {
    for (Action action in actions) {
      raceActions.add(action);
    }
  }

  void addTrait(List<Trait> traits) {
    for (Trait trait in traits) {
      raceTraits.add(trait);
    }
  }
}
