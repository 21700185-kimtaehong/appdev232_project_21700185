import 'package:appdev232_project_21700185/sheet_structure/proficiency.dart';

import '../constant/constant_code.dart';
import '../constant/constant_fighter.dart';
import '../sheet_structure/action.dart';
import '../sheet_structure/character_class.dart';

class FighterClass extends CharacterClass {
  int hitPointBase;
  int hitPointPerLevel;

  bool isSubClassSelectable;
  int subClassType;

  int fightingStyleMaxNum;
  int fightingStyleCurrNum;
  late List<List<bool>> selectedFightingStyles;

  int classProficiencyMaxNum;
  int classProficiencyCurrNum;
  late List<Proficiency> classProficiencies;

  int manoeuvresMaxNum;
  int manoeuvresCurrNum;
  late List<List<bool>> selectedManoeuvres;

  int fighterSuperiorDiceNum;
  int fighterSuperiorDiceSize;

  late List<List<bool>> selectedClassActions;
  late List<List<bool>> selectedClassTraits;
  //[is selected, is selectable]

  FighterClass({
    this.hitPointBase = 10,
    this.hitPointPerLevel = 6,
    this.subClassType = -1, //0: battlemaster, 1: eldrich knight, 2: champion
    this.isSubClassSelectable = false,
    this.fightingStyleMaxNum = 0,
    this.fightingStyleCurrNum = 0,
    this.classProficiencyMaxNum = 0,
    this.classProficiencyCurrNum = 0,
    this.manoeuvresMaxNum = 0,
    this.manoeuvresCurrNum = 0,
    this.fighterSuperiorDiceNum = 0,
    this.fighterSuperiorDiceSize = 0,
    List<List<bool>>? selectedFightingStyles,
    List<Proficiency>? classProficiencies,
    List<List<bool>>? selectedManoeuvres,
    List<List<bool>>? selectedClassActions,
    List<List<bool>>? selectedClassTraits,
  })  : selectedFightingStyles = defaultFighterFightingStyles,
        classProficiencies = defaultFighterProficiencyState,
        selectedManoeuvres = defaultSelectedManoeuvres,
        selectedClassActions = selectedClassActions ?? [],
        selectedClassTraits = selectedClassTraits ?? [],
        super(classType: FIGHTER);

  void updateFighterClass() {
    //사용 시에는 if (~ is Fighter) {(~ as Fighter).~();} 으로 캐스팅해서 사용할 것
    if (fightingStyleCurrNum > fightingStyleMaxNum) {
      selectedFightingStyles = defaultFighterFightingStyles;
    }
    if (manoeuvresCurrNum > manoeuvresMaxNum) {
      selectedManoeuvres = defaultSelectedManoeuvres;
    }

    switch (super.classLevel) {
      case 0:
        hitPointBase = 10;
        hitPointPerLevel = 6;
        subClassType = -1;
        isSubClassSelectable = false;
        fightingStyleMaxNum = 0;
        fightingStyleCurrNum = 0;
        classProficiencyMaxNum = 0;
        classProficiencyCurrNum = 0;
        manoeuvresMaxNum = 0;
        manoeuvresCurrNum = 0;
        fighterSuperiorDiceNum = 0;
        fighterSuperiorDiceSize = 8;
        classProficiencies = defaultFighterProficiencyState;
        break;
      case 1:
        fightingStyleMaxNum = 1;
        classProficiencyMaxNum = 0;
      case 2:
        subClassType = -1;
        manoeuvresMaxNum = 0;
        fighterSuperiorDiceNum = 0;
        fighterSuperiorDiceSize = 0;
        super.isHalfCaster = false;
        isSubClassSelectable = false;
      case 3:
        isSubClassSelectable = true;
        switch (subClassType) {
          case 0:
            manoeuvresMaxNum = 3;
            fighterSuperiorDiceNum = 4;
            fighterSuperiorDiceSize = 8;
            break;
          case 1:
            super.isHalfCaster = true;
            //행동:무기결속
            //특성:스펠캐스팅
            break;
          case 2:
            //특성:향상된 치명타
            break;
          default:
            break;
        }
      case 6:
    }
  }

  void updateFightingStyles(List<List<bool>> newSelectedFightingStyles) {
    selectedFightingStyles = newSelectedFightingStyles;
  }
}
