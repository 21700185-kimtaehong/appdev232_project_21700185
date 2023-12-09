import '../constant/constant_code.dart';
import '../sheet_structure/character_class.dart';

class BarbarianClass extends CharacterClass {
  bool isSubClassSelectable;
  int subClassType;

  int fightingStyleMaxNum;
  int fightingStyleCurrNum;
  List<int> selectedFightingStyles = [];

  int classProficiencyMaxNum;
  int classProficiencyCurrNum;

  List<int> selectedClassActions = [];
  List<int> selectedClassTraits = [];
  //[is selected, is selectable]

  BarbarianClass({
    this.subClassType = -1, //0: battlemaster, 1: eldrich knight, 2: champion
    this.isSubClassSelectable = false,
    this.fightingStyleMaxNum = 0,
    this.fightingStyleCurrNum = 0,
    this.classProficiencyMaxNum = 0,
    this.classProficiencyCurrNum = 0,
    List<int>? selectedFightingStyles,
    List<int>? classProficiencies,
    List<int>? selectedClassActions,
    List<int>? selectedClassTraits,
  })  : selectedClassActions = selectedClassActions ?? [],
        selectedClassTraits = selectedClassTraits ?? [],
        super(
          classType: BARBARIAN,
          classDescription:
              '강자란 예리한 본능, 원초적인 육체, 그리고 무엇보다도 채워지지도, 꺼지지도 않는 분노를 끌어안고 있는 자를 칭합니다.',
          hitPointBase: 12,
          hitPointPerLevel: 7,
          classProfSelecatble: [0, 9, 16, 7, 13, 12],
          classProfNum: 2,
          startingArmorProf: 2,
          startingWeaponProf: [33],
        );

  void updateBarbarianClass() {
    //사용 시에는 if (~ is Fighter) {(~ as Fighter).~();} 으로 캐스팅해서 사용할 것

    switch (super.classLevel) {
      case 0:
        subClassType = -1;
        isSubClassSelectable = false;
        fightingStyleMaxNum = 0;
        fightingStyleCurrNum = 0;
        classProficiencyMaxNum = 0;
        classProficiencyCurrNum = 0;
        break;
      case 1:
        fightingStyleMaxNum = 1;
        classProficiencyMaxNum = 0;
      case 2:
        subClassType = -1;
        isSubClassSelectable = false;
      case 3:
        isSubClassSelectable = true;
        switch (subClassType) {
          case 0:
            break;
          case 1:
            break;
          case 2:
            break;
          default:
            break;
        }
      case 6:
    }
  }
}
