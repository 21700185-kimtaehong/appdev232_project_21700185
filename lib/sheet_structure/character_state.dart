import 'package:appdev232_project_21700185/class_default/fighter_default.dart';
import 'package:appdev232_project_21700185/sheet_structure/proficiency.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character.dart';
import 'package:appdev232_project_21700185/sheet_structure/race.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';

class CharacterState with ChangeNotifier {
  // ignore: prefer_final_fields
  Character _currCharacter = Character();
  Character get currCharacter => _currCharacter;

  void setRace(int raceType) {
    _currCharacter.raceType = raceType;
    switch (raceType) {
      case HUMAN:
        _currCharacter.activeRace = Human();
        (_currCharacter.activeRace as Human)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case HIGHELF:
        _currCharacter.activeRace = HighElf();
        (_currCharacter.activeRace as HighElf)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      default:
        print('failed while setRace()');
        break;
    }
    notifyListeners();
  }

  void setBackground(int backgroundType) {
    _currCharacter.backgroundType = backgroundType;
    switch (backgroundType) {
      case ACOLYTE:
        _currCharacter.characterProficiencies[8].isSkilled += 1;
        _currCharacter.characterProficiencies[10].isSkilled += 1;
        break;
      case CHARLATAN:
        _currCharacter.characterProficiencies[2].isSkilled += 1;
        _currCharacter.characterProficiencies[15].isSkilled += 1;
        break;
      case CRIMINAL:
        _currCharacter.characterProficiencies[3].isSkilled += 1;
        _currCharacter.characterProficiencies[15].isSkilled += 1;
        break;
      case ENTERTAINER:
        _currCharacter.characterProficiencies[1].isSkilled += 1;
        _currCharacter.characterProficiencies[14].isSkilled += 1;
        break;
      case FOLKHERO:
        _currCharacter.characterProficiencies[7].isSkilled += 1;
        _currCharacter.characterProficiencies[9].isSkilled += 1;
        break;
      case GUILDARTISAN:
        _currCharacter.characterProficiencies[10].isSkilled += 1;
        _currCharacter.characterProficiencies[17].isSkilled += 1;
        break;
      case NOBLE:
        _currCharacter.characterProficiencies[5].isSkilled += 1;
        _currCharacter.characterProficiencies[17].isSkilled += 1;
        break;
      case OUTLANDER:
        _currCharacter.characterProficiencies[0].isSkilled += 1;
        _currCharacter.characterProficiencies[2].isSkilled += 1;
        break;
      case SAGE:
        _currCharacter.characterProficiencies[4].isSkilled += 1;
        _currCharacter.characterProficiencies[5].isSkilled += 1;
        break;
      case SOLDIER:
        _currCharacter.characterProficiencies[0].isSkilled += 1;
        _currCharacter.characterProficiencies[16].isSkilled += 1;
        break;
      case URCHIN:
        _currCharacter.characterProficiencies[2].isSkilled += 1;
        _currCharacter.characterProficiencies[3].isSkilled += 1;
        break;
      case HAUNTED:
        _currCharacter.characterProficiencies[11].isSkilled += 1;
        _currCharacter.characterProficiencies[16].isSkilled += 1;
        break;
    }
    notifyListeners();
  }

  void updateClassState(int classType) {
    switch (classType) {
      case FIGHTER:
        (_currCharacter.characterClasses[classType - 10] as FighterClass)
            .updateFighterClass();
        break;
      default:
        break;
    }
  }

  void updateCommonState() {
    switch (_currCharacter.totalLevel) {
      case 0:
        _currCharacter.hitpoints = 0;
        _currCharacter.proficiencyBonus = 0;
        break;
      case 1:
      case 2:
      case 3:
      case 4:
        _currCharacter.proficiencyBonus = 2;
        break;
      case 5:
      case 6:
      case 7:
      case 8:
        _currCharacter.proficiencyBonus = 3;
        break;
      case 9:
      case 10:
      case 11:
      case 12:
        _currCharacter.proficiencyBonus = 4;
        break;
      default:
        break;
    }
  }

  void classLevelUp(int classType, bool up) {
    if (up) {
      if (_currCharacter.characterClasses[classType - 10].classLevel < 12 &&
          _currCharacter.totalLevel < 12) {
        _currCharacter.characterClasses[classType - 10].classLevelUp(up);
        _currCharacter.totalLevel++;
      } else {
        print('error in classLevelUp().');
      }
    } else {
      if (_currCharacter.characterClasses[classType - 10].classLevel > 0) {
        _currCharacter.characterClasses[classType - 10].classLevelUp(up);
        _currCharacter.totalLevel--;
        if (_currCharacter.characterClasses[classType - 10].classLevel == 0) {
          _currCharacter.activeClasses[classType - 10] = false;
        }
      } else {
        print('error in classLevelUp().');
      }
    }
    _currCharacter.updateCharacterLevel;
    _currCharacter.updateFeatNum();
    updateClassState(classType);
    updateCommonState();
    notifyListeners();
  }

  void classLevelZero(int classType) {
    _currCharacter.totalLevel -=
        _currCharacter.characterClasses[classType - 10].classLevel;
    _currCharacter.characterClasses[classType - 10].setZeroClassLevel();
    updateClassState(classType);
    updateCommonState();
    notifyListeners();
  }

  void activateClassState(int classType) {
    if (_currCharacter.totalLevel < 12) {
      _currCharacter.activateClass(classType);
      notifyListeners();
    }
  }

  void deactivateClassState(int classType) {
    _currCharacter.deactivateClass(classType);
    notifyListeners();
  }

  void updateAbilityState(
      int abilityType, bool updown, int addedType, int amount) {
    switch (abilityType) {
      case STR:
        _currCharacter.characterAbility.updateAbility(
            _currCharacter.characterAbility.strength,
            updown,
            addedType,
            amount);
        notifyListeners();
        break;
      case DEX:
        _currCharacter.characterAbility.updateAbility(
            _currCharacter.characterAbility.dexterity,
            updown,
            addedType,
            amount);
        notifyListeners();
        break;
      case CON:
        _currCharacter.characterAbility.updateAbility(
            _currCharacter.characterAbility.constitution,
            updown,
            addedType,
            amount);
        notifyListeners();
        break;
      case INT:
        _currCharacter.characterAbility.updateAbility(
            _currCharacter.characterAbility.intelligence,
            updown,
            addedType,
            amount);
        notifyListeners();
        break;
      case WIS:
        _currCharacter.characterAbility.updateAbility(
            _currCharacter.characterAbility.wisdom, updown, addedType, amount);
        notifyListeners();
        break;
      case CHA:
        _currCharacter.characterAbility.updateAbility(
            _currCharacter.characterAbility.charisma,
            updown,
            addedType,
            amount);
        notifyListeners();
        break;
    }
  }

  void updateAdd1type (int index) {
    _currCharacter.characterAbility.updateAdd1type(index);
    notifyListeners();
  }

  void updateAdd2type (int index) {
    _currCharacter.characterAbility.updateAdd2type(index);
    notifyListeners();
  }
}
