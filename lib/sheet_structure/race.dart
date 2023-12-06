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

class Human extends Race {
  void updateRaceState(int characterLevel) {}

  Human() : super(raceType: HUMAN, weightCapacity: 1.25);
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
