import 'package:appdev232_project_21700185/class_default/fighter_default.dart';
import 'package:appdev232_project_21700185/class_default/bard_default.dart';
import 'package:appdev232_project_21700185/class_default/barbarian_default.dart';
import 'package:appdev232_project_21700185/class_default/cleric_default.dart';
import 'package:appdev232_project_21700185/class_default/druid_default.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_class.dart';
import 'package:appdev232_project_21700185/sheet_structure/proficiency.dart';
import 'package:appdev232_project_21700185/sheet_structure/character.dart';
import 'package:appdev232_project_21700185/sheet_structure/race.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';

import 'package:flutter/material.dart';

class CharacterState with ChangeNotifier {
  // ignore: prefer_final_fields
  Character _currCharacter = Character();
  Character get currCharacter => _currCharacter;

  void setRace(int raceType) {
    _currCharacter.raceType = raceType;
    switch (raceType) {
      case HIGHELF:
        _currCharacter.activeRace = HighElf();
        (_currCharacter.activeRace as HighElf)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case WOODELF:
        _currCharacter.activeRace = WoodElf();
        (_currCharacter.activeRace as WoodElf)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case ASMODEUSTIF:
        _currCharacter.activeRace = AsmodeusTieFling();
        (_currCharacter.activeRace as AsmodeusTieFling)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case MEPHISTOPHELESTIF:
        _currCharacter.activeRace = MephistophelesTiefling();
        (_currCharacter.activeRace as MephistophelesTiefling)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case ZARIELTIF:
        _currCharacter.activeRace = ZarielTiefling();
        (_currCharacter.activeRace as ZarielTiefling)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case SELDARINEDROW:
        _currCharacter.activeRace = SeldarineDrow();
        (_currCharacter.activeRace as SeldarineDrow)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case LOLTHDROW:
        _currCharacter.activeRace = LolthDrow();
        (_currCharacter.activeRace as LolthDrow)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case HUMAN:
        _currCharacter.activeRace = Human();
        (_currCharacter.activeRace as Human)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case GITHYANKI:
        _currCharacter.activeRace = GithYanki();
        (_currCharacter.activeRace as GithYanki)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case GOLDDWARF:
        _currCharacter.activeRace = GoldDwarf();
        (_currCharacter.activeRace as GoldDwarf)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case SHIELDDWARF:
        _currCharacter.activeRace = ShieldDwarf();
        (_currCharacter.activeRace as ShieldDwarf)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case DUERGA:
        _currCharacter.activeRace = Duerga();
        (_currCharacter.activeRace as Duerga)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case HIGHHALF:
        _currCharacter.activeRace = HighHalfElf();
        (_currCharacter.activeRace as HighHalfElf)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case WOODHALF:
        _currCharacter.activeRace = WoodHalfElf();
        (_currCharacter.activeRace as WoodHalfElf)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case DROWHALF:
        _currCharacter.activeRace = DrowHalfElf();
        (_currCharacter.activeRace as DrowHalfElf)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case LIGHTFOOTHAL:
        _currCharacter.activeRace = LightfootHalfling();
        (_currCharacter.activeRace as LightfootHalfling)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case STRONGHEARTHAL:
        _currCharacter.activeRace = StrongheartHalfling();
        (_currCharacter.activeRace as StrongheartHalfling)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case FORESTGNOME:
        _currCharacter.activeRace = ForestGnome();
        (_currCharacter.activeRace as ForestGnome)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case DEEPGNOME:
        _currCharacter.activeRace = DeepGnome();
        (_currCharacter.activeRace as DeepGnome)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case BLACKBORN:
        _currCharacter.activeRace = BlackBorn();
        (_currCharacter.activeRace as BlackBorn)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case BLUEBORN:
        _currCharacter.activeRace = BlueBorn();
        (_currCharacter.activeRace as BlueBorn)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case BRASSBORN:
        _currCharacter.activeRace = BrassBorn();
        (_currCharacter.activeRace as BrassBorn)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case BRONZEBORN:
        _currCharacter.activeRace = BronzeBorn();
        (_currCharacter.activeRace as BronzeBorn)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case COPPERBORN:
        _currCharacter.activeRace = CopperBorn();
        (_currCharacter.activeRace as CopperBorn)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case GOLDBORN:
        _currCharacter.activeRace = GoldBorn();
        (_currCharacter.activeRace as GoldBorn)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case GREENBORN:
        _currCharacter.activeRace = GreenBorn();
        (_currCharacter.activeRace as GreenBorn)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case REDBORN:
        _currCharacter.activeRace = RedBorn();
        (_currCharacter.activeRace as RedBorn)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case SILVERBORN:
        _currCharacter.activeRace = SilverBorn();
        (_currCharacter.activeRace as SilverBorn)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case WHITEBORN:
        _currCharacter.activeRace = WhiteBorn();
        (_currCharacter.activeRace as WhiteBorn)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      case HALFORC:
        _currCharacter.activeRace = HalfOrc();
        (_currCharacter.activeRace as HalfOrc)
            .updateRaceState(_currCharacter.totalLevel);
        break;
      default:
        break;
    }
    updateArmorProfState();
    updateWeaponProfState();
    updateSkillProfState();
    notifyListeners();
  }

  void setBackground(int backgroundType) {
    _currCharacter.backgroundType = backgroundType;
    switch (backgroundType) {
      case ACOLYTE:
        _currCharacter.backgroundProf = [8, 10];
        break;
      case CHARLATAN:
        _currCharacter.backgroundProf = [2, 15];
        break;
      case CRIMINAL:
        _currCharacter.backgroundProf = [3, 15];
        break;
      case ENTERTAINER:
        _currCharacter.backgroundProf = [1, 14];
        break;
      case FOLKHERO:
        _currCharacter.backgroundProf = [7, 9];
        break;
      case GUILDARTISAN:
        _currCharacter.backgroundProf = [10, 17];
        break;
      case NOBLE:
        _currCharacter.backgroundProf = [5, 17];
        break;
      case OUTLANDER:
        _currCharacter.backgroundProf = [0, 2];
        break;
      case SAGE:
        _currCharacter.backgroundProf = [4, 5];
        break;
      case SOLDIER:
        _currCharacter.backgroundProf = [0, 16];
        break;
      case URCHIN:
        _currCharacter.backgroundProf = [2, 3];
        break;
      case HAUNTED:
        _currCharacter.backgroundProf = [11, 16];
        break;
    }
    updateSkillProfState();
    notifyListeners();
  }

  void updateClassState(int classType) {
    switch (classType) {
      case BARD:
        (_currCharacter.characterClasses[classType - 10] as BardClass)
            .updateBardClass();
        break;
      case BARBARIAN:
        (_currCharacter.characterClasses[classType - 10] as BarbarianClass)
            .updateBarbarianClass();
        break;
      case CLERIC:
        (_currCharacter.characterClasses[classType - 10] as ClericClass)
            .updateClericClass();
        break;
      case DRUID:
        (_currCharacter.characterClasses[classType - 10] as DruidClass)
            .updateDruidClass();
        break;
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
        _currCharacter.characterClasses[classType - 10].updateClassFeatNum();
        _currCharacter.totalLevel++;
      }
    } else {
      if (_currCharacter.characterClasses[classType - 10].classLevel > 1) {
        _currCharacter.characterClasses[classType - 10].classLevelUp(up);
        _currCharacter.characterClasses[classType - 10].updateClassFeatNum();
        _currCharacter.totalLevel--;
        if (_currCharacter.characterClasses[classType - 10].classLevel == 0) {
          _currCharacter.activeClasses[classType - 10] = false;
        }
      } else if (_currCharacter.characterClasses[classType - 10].classLevel ==
          1) {
        deactivateClassState(classType);
      }
    }
    _currCharacter.updateCharacterLevel;
    _currCharacter.updateFeatNum();
    updateClassState(classType);
    updateHitPointState();
    updateCommonState();
    updateSkillProfState();
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
      if (_currCharacter.totalLevel == 0) {
        _currCharacter.startingClassType = classType;
      }
      _currCharacter.activateClass(classType);
      updateClassState(classType);
      updateCommonState();
      updateHitPointState();
      updateWeaponProfState();
      updateArmorProfState();
      updateSkillProfState();
      notifyListeners();
    }
  }

  void deactivateClassState(int classType) {
    _currCharacter.deactivateClass(classType);
    if (classType == _currCharacter.startingClassType) {
      if (_currCharacter.totalLevel == 0) {
        _currCharacter.startingClassType = -1;
      } else {
        for (int i = 0; i < _currCharacter.activeClasses.length; i++) {
          if (_currCharacter.activeClasses[i]) {
            _currCharacter.startingClassType = i + BARD;
          }
        }
      }
    }

    updateClassState(classType);
    updateHitPointState();
    updateCommonState();
    updateSkillProfState();
    updateWeaponProfState();
    updateArmorProfState();
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
        break;
      case DEX:
        _currCharacter.characterAbility.updateAbility(
            _currCharacter.characterAbility.dexterity,
            updown,
            addedType,
            amount);
        break;
      case CON:
        _currCharacter.characterAbility.updateAbility(
            _currCharacter.characterAbility.constitution,
            updown,
            addedType,
            amount);
        updateHitPointState();
        break;
      case INT:
        _currCharacter.characterAbility.updateAbility(
            _currCharacter.characterAbility.intelligence,
            updown,
            addedType,
            amount);
        break;
      case WIS:
        _currCharacter.characterAbility.updateAbility(
            _currCharacter.characterAbility.wisdom, updown, addedType, amount);
        break;
      case CHA:
        _currCharacter.characterAbility.updateAbility(
            _currCharacter.characterAbility.charisma,
            updown,
            addedType,
            amount);
        break;
    }
    updateSkillProfState();
    notifyListeners();
  }

  void updateAdd1type(int index) {
    _currCharacter.characterAbility.updateAdd1type(index);
    notifyListeners();
  }

  void updateAdd2type(int index) {
    _currCharacter.characterAbility.updateAdd2type(index);
    notifyListeners();
  }

  void updateSkillProfState() {
    _currCharacter.updateProficiency();
    updateSkillBonusState();
    notifyListeners();
  }

  void updateSkillBonusState() {
    for (int i = 0; i < _currCharacter.characterProficiencies.length; i++) {
      Proficiency currSkill = _currCharacter.characterProficiencies[i];
      int currAbilityModifier = 0;
      int currLevelBonus = _currCharacter.proficiencyBonus;
      int temp = 0;
      switch (currSkill.baseAbilityType) {
        case STR:
          if (_currCharacter.characterAbility.strength[5] > 10) {
            currAbilityModifier =
                (_currCharacter.characterAbility.strength[5] - 10) ~/ 2;
          } else {
            currAbilityModifier = 0;
          }
          break;
        case DEX:
          if (_currCharacter.characterAbility.dexterity[5] > 10) {
            currAbilityModifier =
                (_currCharacter.characterAbility.dexterity[5] - 10) ~/ 2;
          } else {
            currAbilityModifier = 0;
          }
          break;
        case CON:
          if (_currCharacter.characterAbility.constitution[5] > 10) {
            currAbilityModifier =
                (_currCharacter.characterAbility.constitution[5] - 10) ~/ 2;
          } else {
            currAbilityModifier = 0;
          }
          break;
        case INT:
          if (_currCharacter.characterAbility.intelligence[5] > 10) {
            currAbilityModifier =
                (_currCharacter.characterAbility.intelligence[5] - 10) ~/ 2;
          } else {
            currAbilityModifier = 0;
          }
          break;
        case WIS:
          if (_currCharacter.characterAbility.wisdom[5] > 10) {
            currAbilityModifier =
                (_currCharacter.characterAbility.wisdom[5] - 10) ~/ 2;
          } else {
            currAbilityModifier = 0;
          }
          break;
        case CHA:
          if (_currCharacter.characterAbility.charisma[5] > 10) {
            currAbilityModifier =
                (_currCharacter.characterAbility.charisma[5] - 10) ~/ 2;
          } else {
            currAbilityModifier = 0;
          }
          break;
        default:
          break;
      }
      temp += currAbilityModifier;
      if (currSkill.isSkilled) {
        temp += currLevelBonus;
        if (currSkill.isDoubleSkilled) {
          temp += currLevelBonus;
          if (currSkill.isExpertised) {
            temp += currLevelBonus;
          }
        }
      } else if (_currCharacter.activeClasses[0]) {
        if ((_currCharacter.characterClasses[0] as BardClass).joat) {
          temp += (currLevelBonus / 2).ceil();
        }
      }
      _currCharacter.characterProficiencies[i].skillBonus = temp;
    }
  }

  void updateArmorProfState() {
    _currCharacter.characterArmorProf = [false, false, false, false];
    if (_currCharacter.raceType != -1) {
      _currCharacter
          .characterArmorProf[_currCharacter.activeRace.raceArmorProf] = true;
    }
    if (_currCharacter.startingClassType != -1) {
      _currCharacter.characterArmorProf[_currCharacter
          .characterClasses[_currCharacter.startingClassType - BARD]
          .startingArmorProf] = true;
    }
    for (int i = 0; i < _currCharacter.activeClasses.length; i++) {
      if (_currCharacter.activeClasses[i]) {
        _currCharacter.characterArmorProf[
            _currCharacter.characterClasses[i].classArmorProf] = true;
      }
    }
  }

  void updateWeaponProfState() {
    _currCharacter.characterWeaponProf = List.filled(34, false);
    if (_currCharacter.raceType != -1) {
      for (int i = 0;
          i < _currCharacter.activeRace.raceWeaponProf.length;
          i++) {
        _currCharacter.characterWeaponProf[
            _currCharacter.activeRace.raceWeaponProf[i]] = true;
      }
    }
    if (_currCharacter.startingClassType != -1) {
      for (int i = 0;
          i <
              _currCharacter
                  .characterClasses[_currCharacter.startingClassType - BARD]
                  .startingWeaponProf
                  .length;
          i++) {
        _currCharacter.characterWeaponProf[_currCharacter
            .characterClasses[_currCharacter.startingClassType - BARD]
            .startingWeaponProf[i]] = true;
      }
    }
  }

  void updateHitPointState() {
    int temp = 0;
    if (_currCharacter.totalLevel == 0) {
    } else {
      for (int i = 0; i < _currCharacter.activeClasses.length; i++) {
        CharacterClass currClass = _currCharacter.characterClasses[i];
        if (i + BARD == _currCharacter.startingClassType) {
          temp += currClass.hitPointBase +
              currClass.hitPointPerLevel * currClass.classLevel;
        } else {
          temp += currClass.hitPointPerLevel * currClass.classLevel;
        }
      }
      if (_currCharacter.characterAbility.constitution[5] > 10) {
        temp += ((_currCharacter.characterAbility.constitution[5] - 10) ~/ 2) *
            _currCharacter.totalLevel;
      }
      if (_currCharacter.raceType != -1) {
        temp += _currCharacter.activeRace.raceAddedHealth;
      }
    }
    _currCharacter.hitpoints = temp;
  }

  void updateSubClass(int classType, int subClassType) {
    switch (classType) {
      case BARD:
        (_currCharacter.characterClasses[classType - BARD] as BardClass)
            .subClassType = subClassType;
        break;
      case BARBARIAN:
        (_currCharacter.characterClasses[classType - BARD] as BarbarianClass)
            .subClassType = subClassType;
        break;
      case CLERIC:
        (_currCharacter.characterClasses[classType - BARD] as ClericClass)
            .subClassType = subClassType;
        break;
      case DRUID:
        (_currCharacter.characterClasses[classType - BARD] as DruidClass)
            .subClassType = subClassType;
        break;
      case FIGHTER:
        (_currCharacter.characterClasses[classType - BARD] as FighterClass)
            .subClassType = subClassType;
        (_currCharacter.characterClasses[classType - BARD] as FighterClass)
            .updateFighterClass();
        break;
      default:
        break;
    }
    notifyListeners();
  }

  void callNotify() {
    notifyListeners();
  }

  void updateCharacterTrait() {
    for (int i = 0; i < _currCharacter.activeClasses.length; i++) {
      if (_currCharacter.activeClasses[i]) {}
    }
  }
}
