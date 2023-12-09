import '../constant/constant_code.dart';
import '../constant/constant_fighter.dart';
import '../sheet_structure/character_class.dart';

class FighterClass extends CharacterClass {
  bool isSubClassSelectable;
  int subClassType;

  int fightingStyleMaxNum;
  int fightingStyleCurrNum;
  List<int> selectedFightingStyles = [];

  int manoeuvresMaxNum;
  int manoeuvresCurrNum;
  List<int> selectedManoeuvres = [];

  int fighterSuperiorDiceNum;
  int fighterSuperiorDiceSize;

  List<int> selectedClassActions = [];
  List<int> selectedClassTraits = [];

  FighterClass({
    this.subClassType = -1, //0: battlemaster, 1: eldrich knight, 2: champion
    this.isSubClassSelectable = false,
    this.fightingStyleMaxNum = 0,
    this.fightingStyleCurrNum = 0,
    this.manoeuvresMaxNum = 0,
    this.manoeuvresCurrNum = 0,
    this.fighterSuperiorDiceNum = 0,
    this.fighterSuperiorDiceSize = 0,
    List<int>? selectedFightingStyles,
    List<int>? classProficiencies,
    List<int>? selectedManoeuvres,
    List<int>? selectedClassActions,
    List<int>? selectedClassTraits,
  })  : selectedClassActions = selectedClassActions ?? [],
        selectedClassTraits = selectedClassTraits ?? [],
        super(
          classType: FIGHTER,
          classDescription:
              '파이터는 전투 기술의 달인이며, 견줄 자 없는 솜씨로 무기를 다루고 갑옷을 마치 자신의 또 다른 몸인 것처럼 걸칩니다.',
          hitPointBase: 10,
          hitPointPerLevel: 6,
          classProfSelecatble: [1, 9, 0, 5, 10, 16, 12, 13],
          classProfNum: 2,
          startingArmorProf: 3,
          startingWeaponProf: [33],
        );

  void updateFighterClass() {
    //사용 시에는 if (~ is Fighter) {(~ as Fighter).~();} 으로 캐스팅해서 사용할 것
    if (fightingStyleCurrNum > fightingStyleMaxNum) {
      selectedFightingStyles.removeAt(fightingStyleCurrNum);
      fightingStyleCurrNum = fightingStyleMaxNum;
    }
    if (manoeuvresCurrNum > manoeuvresMaxNum) {
      selectedManoeuvres.removeAt(manoeuvresCurrNum);
      manoeuvresCurrNum = manoeuvresMaxNum;
    }

    switch (super.classLevel) {
      case 0:
        subClassType = -1;
        isSubClassSelectable = false;
        fightingStyleMaxNum = 0;
        fightingStyleCurrNum = 0;
        manoeuvresMaxNum = 0;
        manoeuvresCurrNum = 0;
        fighterSuperiorDiceNum = 0;
        fighterSuperiorDiceSize = 8;
        selectedManoeuvres = [];
        selectedManoeuvres = [];
        selectedClassActions = [];
        selectedClassTraits = [];
        break;
      case 1:
        fightingStyleMaxNum = 1;
        selectedClassActions.add(0);
        selectedClassActions.remove(1);
        break;
      case 2:
        subClassType = -1;
        manoeuvresMaxNum = 0;
        fighterSuperiorDiceNum = 0;
        fighterSuperiorDiceSize = 0;
        super.isHalfCaster = false;
        isSubClassSelectable = false;
        selectedClassActions.add(1);
        selectedClassActions.remove(2);
        selectedClassTraits.remove(0);
        selectedClassTraits.remove(1);
        break;
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
            selectedClassActions.add(2);
            selectedClassTraits.add(0);
            break;
          case 2:
            selectedClassTraits.add(1);
            break;
        }
      case 4:
        super.extraAttackNum = 0;
        break;
      case 5:
        super.extraAttackNum = 1;
        break;
      case 6:
        selectedClassTraits.remove(3);
        selectedClassTraits.remove(4);
        break;
      case 7:
        switch (subClassType) {
          case 0:
            fighterSuperiorDiceNum = 5;
            manoeuvresMaxNum = 3;
            break;
          case 1:
            selectedClassTraits.add(3);
            break;
          case 2:
            selectedClassTraits.add(4);
            break;
        }
        break;
      case 8:
        selectedClassTraits.remove(2);
        break;
      case 9:
        selectedClassTraits.add(2);
        break;
      case 10:
        super.extraAttackNum = 1;
        break;
      case 11:
        super.extraAttackNum = 2;
        break;
      default:
        break;
    }
  }

  void updateFighterTraits() {
    if (selectedClassTraits.isNotEmpty) {
      super.addTrait(fighterTraitList, selectedClassTraits);
    }
    if (fightingStyleCurrNum > 0) {
      super.addTrait(fightStyles, selectedFightingStyles);
    }
  }

  void updateFighterActions() {
    if (manoeuvresCurrNum > 0) {
      super.addAction(battleMaster_manoeuvres, selectedManoeuvres);
    }
  }
}
