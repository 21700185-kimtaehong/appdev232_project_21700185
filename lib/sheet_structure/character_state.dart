import 'package:appdev232_project_21700185/sheet_structure/proficiency.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character.dart';
import 'package:appdev232_project_21700185/sheet_structure/constant.dart';


class CharacterState with ChangeNotifier {
  Character _currCharacter = Character(characterProficiencies: defaultProficiencyState);
  Character get currCharacter => _currCharacter;

  void setRace(int raceType) {
    _currCharacter.raceType = raceType;
    notifyListeners();
  }

  void setBackground(int backgroundType) {
    _currCharacter.backgroundType = backgroundType;
    switch (backgroundType) {
      case ACOLYTE:
        _currCharacter.characterProficiencies[8].isSkilled=true;
        _currCharacter.characterProficiencies[10].isSkilled=true;
        break;
      case CHARLATAN:
        _currCharacter.characterProficiencies[2].isSkilled=true;
        _currCharacter.characterProficiencies[15].isSkilled=true;
        break;
      case CRIMINAL:
        _currCharacter.characterProficiencies[3].isSkilled=true;
        _currCharacter.characterProficiencies[15].isSkilled=true;
        break;
      case ENTERTAINER:
        _currCharacter.characterProficiencies[1].isSkilled=true;
        _currCharacter.characterProficiencies[14].isSkilled=true;
        break;
      case FOLKHERO:
        _currCharacter.characterProficiencies[].isSkilled=true;
        _currCharacter.characterProficiencies[].isSkilled=true;
        break;
      case GUILDARTISAN:
        _currCharacter.characterProficiencies[].isSkilled=true;
        _currCharacter.characterProficiencies[].isSkilled=true;
        break;
      case NOBLE:
        _currCharacter.characterProficiencies[].isSkilled=true;
        _currCharacter.characterProficiencies[].isSkilled=true;
        break;
      case OUTLANDER:
        _currCharacter.characterProficiencies[].isSkilled=true;
        _currCharacter.characterProficiencies[].isSkilled=true;
        break;
      case SAGE:
        _currCharacter.characterProficiencies[].isSkilled=true;
        _currCharacter.characterProficiencies[].isSkilled=true;
        break;
      case SOLDIER:
        _currCharacter.characterProficiencies[].isSkilled=true;
        _currCharacter.characterProficiencies[].isSkilled=true;
        break;
      case URCHIN:
        _currCharacter.characterProficiencies[].isSkilled=true;
        _currCharacter.characterProficiencies[].isSkilled=true;
        break;
    }
    notifyListeners();
  }
}
const int ACOLYTE = 70; //복사
const int CHARLATAN = 71; //사기꾼
const int CRIMINAL = 72; //범죄자
const int ENTERTAINER= 73; //연예인
const int FOLKHERO = 74; //민중 영웅
const int GUILDARTISAN= 75; //길드장인
const int NOBLE = 76; //귀족
const int OUTLANDER = 77; //이방인
const int SAGE = 78; //학자
const int SOLDIER = 79; //군인
const int URCHIN = 80; //부랑아

List<Proficiency> defaultProficiencyState = [
  Proficiency(profName: "운동", baseAbilityType: STR), //0
  Proficiency(profName: "곡예", baseAbilityType: DEX), //1
  Proficiency(profName: "손재주", baseAbilityType: DEX), //2
  Proficiency(profName: "은신", baseAbilityType: DEX), //3
  Proficiency(profName: "비전", baseAbilityType: INT), //4
  Proficiency(profName: "역사", baseAbilityType: INT), //5
  Proficiency(profName: "조사", baseAbilityType: INT), //6
  Proficiency(profName: "자연", baseAbilityType: INT), //7
  Proficiency(profName: "종교", baseAbilityType: INT), //8
  Proficiency(profName: "동물조련", baseAbilityType: WIS), //9
  Proficiency(profName: "통찰", baseAbilityType: WIS),  //10
  Proficiency(profName: "의학", baseAbilityType: WIS), //11
  Proficiency(profName: "감지", baseAbilityType: WIS), //12
  Proficiency(profName: "생존", baseAbilityType: WIS), //13
  Proficiency(profName: "공연", baseAbilityType: CHA), //14
  Proficiency(profName: "기만", baseAbilityType: CHA), //15
  Proficiency(profName: "위협", baseAbilityType: CHA), //16
  Proficiency(profName: "설득", baseAbilityType: CHA), //17
  ];