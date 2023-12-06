import 'package:appdev232_project_21700185/sheet_structure/action.dart';
import 'package:appdev232_project_21700185/sheet_structure/trait.dart';
import 'package:appdev232_project_21700185/sheet_structure/spell.dart';
import 'package:appdev232_project_21700185/sheet_structure/proficiency.dart';
import 'package:appdev232_project_21700185/sheet_structure/race.dart';
import 'package:appdev232_project_21700185/sheet_structure/armor.dart';
import 'constant_code.dart';

//fighter common
List<CharacterAction> fighterActionList = [
  CharacterAction(actionName: '재기의 바람'),
  CharacterAction(actionName: '행동 연쇄')
];

List<Trait> FighterTraitList = [
  Trait(
      traitName: '무적',
      traitDescription:
          '강철 골렘만큼이나 튼튼해졌습니다. 내성 굴림을 실패할 때마다 주사위를 다시 굴려 그 결과를 사용합니다.')
];

List<CharacterAction> fighter_level2_action = [];

List<Trait> fighter_fightStyle = [
  Trait(traitName: "궁술"),
  Trait(traitName: "방어술"),
  Trait(traitName: "결투술"),
  Trait(traitName: "대형 무기 전투술"),
  Trait(traitName: "보호술"),
  Trait(traitName: "쌍수 무기 전투술"),
];

List<List<bool>> defaultFighterFightingStyles = List.filled(6, [false, true]);

//battle master

List<CharacterAction> battleMaster_manoeuvres = [
  CharacterAction(
      actionName: '지휘관의 일격',
      actionDescription:
          '행동과 반응 행동을 소모하여 아군이 적을 공격하도록 지시합니다. 해당 아군은 즉시 자신의 반응 행동을 사용하여 무기 공격을 합니다.'),
  CharacterAction(
      actionName: '무장해제 공격',
      actionDescription:
          '우월성 주사위를 소모해 1d8의 추가 피해를 주고 대상이 사용 중인 무기를 놓치게 할 수 있는 공격을 시도합니다.'),
  CharacterAction(
      actionName: '교란의 일격',
      actionDescription: '대상을 교란하여, 해당 대상을 향한 아군의 다음 명중 굴림에 이점을 줍니다.'),
  CharacterAction(
      actionName: '교묘한 발놀림',
      actionDescription: '한 라운드 동안 자신을 대상으로 한 근접 공격에 불리점을 적용해 공격을 회피할 수 있습니다.'),
  CharacterAction(
      actionName: '속임수 공격',
      actionDescription:
          '해당 턴의 행동과 추가행동을 모두 사용해 이점 공격을 하며, 1d8의 피해를 추가로 입힙니다.'),
  CharacterAction(
      actionName: '도발 공격',
      actionDescription:
          '1d8의 추가 피해를 주고 대상이 당신을 공격하도록 자극합니다. 대상이 다른 생물을 공격할 때 불리점을 받습니다.'),
  CharacterAction(
      actionName: '기동성 공격',
      actionDescription:
          '1d8의 추가 피해를 주고 적중시 선택된 아군 크리처는 자기 이동 속도의 절반을 얻습니다. 이때의 이동은 기회공격을 유발하지 않습니다.'),
  CharacterAction(
      actionName: '위협의 일격',
      actionDescription:
          '우월성 주사위를 소모해 1d8의 추가 피해를 주고 공포 상태를 부여할 수도 있는 공격을 가합니다.'),
  CharacterAction(
      actionName: '정밀 공격',
      actionDescription: '우월성 주사위를 소모해 그 결과값만큼 명중 굴림에 더할 수 있습니다.'),
  CharacterAction(
      actionName: '밀어내는 공격',
      actionDescription:
          '우월성 주사위를 소모해 1d8의 추가 피해를 주고 대상을 4.5m 뒤로 밀어낼 수도 있는 공격을 시도합니다.'),
  CharacterAction(
      actionName: '재집결',
      actionDescription: '우월성 주사위를 소모해 아군 크리처의 결의를 다집니다. 대상은 8 임시 체력을 얻습니다.'),
  CharacterAction(
      actionName: '응수',
      actionDescription:
          '자신을 향한 적대적 대상의 근접 공격이 빗나가면, 우월성 주사위를 소모해 1d8의 피해가 추가된 강력한 공격으로 반격합니다.'),
  CharacterAction(
      actionName: '휩쓸기 공격',
      actionDescription:
          '전방에 호를 그리며 재빨리 무기를 휘둘러 여러 적을 동시에 공격합니다. 피해량은 우월성 주사위를 굴려 나온 숫자를 사용합니다.'),
  CharacterAction(
      actionName: '넘어뜨리기 공격',
      actionDescription:
          '우월성 주사위를 소모해 대상에게 1d8의 추가 피해를 입히고 엎어짐 상태로 만들 수 있는 공격을 시도합니다. 대형 이하의 대상에게만 유효합니다.'),
];

List<List<bool>> defaultSelectedManoeuvres = List.filled(14, [false, true]);

List<Proficiency> defaultFighterProficiencyState = [
  Proficiency(profNum: 0, baseAbilityType: STR, isSelectable: true), //0 운동
  Proficiency(profNum: 1, baseAbilityType: DEX, isSelectable: true), //1 곡예
  Proficiency(profNum: 2, baseAbilityType: DEX), //2 손재주
  Proficiency(profNum: 3, baseAbilityType: DEX), //3 은신
  Proficiency(profNum: 4, baseAbilityType: INT), //4 비전
  Proficiency(profNum: 5, baseAbilityType: INT, isSelectable: true), //5 역사
  Proficiency(profNum: 6, baseAbilityType: INT), //6 조사
  Proficiency(profNum: 7, baseAbilityType: INT), //7 자연
  Proficiency(profNum: 8, baseAbilityType: INT), //8 종교
  Proficiency(profNum: 9, baseAbilityType: WIS, isSelectable: true), //9 동물조련
  Proficiency(profNum: 10, baseAbilityType: WIS, isSelectable: true), //10 통찰
  Proficiency(profNum: 11, baseAbilityType: WIS), //11 의학
  Proficiency(profNum: 12, baseAbilityType: WIS, isSelectable: true), //12 지각
  Proficiency(profNum: 13, baseAbilityType: WIS, isSelectable: true), //13 생존
  Proficiency(profNum: 14, baseAbilityType: CHA), //14 공연
  Proficiency(profNum: 15, baseAbilityType: CHA), //15 기만
  Proficiency(profNum: 16, baseAbilityType: CHA, isSelectable: true), //16 위협
  Proficiency(profNum: 17, baseAbilityType: CHA), //17 설득
];
