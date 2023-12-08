import 'package:appdev232_project_21700185/class_default/fighter_default.dart';
import 'package:appdev232_project_21700185/sheet_structure/character_class.dart';
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
      if (_currCharacter.characterClasses[classType - 10].classLevel > 0) {
        _currCharacter.characterClasses[classType - 10].classLevelUp(up);
        _currCharacter.characterClasses[classType - 10].updateClassFeatNum();
        _currCharacter.totalLevel--;
        if (_currCharacter.characterClasses[classType - 10].classLevel == 0) {
          _currCharacter.activeClasses[classType - 10] = false;
        }
      }
    }
    _currCharacter.updateCharacterLevel;
    _currCharacter.updateFeatNum();
    updateClassState(classType);
    updateHitPointState();
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
      if (_currCharacter.totalLevel == 0) {
        _currCharacter.startingClassType = classType;
      }
      _currCharacter.activateClass(classType);
      updateHitPointState();
      notifyListeners();
    }
  }

  void deactivateClassState(int classType) {
    _currCharacter.deactivateClass(classType);
    updateHitPointState();
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

  void updateAdd1type(int index) {
    _currCharacter.characterAbility.updateAdd1type(index);
    notifyListeners();
  }

  void updateAdd2type(int index) {
    _currCharacter.characterAbility.updateAdd2type(index);
    notifyListeners();
  }

  void updateArmorProfState() {}

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
      temp += (_currCharacter.characterAbility.constitution[5] ~/ 2) *
          _currCharacter.totalLevel;
      if (_currCharacter.raceType != -1) {
        temp += _currCharacter.activeRace.raceAddedHealth;
      }
    }
    _currCharacter.hitpoints = temp;
  }
}
