import 'constant.dart';

class Proficiency {
  String profName;
  int baseAbilityType;
  bool isSkilled;
  bool isSpecialized;

  Proficiency({
    required this.profName,
    required this.baseAbilityType,
    this.isSkilled = false,
    this.isSpecialized = false,
  });
}

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
