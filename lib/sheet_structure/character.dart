import 'constant.dart';
import 'proficiency.dart';
import 'character_class.dart';
import 'weapon.dart';

class Character {
  String chracterName;
  int totalLevel;
  int hitpoints;
  late int raceType;
  late int backgroundType;
  late List<Proficiency> characterProficiencies;
  late List<CharacterClass> characterClasses;
  late List<Weapon> characterWeapons;

  Character({
    this.totalLevel = 0,
    this.chracterName = "",
  })  : characterProficiencies =
            List<Proficiency>.from(defaultProficiencyState),
        characterClasses =
            List<CharacterClass>.from(defaultCharacterClassState),
        characterWeapons = List<Weapon>.from(defaultWeaponState);

  void addProficiency(List<int> targetProfs) {
    for (int targetProf in targetProfs) {
      if (characterProficiencies[targetProf].isSkilled < 1) {
        characterProficiencies[targetProf].isSkilled = 1;
      }
    }
  }

  void addWeapon(List<int> targetWeapons) {
    for (int targetWeapon in targetWeapons) {
      if (characterProficiencies[targetWeapon].isSkilled < 1) {
        characterProficiencies[targetWeapon].isSkilled = 1;
      }
    }
  }

  void updateStat() {

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

List<String> ProfNames = [
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
  CharacterClass(classType: FIGHTER),
  CharacterClass(classType: MONK),
  CharacterClass(classType: PALADIN, isCaster: true, isHalfCaster: true),
  CharacterClass(classType: RANGER, isCaster: true, isHalfCaster: true),
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




