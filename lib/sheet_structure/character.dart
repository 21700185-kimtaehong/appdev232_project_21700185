import '../constant/constant_code.dart';
import 'proficiency.dart';
import 'character_class.dart';
import 'weapon.dart';
import 'race.dart';
import 'ability.dart';
import 'character_classes_default.dart';

class Character {
  String chracterName;

  int totalLevel;
  int hitpoints;
  int proficiencyBonus;

  int raceType;
  int backgroundType;

  int startingClassType;

  int fightingStyleNum;
  int manoeuvresNum;

  Ability characterAbility = Ability();

  late Race activeRace;

  late List<bool> activeClasses;
  late List<Proficiency> characterProficiencies;
  late List<CharacterClass> characterClasses;
  late List<Weapon> characterWeapons;

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
    this.fightingStyleNum = 0,
    this.manoeuvresNum = 0,
  })  : characterProficiencies =
            List<Proficiency>.from(defaultProficiencyState),
        characterClasses =
            List<CharacterClass>.from(defaultCharacterClassState),
        characterWeapons = List<Weapon>.from(defaultWeaponState),
        activeClasses = List<bool>.from(defaultActiveClassState);

  void addProficiency(List<int> targetProfs) {
    for (int targetProf in targetProfs) {
      if (characterProficiencies[targetProf].isSkilled < 1) {
        characterProficiencies[targetProf].isSkilled = 1;
      }
    }
  }

  void activateClass(int classType) { //클래스의 레벨 0>1
    activeClasses[classType - 10] = true;
    characterClasses[classType - 10].classLevelUp(true);
  }

  void deactivateClass(int classType) { //클래스의 레벨 n > 0
    characterClasses[classType - 10].setZeroClassLevel();
    activeClasses[classType - 10] = false;
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
  Proficiency(profNum: 12, baseAbilityType: WIS, isSelectable: true), //12 감지
  Proficiency(profNum: 13, baseAbilityType: WIS, isSelectable: true), //13 생존
  Proficiency(profNum: 14, baseAbilityType: CHA, isSelectable: true), //14 공연
  Proficiency(profNum: 15, baseAbilityType: CHA, isSelectable: true), //15 기만
  Proficiency(profNum: 16, baseAbilityType: CHA, isSelectable: true), //16 위협
  Proficiency(profNum: 17, baseAbilityType: CHA, isSelectable: true), //17 설득
];

List<String> profNames = [
  "운동",
  "곡예",
  "손재주",
  "은신",
  "비전",
  "역사",
  "조사",
  "자연",
  "종교",
  "동물조련",
  "통찰",
  "의학",
  "감지",
  "생존",
  "공연",
  "기만",
  "위협",
  "설득"
];

List<CharacterClass> defaultCharacterClassState = [
  CharacterClass(classType: BARD, isCaster: true),
  CharacterClass(classType: BARBARIAN),
  CharacterClass(classType: CLERIC, isCaster: true),
  CharacterClass(classType: DRUID, isCaster: true, isHalfCaster: true),
  //CharacterClass(classType: FIGHTER),
  FighterClass(),
  CharacterClass(classType: MONK),
  CharacterClass(classType: PALADIN, isCaster: true, isHalfCaster: true),
  CharacterClass(classType: RANGER, isCaster: true, isHalfCaster: true),
  CharacterClass(classType: ROGUE),
  CharacterClass(classType: SORCERER, isCaster: true),
  CharacterClass(classType: WARLOCK),
  CharacterClass(classType: WIZARD, isCaster: true)
];

List<Weapon> defaultWeaponState = [
  Weapon(
      weaponName: "플레일", //0
      handed: Handed.onehand,
      martial: true,
      melee: true),
  Weapon(
      weaponName: "모닝스타", //1
      handed: Handed.onehand,
      martial: true,
      melee: true),
  Weapon(
      weaponName: "레이피어", //2
      handed: Handed.onehand,
      martial: true,
      melee: true),
  Weapon(
      weaponName: "시미터", //3
      handed: Handed.onehand,
      martial: true,
      melee: true),
  Weapon(
      weaponName: "숏소드", //4
      handed: Handed.onehand,
      martial: true,
      melee: true),
  Weapon(
      weaponName: "워픽", handed: Handed.onehand, martial: true, melee: true), //5
  Weapon(
      weaponName: "배틀엑스", //6
      handed: Handed.versatile,
      martial: true,
      melee: true),
  Weapon(
      weaponName: "롱소드", //7
      handed: Handed.versatile,
      martial: true,
      melee: true),
  Weapon(
      weaponName: "삼지창", //8
      handed: Handed.versatile,
      martial: true,
      melee: true),
  Weapon(
      weaponName: "워해머", //9
      handed: Handed.versatile,
      martial: true,
      melee: true),
  Weapon(
      weaponName: "글레이브", //10
      handed: Handed.twohand,
      martial: true,
      melee: true),
  Weapon(
      weaponName: "그레이트엑스", //11
      handed: Handed.twohand,
      martial: true,
      melee: true),
  Weapon(
      weaponName: "대검", //12
      handed: Handed.twohand,
      martial: true,
      melee: true),
  Weapon(
      weaponName: "헬버드", //13
      handed: Handed.twohand,
      martial: true,
      melee: true),
  Weapon(
      weaponName: "마울", //14
      handed: Handed.twohand,
      martial: true,
      melee: true),
  Weapon(
      weaponName: "파이크", //15
      handed: Handed.twohand,
      martial: true,
      melee: true),
  Weapon(
      weaponName: "손쇠뇌", //16
      handed: Handed.onehand,
      martial: true,
      melee: false),
  Weapon(
      weaponName: "중쇠뇌", //17
      handed: Handed.twohand,
      martial: true,
      melee: false),
  Weapon(
      weaponName: "장궁", //18
      handed: Handed.twohand,
      martial: true,
      melee: false),
  Weapon(
      weaponName: "곤봉", //19
      handed: Handed.onehand,
      martial: false,
      melee: true),
  Weapon(
      weaponName: "단검", //20
      handed: Handed.onehand,
      martial: false,
      melee: true),
  Weapon(
      weaponName: "손도끼", //21
      handed: Handed.onehand,
      martial: false,
      melee: true),
  Weapon(
      weaponName: "재블린", //22
      handed: Handed.onehand,
      martial: false,
      melee: true),
  Weapon(
      weaponName: "라이트해머", //23
      handed: Handed.onehand,
      martial: false,
      melee: true),
  Weapon(
      weaponName: "메이스", //24
      handed: Handed.onehand,
      martial: false,
      melee: true),
  Weapon(
      weaponName: "낫", //25
      handed: Handed.onehand,
      martial: false,
      melee: true),
  Weapon(
      weaponName: "쿼터스태프", //26
      handed: Handed.versatile,
      martial: false,
      melee: true),
  Weapon(
      weaponName: "창", //27
      handed: Handed.versatile,
      martial: false,
      melee: true),
  Weapon(
      weaponName: "", //28
      handed: Handed.versatile,
      martial: false,
      melee: true),
  Weapon(
      weaponName: "경쇠뇌", //29
      handed: Handed.twohand,
      martial: false,
      melee: false),
  Weapon(
      weaponName: "단궁", //30
      handed: Handed.twohand,
      martial: false,
      melee: false),
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




