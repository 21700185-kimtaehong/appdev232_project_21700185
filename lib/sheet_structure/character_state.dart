import 'package:appdev232_project_21700185/sheet_structure/proficiency.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character.dart';
import 'package:appdev232_project_21700185/sheet_structure/constant.dart';

class CharacterState with ChangeNotifier {
  // ignore: prefer_final_fields
  Character _currCharacter = Character();
  Character get currCharacter => _currCharacter;

  void setRace(int raceType) {
    _currCharacter.raceType = raceType;
    notifyListeners();
  }

  void updateRace(int totalLevel) {
    switch (_currCharacter.raceType) {
      case HUMAN:
        _currCharacter.addWeapon([10, 13, 15, 27]);
    }
  }

  void setBackground(int backgroundType) {
    _currCharacter.backgroundType = backgroundType;
    switch (backgroundType) {
      case ACOLYTE:
        _currCharacter.characterProficiencies[8].isSkilled = 1;
        _currCharacter.characterProficiencies[10].isSkilled = 1;
        break;
      case CHARLATAN:
        _currCharacter.characterProficiencies[2].isSkilled = 1;
        _currCharacter.characterProficiencies[15].isSkilled = 1;
        break;
      case CRIMINAL:
        _currCharacter.characterProficiencies[3].isSkilled = 1;
        _currCharacter.characterProficiencies[15].isSkilled = 1;
        break;
      case ENTERTAINER:
        _currCharacter.characterProficiencies[1].isSkilled = 1;
        _currCharacter.characterProficiencies[14].isSkilled = 1;
        break;
      case FOLKHERO:
        _currCharacter.characterProficiencies[7].isSkilled = 1;
        _currCharacter.characterProficiencies[9].isSkilled = 1;
        break;
      case GUILDARTISAN:
        _currCharacter.characterProficiencies[10].isSkilled = 1;
        _currCharacter.characterProficiencies[17].isSkilled = 1;
        break;
      case NOBLE:
        _currCharacter.characterProficiencies[5].isSkilled = 1;
        _currCharacter.characterProficiencies[17].isSkilled = 1;
        break;
      case OUTLANDER:
        _currCharacter.characterProficiencies[0].isSkilled = 1;
        _currCharacter.characterProficiencies[2].isSkilled = 1;
        break;
      case SAGE:
        _currCharacter.characterProficiencies[4].isSkilled = 1;
        _currCharacter.characterProficiencies[5].isSkilled = 1;
        break;
      case SOLDIER:
        _currCharacter.characterProficiencies[0].isSkilled = 1;
        _currCharacter.characterProficiencies[16].isSkilled = 1;
        break;
      case URCHIN:
        _currCharacter.characterProficiencies[2].isSkilled = 1;
        _currCharacter.characterProficiencies[3].isSkilled = 1;
        break;
      case HAUNTED:
        _currCharacter.characterProficiencies[11].isSkilled = 1;
        _currCharacter.characterProficiencies[16].isSkilled = 1;
        break;
    }
    notifyListeners();
  }
}
