import 'package:appdev232_project_21700185/sheet_structure/trait.dart';

List<Trait> featsList = [
  Trait(
      traitName: '능력치 향상1',
      traitDescription: '하나의 능력치가 2만큼, 또는 두 개의 능력치가 각각 1만큼, 최대 20까지 증가합니다.'),
  Trait(
      traitName: '능력치 향상2',
      traitDescription: '하나의 능력치가 2만큼, 또는 두 개의 능력치가 각각 1만큼, 최대 20까지 증가합니다.'),
  Trait(
      traitName: '능력치 향상3',
      traitDescription: '하나의 능력치가 2만큼, 또는 두 개의 능력치가 각각 1만큼, 최대 20까지 증가합니다.'),
  Trait(
      traitName: '능력치 향상4',
      traitDescription: '하나의 능력치가 2만큼, 또는 두 개의 능력치가 각각 1만큼, 최대 20까지 증가합니다.'),
  Trait(
      traitName: '배우',
      traitDescription:
          '매력이 1만큼, 최대 20까지 증가합니다. 기만과 공연 판정 숙련을 얻고, 숙련 보너스가 두 배로 증가합니다.'),
  Trait(
      traitName: '경계심', traitDescription: '우선권에 +5 보너스를 얻고 기습당함 상태가 될 수 없습니다.'),
  Trait(
      traitName: '운동선수',
      traitDescription:
          '근력 또는 민첩이 1만큼, 최대 20까지 증가합니다. 엎어진 뒤 일어날 때, 이동 속도가 훨씬 덜 소모됩니다. 또한 도약 거리가 50% 증가합니다.'),
  Trait(
      traitName: '돌격병',
      traitDescription: '\'돌격병: 무기 공격\'과 \'돌격병: 밀치기\'를 얻습니다.'),
  Trait(
      traitName: '쇠뇌 전문가',
      traitDescription:
          '근접 범위 내에서 석궁 공격을 할 경우, 명중 굴림에서 불리점을 갖지 않습니다. 또한 관통 사격이 가하는 벌어진 상처의 지속시간이 2배가 됩니다.'),
  Trait(
      traitName: '방어적 결투자',
      traitDescription:
          '숙련된 기교형 무기를 착용 중인 상태에서 근접 공격 당하면, 반응 행동을 사용해 숙련 보너스를 방어도에 더할 수 있습니다. 필요 조건: 민첩 13이상.'),
  Trait(
      traitName: '쌍수 전문가',
      traitDescription:
          '경량 무기가 아니더라도 쌍수 무기 전투술을 사용할 수 있고, 쌍수 착용 중 방어도에 +1 보너스를 얻습니다. 중량형 무기는 쌍수로 착용할 수 없습니다.'),
  Trait(
      traitName: '던전 탐색꾼',
      traitDescription:
          '숨겨진 물체를 감지하는 지각 능력치 판정과, 함정을 피하거나 저항하는 내성 굴림에 이점을 갖습니다. 함정으로 받는 피해에 저항을 가집니다.'),
  Trait(
      traitName: '강인함',
      traitDescription: '건강이 1 오르고 (최대 20까지), 짧은 휴식 시 체력이 전부 회복됩니다.'),
  Trait(
      traitName: '원소 숙달',
      traitDescription:
          '주문이 산성, 냉기, 화염, 번개, 천둥 속성 중 선택한 피해 유형의 저항을 무시합니다. 해당 유형 주문 시전 시 굴림 결과로 1이 나오지 않습니다.'),
  Trait(
      traitName: '대형 무기 전문가',
      traitDescription:
          '공격이 치명타로 적중하거나 근접 무기 공격으로 대상을 죽이면, 해당 턴에 추가 행동으로 근접 무기 공격을 한 번 더 할 수 있습니다. 숙련된 대형 근접 무기로 공격하는 경우, 명중 굴림에 -5 페널티를 받지만, 피해량이 10만큼 증가합니다.(토글 가능)'),
  Trait(
      traitName: '단단히 무장함',
      traitDescription:
          '근력이 1 증가하고(최대 20까지), 중갑 착용 중 비마법 피해가 3 감소합니다. 필요조건: 중갑 숙련'),
  Trait(
      traitName: '적당히 무장함',
      traitDescription:
          '평갑과(Medium Armor)과 방패 숙련을 얻으며 근력이나 민첩 중 하나가 1 증가합니다(최대 20까지). 필요조건: 경갑 숙련'),
  Trait(
      traitName: '평갑의 달인',
      traitDescription:
          '평갑을 착용할 때, 은신 판정에 불리점을 받지 않습니다. 민첩 수정치로 받는 방어도 보너스가 +2에서 +3이 됩니다. 필요조건: 평갑 숙련'),
  Trait(
      traitName: '가볍게 무장함',
      traitDescription: '경갑 숙련을 얻으며 근력이나 민첩 중 하나가 1 증가합니다(최대 20까지).'),
  Trait(
      traitName: '행운아',
      traitDescription:
          '행운 포인트를 3 얻습니다. 행운 포인트를 사용해 명중 굴림, 능력치 판정, 혹은 내성 굴림에 이점을 얻거나, 적이 명중 굴림을 다시 하게 할 수 있습니다.'),
  Trait(
      traitName: '마법사 살해자',
      traitDescription:
          '당신의 근접 범위 내에서 주문이 시전되면, 그에 저항하는 내성 굴림에 이점을 가지고, 반응 행동으로 즉시 시전자를 공격할 수 있습니다. 적을 공격할 때, 적의 집중 내성 굴림에 불리점을 줍니다.'),
  Trait(
      traitName: '마법 입문자: 바드',
      traitDescription:
          '바드 주문 목록에서 소마법(Cantrip) 2가지와 1레벨 주문 1가지를 선택해 배웁니다. 1레벨 주문은 긴 휴식 당 한 번만 시전할 수 있습니다. 선택한 3가지 주문은 모두 매력이 주문 시전 능력치입니다.'),
  Trait(
      traitName: '마법 입문자: 클레릭',
      traitDescription:
          '클레릭 주문 목록에서 소마법(Cantrip) 2가지와 1레벨 주문 1가지를 선택해 배웁니다. 1레벨 주문은 긴 휴식 당 한 번만 시전할 수 있습니다. 선택한 3가지 주문은 모두 지혜가 주문 시전 능력치입니다.'),
  Trait(
      traitName: '마법 입문자: 드루이드',
      traitDescription:
          '드루이드 주문 목록에서 소마법(Cantrip) 2가지와 1레벨 주문 1가지를 선택해 배웁니다. 1레벨 주문은 긴 휴식 당 한 번만 시전할 수 있습니다. 선택한 3가지 주문은 모두 지혜가 주문 시전 능력치입니다.'),
  Trait(
      traitName: '마법 입문자: 소서러',
      traitDescription:
          '소서러 주문 목록에서 소마법(Cantrip) 2가지와 1레벨 주문 1가지를 선택해 배웁니다. 1레벨 주문은 긴 휴식 당 한 번만 시전할 수 있습니다. 선택한 3가지 주문은 모두 매력이 주문 시전 능력치입니다.'),
  Trait(
      traitName: '마법 입문자: 워락',
      traitDescription:
          '워락 주문 목록에서 소마법(Cantrip) 2가지와 1레벨 주문 1가지를 선택해 배웁니다. 1레벨 주문은 긴 휴식 당 한 번만 시전할 수 있습니다. 선택한 3가지 주문은 모두 매력이 주문 시전 능력치입니다.'),
  Trait(
      traitName: '마법 입문자: 위자드',
      traitDescription:
          '위자드 주문 목록에서 소마법(Cantrip) 2가지와 1레벨 주문 1가지를 선택해 배웁니다. 1레벨 주문은 긴 휴식 당 한 번만 시전할 수 있습니다. 선택한 3가지 주문은 모두 지능이 주문 시전 능력치입니다.'),
  Trait(
      traitName: '무술 숙련',
      traitDescription:
          '배틀 마스터 서브클래스의 두 가지 전술을 배우고, 그에 따라 추가 우월성 주사위를 1개 얻습니다. 사용한 우월성 주사위는 짧은 휴식이나 긴 휴식을 취한 뒤 재충전됩니다.'),
  Trait(
      traitName: '기동',
      traitDescription:
          '이동 속도가 3m 증가하고, 질주 시 험난한 지형에 의해 이동 속도가 느려지지 않습니다. 근접 공격을 한 뒤 이동하면 대상에게서 기회 공격을 유발하지 않습니다.'),
  Trait(traitName: '공연자', traitDescription: '악기 숙련을 얻고 매력이 1 증가합니다(최대 20까지).'),
  Trait(
      traitName: '폴암의 달인',
      traitDescription:
          '글레이브나, 할버드, 쿼터스태프, 또는 창으로 공격할 때, 무기의 반대쪽 부분으로 추가 행동 공격을 할 수 있습니다. 또한, 범위 안으로 들어오는 적에게 기회 공격을 할 수 있습니다.'),
  Trait(
      traitName: '탄력성',
      traitDescription: '능력치 하나를 1만큼 올립니다(최대 20까지). 그 능력치의 내성 굴림에 숙련을 얻습니다.'),
  Trait(
      traitName: '의식 시전자',
      traitDescription: '의식 주문 두 개를 선택하여 배웁니다. 필요조건: 지능 혹은 지혜 13 이상.'),
  Trait(
      traitName: '야만적인 공격자',
      traitDescription: '근접 무기 공격시 피해 주사위를 두 번 굴리고 그 중 높은 숫자를 사용합니다.'),
  Trait(
      traitName: '파수꾼',
      traitDescription:
          '근접 공격 범위 내의 적이 아군을 공격하면 반응 행동을 통해 해당 적을 무기로 공격할 수 있습니다. 기회 공격에 이점을 가지며, 크리쳐에게 기회 공격을 명중시키면 대상은 해당 턴에 더 이상 이동할 수 없습니다.'),
  Trait(
      traitName: '명사수',
      traitDescription:
          '원거리 공격이 고지대 규칙에 의한 페널티를 받지 않습니다. 숙련된 무기를 사용한 원거리 무기 공격이 명중 굴림에 -5 페널티를 갖지만 추가로 10의 피해를 가합니다(토글 가능).'),
  Trait(
      traitName: '방패 전문가',
      traitDescription:
          '방패를 착용하고 있으면 민첩 내성 굴림에 +2 보너스를 얻습니다. 주문에 의해 민첩 내성 굴림이 요구되면, 반응 행동으로 스스로를 보호해 피해를 줄일 수 있습니다. 내성 굴림이 실패한 경우 절반의 피해만 받습니다. 성공한 경우 피해를 받지 않습니다.'),
  Trait(traitName: '숙련됨', traitDescription: '원하는 3가지 기술에 숙련을 얻습니다.'),
  Trait(
      traitName: '주문 저격수',
      traitDescription:
          '소마법을 하나 배우고, 주문의 치명타에 필요한 명중 굴림의 결과값을 1 감소시킵니다. 이 효과는 중첩 가능합니다.'),
  Trait(
      traitName: '술집 싸움꾼',
      traitDescription:
          '근력 또는 건강을 1만큼 올립니다(최대 20까지). 비무장 공격을 가할 때, 즉석 무기나 던지기 공격을 사용할 때, 근력 능력 수정치가 피해와 명중 굴림에 두 배로 적용됩니다.'),
  Trait(traitName: '튼튼함', traitDescription: '각 레벨당 최대 체력이 2씩 증가합니다.'),
  Trait(
      traitName: '전투 마법사',
      traitDescription:
          '주문의 집중을 유지하기 위한 내성 굴림에 이점을 얻습니다. 또한 근거리에서 벗어나는 적에게 반응 행동으로 전격의 손아귀를 시전할 수 있습니다.'),
  Trait(
      traitName: '무기 전문가',
      traitDescription: '근력 또는 민첩이 1만큼 증가하고(최대 20까지), 선택한 4가지 무기에 숙련을 얻습니다.'),
];
