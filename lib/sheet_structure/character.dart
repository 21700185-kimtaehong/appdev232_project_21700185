import 'package:appdev232_project_21700185/sheet_structure/constant.dart';

import 'proficiency.dart';
import 'character_class.dart';

class Character {
  String chracterName;
  late int raceType;
  late int backgroundType;
  late List<Proficiency> characterProficiencies;
  late List<CharacterClass> characterClasses;

  Character({
    this.chracterName = "",
  }) : characterProficiencies = List<Proficiency>.from(defaultProficiencyState);

  void addProficiency(List<Proficiency> proficiencies) {
    for (Proficiency proficiency in proficiencies) {
      if (proficiency.isSkilled > characterProficiencies[proficiency.profNum].isSkilled){
        characterProficiencies[proficiency.profNum].isSkilled = proficiency.isSkilled;
      }
    }
  }
}

List<Proficiency> defaultProficiencyState = [
  Proficiency(profNum: 0, baseAbilityType: STR), //0
  Proficiency(profNum: 1, baseAbilityType: DEX), //1
  Proficiency(profNum: 2, baseAbilityType: DEX), //2
  Proficiency(profNum: 3, baseAbilityType: DEX), //3
  Proficiency(profNum: 4, baseAbilityType: INT), //4
  Proficiency(profNum: 5, baseAbilityType: INT), //5
  Proficiency(profNum: 6, baseAbilityType: INT), //6
  Proficiency(profNum: 7, baseAbilityType: INT), //7
  Proficiency(profNum: 8, baseAbilityType: INT), //8
  Proficiency(profNum: 9, baseAbilityType: WIS), //9
  Proficiency(profNum: 10, baseAbilityType: WIS), //10
  Proficiency(profNum: 11, baseAbilityType: WIS), //11
  Proficiency(profNum: 12, baseAbilityType: WIS), //12
  Proficiency(profNum: 13, baseAbilityType: WIS), //13
  Proficiency(profNum: 14, baseAbilityType: CHA), //14
  Proficiency(profNum: 15, baseAbilityType: CHA), //15
  Proficiency(profNum: 16, baseAbilityType: CHA), //16
  Proficiency(profNum: 17, baseAbilityType: CHA), //17
];

List<String> ProfNames = ["운동", "곡예", "손재주", "은신", "비전", "역사", "조사", "자연", "종교", "동물조련", "통찰", "의학", "감지", "생존", "공연", "기만", "위협", "설득"];

// List<Proficiency> defaultProficiencyState = [
//   Proficiency(profName: "운동", profNum: 0, baseAbilityType: STR), //0
//   Proficiency(profName: "곡예", profNum: 1, baseAbilityType: DEX), //1
//   Proficiency(profName: "손재주", profNum: 2, baseAbilityType: DEX), //2
//   Proficiency(profName: "은신", profNum: 3, baseAbilityType: DEX), //3
//   Proficiency(profName: "비전", profNum: 4, baseAbilityType: INT), //4
//   Proficiency(profName: "역사", profNum: 5, baseAbilityType: INT), //5
//   Proficiency(profName: "조사", profNum: 6, baseAbilityType: INT), //6
//   Proficiency(profName: "자연", profNum: 7, baseAbilityType: INT), //7
//   Proficiency(profName: "종교", profNum: 8, baseAbilityType: INT), //8
//   Proficiency(profName: "동물조련", profNum: 9, baseAbilityType: WIS), //9
//   Proficiency(profName: "통찰", profNum: 10, baseAbilityType: WIS), //10
//   Proficiency(profName: "의학", profNum: 11, baseAbilityType: WIS), //11
//   Proficiency(profName: "감지", profNum: 12, baseAbilityType: WIS), //12
//   Proficiency(profName: "생존", profNum: 13, baseAbilityType: WIS), //13
//   Proficiency(profName: "공연", profNum: 14, baseAbilityType: CHA), //14
//   Proficiency(profName: "기만", profNum: 15, baseAbilityType: CHA), //15
//   Proficiency(profName: "위협", profNum: 16, baseAbilityType: CHA), //16
//   Proficiency(profName: "설득", profNum: 17, baseAbilityType: CHA), //17
// ];




