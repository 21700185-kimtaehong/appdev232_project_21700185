import 'package:appdev232_project_21700185/constant/constant_code.dart';
import 'package:appdev232_project_21700185/sheet_structure/spell.dart';
import 'package:appdev232_project_21700185/sheet_structure/trait.dart';
import 'package:flutter/material.dart';

import 'package:appdev232_project_21700185/sheet_structure/action.dart';

class Race {
  int raceType;
  int speedType;
  double weightCapacity;
  int raceAddedHealth;
  int raceArmorProf;

  late List<int> raceProfs;
  late List<CharacterAction> raceActions;
  late List<Trait> raceTraits;
  late List<Spell> raceSpells;
  late List<bool> raceRegists;
  late List<int> raceWeaponProf;

  Race({
    this.raceType = -1,
    this.raceArmorProf = 0,
    this.speedType = 2,
    this.weightCapacity = 1,
    this.raceAddedHealth = 0,
    List<int>? raceProfs,
    List<int>? raceWeaponProf,
    List<CharacterAction>? raceActions,
    List<Trait>? raceTraits,
    List<Spell>? raceSpells,
    List<bool>? raceRegists,
  })  : raceProfs = raceProfs ?? [],
        raceWeaponProf = raceWeaponProf ?? [],
        raceActions = raceActions ?? [],
        raceTraits = raceTraits ?? [],
        raceSpells = raceSpells ?? [],
        raceRegists = raceRegists ?? [];

  void addAction(List<CharacterAction> actions) {
    for (CharacterAction action in actions) {
      raceActions.add(action);
    }
  }

  void addTrait(List<Trait> traits) {
    for (Trait trait in traits) {
      raceTraits.add(trait);
    }
  }
}

List<Trait> RaceTraits = [
  Trait(
      //0
      traitName: '페이 혈통',
      traitDescription: '마법적으로 잠들지 않으며, 매혹에 대한 내성 굴림에 이점을 가집니다.'),
  Trait(
      //1
      traitName: '엘프 무기 훈련',
      traitDescription: '롱소드, 숏소드, 숏보우, 롱보우에 무기 숙련을 얻습니다.'),
  Trait(traitName: '암흑 시야', traitDescription: '어둠 속에서 12m까지 볼 수 있습니다.'), //2
  Trait(
      //3
      traitName: '지옥의 저항력',
      traitDescription: '화염 피해에 대한 저항을 얻어, 받는 피해가 절반으로 줄어듭니다.'),
  Trait(
      //4
      traitName: '드로우 무기 훈련',
      traitDescription: '레이피어, 숏소드, 손쇠뇌에 무기 숙련을 얻습니다.'),
  Trait(traitName: '상급 암흑 시야', traitDescription: '어둠 속에서 24m까지 볼 수 있습니다.'), //5
  Trait(
      //6
      traitName: '민병대',
      traitDescription: '창, 파이크, 할버드, 글레이브에 무기 숙련을 얻고, 경갑, 방패 방어구 숙련을 얻습니다.'),
  Trait(
      //7
      traitName: '인간의 다재다능함',
      traitDescription: '기술 하나를 선택해 추가로 숙련됩니다. 소지 중량이 25% 증가합니다.'),
];

class HighElf extends Race {
  void updateRaceState(int characterLevel) {}
  HighElf()
      : super(
            raceType: HIGHELF,
            raceProfs: [12],
            raceWeaponProf: [4, 7, 18, 30],
            raceTraits: [RaceTraits[0], RaceTraits[1]]);
}

class WoodElf extends Race {
  void updateRaceState(int characterLevel) {}
  WoodElf()
      : super(
            raceType: WOODELF,
            raceProfs: [3, 12],
            raceWeaponProf: [4, 7, 18, 30],
            speedType: 3,
            raceTraits: [RaceTraits[0], RaceTraits[1]]);
}

class AsmodeusTieFling extends Race {
  void updateRaceState(int characterLevel) {}
  AsmodeusTieFling()
      : super(
            raceType: ASMODEUSTIF, raceTraits: [RaceTraits[2], RaceTraits[3]]);
}

class MephistophelesTiefling extends Race {
  void updateRaceState(int characterLevel) {}
  MephistophelesTiefling()
      : super(
            raceType: MEPHISTOPHELESTIF,
            raceTraits: [RaceTraits[2], RaceTraits[3]]);
}

class ZarielTiefling extends Race {
  void updateRaceState(int characterLevel) {}
  ZarielTiefling()
      : super(raceType: ZARIELTIF, raceTraits: [RaceTraits[2], RaceTraits[3]]);
}

class SeldarineDrow extends Race {
  void updateRaceState(int characterLevel) {}
  SeldarineDrow()
      : super(
            raceType: SELDARINEDROW,
            raceTraits: [RaceTraits[0], RaceTraits[4], RaceTraits[5]]);
}

class LolthDrow extends Race {
  void updateRaceState(int characterLevel) {}
  LolthDrow()
      : super(
            raceType: LOLTHDROW,
            raceTraits: [RaceTraits[0], RaceTraits[4], RaceTraits[5]]);
}

class Human extends Race {
  void updateRaceState(int characterLevel) {}

  Human()
      : super(
            raceType: HUMAN,
            weightCapacity: 1.25,
            raceWeaponProf: [27, 15, 10, 13],
            raceArmorProf: 1,
            raceTraits: [RaceTraits[6], RaceTraits[7]]);
}

class GithYanki extends Race {
  void updateRaceState(int characterLevel) {}

  GithYanki() : super(raceType: GITHYANKI);
}

class GoldDwarf extends Race {
  void updateRaceState(int characterLevel) {}

  GoldDwarf() : super(raceType: GOLDDWARF, raceAddedHealth: 1);
}

class ShieldDwarf extends Race {
  void updateRaceState(int characterLevel) {}

  ShieldDwarf() : super(raceType: SHIELDDWARF, raceAddedHealth: 1);
}

class Duerga extends Race {
  void updateRaceState(int characterLevel) {}

  Duerga() : super(raceType: DUERGA, raceAddedHealth: 1);
}

class HighHalfElf extends Race {
  void updateRaceState(int characterLevel) {}

  HighHalfElf() : super(raceType: HIGHHALF);
}

class WoodHalfElf extends Race {
  void updateRaceState(int characterLevel) {}

  WoodHalfElf() : super(raceType: WOODHALF);
}

class DrowHalfElf extends Race {
  void updateRaceState(int characterLevel) {}

  DrowHalfElf() : super(raceType: DROWHALF);
}

class LightfootHalfling extends Race {
  void updateRaceState(int characterLevel) {}

  LightfootHalfling() : super(raceType: LIGHTFOOTHAL);
}

class StrongheartHalfling extends Race {
  void updateRaceState(int characterLevel) {}

  StrongheartHalfling() : super(raceType: STRONGHEARTHAL);
}

class ForestGnome extends Race {
  void updateRaceState(int characterLevel) {}

  ForestGnome() : super(raceType: FORESTGNOME);
}

class DeepGnome extends Race {
  void updateRaceState(int characterLevel) {}

  DeepGnome() : super(raceType: DEEPGNOME);
}

class BlackBorn extends Race {
  void updateRaceState(int characterLevel) {}

  BlackBorn() : super(raceType: BLACKBORN);
}

class BlueBorn extends Race {
  void updateRaceState(int characterLevel) {}

  BlueBorn() : super(raceType: BLUEBORN);
}

class BrassBorn extends Race {
  void updateRaceState(int characterLevel) {}

  BrassBorn() : super(raceType: BRASSBORN);
}

class BronzeBorn extends Race {
  void updateRaceState(int characterLevel) {}

  BronzeBorn() : super(raceType: BRONZEBORN);
}

class CopperBorn extends Race {
  void updateRaceState(int characterLevel) {}

  CopperBorn() : super(raceType: COPPERBORN);
}

class GoldBorn extends Race {
  void updateRaceState(int characterLevel) {}

  GoldBorn() : super(raceType: GOLDBORN);
}

class GreenBorn extends Race {
  void updateRaceState(int characterLevel) {}

  GreenBorn() : super(raceType: GREENBORN);
}

class RedBorn extends Race {
  void updateRaceState(int characterLevel) {}

  RedBorn() : super(raceType: REDBORN);
}

class SilverBorn extends Race {
  void updateRaceState(int characterLevel) {}

  SilverBorn() : super(raceType: SILVERBORN);
}

class WhiteBorn extends Race {
  void updateRaceState(int characterLevel) {}

  WhiteBorn() : super(raceType: WHITEBORN);
}

class HalfOrc extends Race {
  void updateRaceState(int characterLevel) {}

  HalfOrc() : super(raceType: HALFORC);
}
