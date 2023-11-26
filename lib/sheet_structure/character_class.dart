import 'action.dart';
import 'spell.dart';
import 'trait.dart';

class CharacterClass {
  int classType;
  int classLevel;
  bool isCaster;
  bool isHalfCaster;

  List<Action> classActions;
  List<Trait> classTraits;
  List<Spell> classSpells;

  CharacterClass({
    required this.classType,
    this.classLevel = 0,
    this.isCaster = false,
    this.isHalfCaster = false,
    List<Action>? classActions,
    List<Trait>? classTraits,
    List<Spell>? classSpells,
  })  : classActions = classActions ?? [],
        classTraits = classTraits ?? [],
        classSpells = classSpells ?? [];

  void addAction(List<Action> actions) {
    for (Action action in actions) {
      classActions.add(action);
    }
  }

  void addTrait(List<Trait> traits) {
    for (Trait trait in traits) {
      classTraits.add(trait);
    }
  }

  void upClassLevel(bool up) {
    if (up) {
      classLevel++;
    } else {
      classLevel--;
    }
  }
}

// CharacterClass bard = CharacterClass(classType: BARD, isCaster: true);
// CharacterClass barbarian = CharacterClass(classType: BARBARIAN);
// CharacterClass cleric = CharacterClass(classType: CLERIC, isCaster: true);
// CharacterClass druid =
//     CharacterClass(classType: DRUID, isCaster: true, isHalfCaster: true);
// CharacterClass fighter = CharacterClass(classType: FIGHTER);
// CharacterClass monk = CharacterClass(classType: MONK);
// CharacterClass paladin =
//     CharacterClass(classType: PALADIN, isCaster: true, isHalfCaster: true);
// CharacterClass ranger =
//     CharacterClass(classType: RANGER, isCaster: true, isHalfCaster: true);
// CharacterClass rogue = CharacterClass(classType: ROGUE);
// CharacterClass sorcerer = CharacterClass(classType: SORCERER, isCaster: true);
// CharacterClass warlock = CharacterClass(classType: WARLOCK);
// CharacterClass wizard = CharacterClass(classType: WIZARD, isCaster: true);
