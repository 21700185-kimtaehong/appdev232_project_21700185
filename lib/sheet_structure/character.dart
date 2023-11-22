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
}

List<Proficiency> defaultProficiencyState = [
  Proficiency(profName: "운동", profNum: 0, baseAbilityType: STR), //0
  Proficiency(profName: "곡예", profNum: 1, baseAbilityType: DEX), //1
  Proficiency(profName: "손재주", profNum: 2, baseAbilityType: DEX), //2
  Proficiency(profName: "은신", profNum: 3, baseAbilityType: DEX), //3
  Proficiency(profName: "비전", profNum: 4, baseAbilityType: INT), //4
  Proficiency(profName: "역사", profNum: 5, baseAbilityType: INT), //5
  Proficiency(profName: "조사", profNum: 6, baseAbilityType: INT), //6
  Proficiency(profName: "자연", profNum: 7, baseAbilityType: INT), //7
  Proficiency(profName: "종교", profNum: 8, baseAbilityType: INT), //8
  Proficiency(profName: "동물조련", profNum: 9, baseAbilityType: WIS), //9
  Proficiency(profName: "통찰", profNum: 10, baseAbilityType: WIS), //10
  Proficiency(profName: "의학", profNum: 11, baseAbilityType: WIS), //11
  Proficiency(profName: "감지", profNum: 12, baseAbilityType: WIS), //12
  Proficiency(profName: "생존", profNum: 13, baseAbilityType: WIS), //13
  Proficiency(profName: "공연", profNum: 14, baseAbilityType: CHA), //14
  Proficiency(profName: "기만", profNum: 15, baseAbilityType: CHA), //15
  Proficiency(profName: "위협", profNum: 16, baseAbilityType: CHA), //16
  Proficiency(profName: "설득", profNum: 17, baseAbilityType: CHA), //17
];
