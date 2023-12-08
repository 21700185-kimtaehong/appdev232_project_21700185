import 'package:provider/provider.dart';

import 'action.dart';
import 'spell.dart';
import 'trait.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';

class CharacterClass {
  int classType;
  int classLevel;
  int numFeat;
  int extraAttackNum;

  int hitPointBase;
  int hitPointPerLevel;

  bool isCaster;
  bool isHalfCaster;

  List<CharacterAction> classActions;
  List<Trait> classTraits;
  List<Spell> classSpells;
  List<int> startingWeaponProf = [];
  List<int> classWeaponProf = [];
  int startingArmorProf;
  int classArmorProf;

  CharacterClass({
    required this.classType,
    this.hitPointBase = 0,
    this.hitPointPerLevel = 0,
    this.numFeat = 0,
    this.extraAttackNum = 0,
    this.classLevel = 0,
    this.isCaster = false,
    this.isHalfCaster = false,
    this.startingArmorProf = 0,
    this.classArmorProf = 0,
    List<CharacterAction>? classActions,
    List<Trait>? classTraits,
    List<Spell>? classSpells,
  })  : classActions = classActions ?? [],
        classTraits = classTraits ?? [],
        classSpells = classSpells ?? [];

  void addAction(List<CharacterAction> actions) {
    for (CharacterAction action in actions) {
      classActions.add(action);
    }
  }

  void addTrait(List<Trait> traits) {
    for (Trait trait in traits) {
      classTraits.add(trait);
    }
  }

  void updateClassFeatNum() {
    switch (classLevel) {
      case 0:
      case 1:
      case 2:
      case 3:
        numFeat = 0;
        break;
      case 4:
      case 5:
      case 6:
      case 7:
        numFeat = 1;
        break;
      case 8:
      case 9:
      case 10:
      case 11:
        numFeat = 2;
        break;
      case 12:
        numFeat = 3;
        break;
    }
    if (classType == FIGHTER && classLevel >= 6) {
      numFeat += 1;
    } else if (classType == ROGUE && classLevel >= 10) {
      numFeat += 1;
    }
  }

  void classLevelUp(bool up) {
    if (up) {
      classLevel++;
    } else {
      classLevel--;
    }
  }

  void setZeroClassLevel() {
    classLevel = 0;
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
