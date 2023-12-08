import 'package:appdev232_project_21700185/class_default/druid_default.dart';

import '../constant/constant_code.dart';
import 'package:appdev232_project_21700185/constant/constant_weapon.dart';
import 'proficiency.dart';
import 'character_class.dart';
import 'weapon.dart';
import 'race.dart';
import 'ability.dart';
import '../class_default/fighter_default.dart';
import '../class_default/bard_default.dart';
import '../class_default/barbarian_default.dart';
import '../class_default/cleric_default.dart';

class Character {
  String chracterName;

  int totalLevel;
  int hitpoints;
  int proficiencyBonus;

  int backgroundType;

  int startingClassType;
  int characterFeatNum;
  List<int> selectedFeats = [];

  int fightingStyleNum;
  int manoeuvresNum;

  Ability characterAbility = Ability();

  int raceType;
  late Race activeRace;

  late List<bool> activeClasses;
  late List<Proficiency> characterProficiencies;
  late List<CharacterClass> characterClasses;
  late List<bool> characterWeaponProf = List.generate(31, (index) => false);
  late List<bool> characterArmorProf = [false, false, false];

  late List<bool> selectedFightingStyles;
  late List<bool> selectedManoeuvres;

  Character({
    this.chracterName = "",
    this.totalLevel = 0,
    this.hitpoints = 0,
    this.proficiencyBonus = 0,
    this.raceType = -1,
    this.backgroundType = -1,
    this.startingClassType = -1,
    this.characterFeatNum = 0,
    this.fightingStyleNum = 0,
    this.manoeuvresNum = 0,
  })  : characterProficiencies =
            List<Proficiency>.from(defaultProficiencyState),
        characterClasses =
            List<CharacterClass>.from(defaultCharacterClassState),
        activeClasses = List<bool>.from(defaultActiveClassState);

  void addProficiency(List<int> targetProfs) {
    for (int targetProf in targetProfs) {
      if (characterProficiencies[targetProf].isSkilled < 1) {
        characterProficiencies[targetProf].isSkilled = 1;
      }
    }
  }

  void activateClass(int classType) {
    //클래스의 레벨 0 -> 1
    activeClasses[classType - 10] = true;
    characterClasses[classType - 10].classLevelUp(true);
    updateCharacterLevel();
  }

  void deactivateClass(int classType) {
    //클래스의 레벨 n -> 0
    characterClasses[classType - 10].setZeroClassLevel();
    activeClasses[classType - 10] = false;
    updateCharacterLevel();
  }

  void updateCharacterLevel() {
    int tempLevel = 0;
    for (int i = 0; i < activeClasses.length; i++) {
      if (activeClasses[i]) tempLevel += characterClasses[i].classLevel;
    }
    totalLevel = tempLevel;
  }

  void updateFeatNum() {
    characterFeatNum = 0;
    for (int i = 0; i < activeClasses.length; i++) {
      if (activeClasses[i]) {
        characterFeatNum += characterClasses[i].numFeat;
      }
    }
  }

  void updateWeaponProf() {
    characterWeaponProf = List.generate(31, (index) => false);
    for (int i = 0; i < activeClasses.length; i++) {
      if (activeClasses[i]) {
        for (int weaNum in characterClasses[i].classWeaponProf) {
          characterWeaponProf[weaNum] = true;
        }
        if (i == startingClassType - BARD) {
          for (int weaNum in characterClasses[i].startingWeaponProf) {
            characterWeaponProf[weaNum] = true;
          }
        }
      }
    }
  }

  void updateArmorProf() {
    characterArmorProf = [false, false, false, false];
    for (int i = 0; i < activeClasses.length; i++) {
      if (activeClasses[i]) {
        characterWeaponProf[characterClasses[i].classArmorProf] = true;
        if (i == startingClassType - BARD) {
          characterWeaponProf[characterClasses[i].startingArmorProf] = true;
        }
      }
    }
  }

  void updateFightingStyles(int index) {
    selectedFightingStyles[index] = !selectedFightingStyles[index];
  }
}

List<Proficiency> defaultProficiencyState = [
  Proficiency(profNum: 0, baseAbilityType: STR, isSelectable: true), //0 운동
  Proficiency(profNum: 1, baseAbilityType: DEX, isSelectable: true), //1 곡예
  Proficiency(profNum: 2, baseAbilityType: DEX, isSelectable: true), //2 손재주
  Proficiency(profNum: 3, baseAbilityType: DEX, isSelectable: true), //3 은신
  Proficiency(profNum: 4, baseAbilityType: INT, isSelectable: true), //4 비전
  Proficiency(profNum: 5, baseAbilityType: INT, isSelectable: true), //5 역사
  Proficiency(profNum: 6, baseAbilityType: INT, isSelectable: true), //6 조사
  Proficiency(profNum: 7, baseAbilityType: INT, isSelectable: true), //7 자연
  Proficiency(profNum: 8, baseAbilityType: INT, isSelectable: true), //8 종교
  Proficiency(profNum: 9, baseAbilityType: WIS, isSelectable: true), //9 동물조련
  Proficiency(profNum: 10, baseAbilityType: WIS, isSelectable: true), //10 통찰
  Proficiency(profNum: 11, baseAbilityType: WIS, isSelectable: true), //11 의학
  Proficiency(profNum: 12, baseAbilityType: WIS, isSelectable: true), //12 지각
  Proficiency(profNum: 13, baseAbilityType: WIS, isSelectable: true), //13 생존
  Proficiency(profNum: 14, baseAbilityType: CHA, isSelectable: true), //14 공연
  Proficiency(profNum: 15, baseAbilityType: CHA, isSelectable: true), //15 기만
  Proficiency(profNum: 16, baseAbilityType: CHA, isSelectable: true), //16 위협
  Proficiency(profNum: 17, baseAbilityType: CHA, isSelectable: true), //17 설득
];

List<CharacterClass> defaultCharacterClassState = [
  BardClass(),
  BarbarianClass(),
  ClericClass(),
  DruidClass(),
  FighterClass(),
  CharacterClass(classType: MONK),
  CharacterClass(classType: PALADIN, isCaster: true, isHalfCaster: true),
  CharacterClass(classType: RANGER, isCaster: true, isHalfCaster: true),
  CharacterClass(classType: ROGUE),
  CharacterClass(classType: SORCERER, isCaster: true),
  CharacterClass(classType: WARLOCK),
  CharacterClass(classType: WIZARD, isCaster: true)
];

List<bool> defaultActiveClassState = [
  false, // 0 bard
  false, // 1 barbarian
  false, // 2 cleric
  false, // 3 druid
  false, // 4 fighter
  false, // 5 monk
  false, // 6 paladin
  false, // 7 ranger
  false, // 8 rogue
  false, // 9 sorcerer
  false, // 10 warlock
  false, // 11 wizard
];
