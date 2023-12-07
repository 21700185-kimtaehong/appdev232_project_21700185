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

  late List<CharacterAction> raceActions;
  late List<Trait> raceTraits;
  late List<Spell> raceSpells;
  late List<bool> raceRegists;

  Race({
    this.raceType = -1,
    this.speedType = 1,
    this.weightCapacity = 1,
    this.raceAddedHealth = 0,
    List<CharacterAction>? raceActions,
    List<Trait>? raceTraits,
    List<Spell>? raceSpells,
    List<bool>? raceRegists,
  })  : raceActions = raceActions ?? [],
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

class HighElf extends Race {
  void updateRaceState(int characterLevel) {}
  HighElf() : super(raceType: HIGHELF);
}

class WoodElf extends Race {
  void updateRaceState(int characterLevel) {}
  WoodElf() : super(raceType: WOODELF);
}

class AsmodeusTieFling extends Race {
  void updateRaceState(int characterLevel) {}
  AsmodeusTieFling() : super(raceType: ASMODEUSTIF);
}

class MephistophelesTiefling extends Race {
  void updateRaceState(int characterLevel) {}
  MephistophelesTiefling() : super(raceType: MEPHISTOPHELESTIF);
}

class ZarielTiefling extends Race {
  void updateRaceState(int characterLevel) {}
  ZarielTiefling() : super(raceType: ZARIELTIF);
}

class SeldarineDrow extends Race {
  void updateRaceState(int characterLevel) {}
  SeldarineDrow() : super(raceType: SELDARINEDROW);
}

class LolthDrow extends Race {
  void updateRaceState(int characterLevel) {}
  LolthDrow() : super(raceType: LOLTHDROW);
}

class Human extends Race {
  void updateRaceState(int characterLevel) {}

  Human() : super(raceType: HUMAN, weightCapacity: 1.25);
}

class GithYanki extends Race {
  void updateRaceState(int characterLevel) {}

  GithYanki() : super(raceType: GITHYANKI);
}

class GoldDwarf extends Race {
  void updateRaceState(int characterLevel) {}

  GoldDwarf() : super(raceType: GOLDDWARF);
}

class ShieldDwarf extends Race {
  void updateRaceState(int characterLevel) {}

  ShieldDwarf() : super(raceType: SHIELDDWARF);
}

class Duerga extends Race {
  void updateRaceState(int characterLevel) {}

  Duerga() : super(raceType: DUERGA);
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