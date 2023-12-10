import '../constant/constant_code.dart';
import '../sheet_structure/character_class.dart';

class ClericClass extends CharacterClass {
  bool isSubClassSelectable;
  int subClassType;

  int classProficiencyMaxNum;
  int classProficiencyCurrNum;

  List<int> selectedClassActions = [];
  List<int> selectedClassTraits = [];
  //[is selected, is selectable]

  ClericClass({
    this.subClassType = -1, //0: battlemaster, 1: eldrich knight, 2: champion
    this.isSubClassSelectable = false,
    this.classProficiencyMaxNum = 0,
    this.classProficiencyCurrNum = 0,
    List<int>? selectedFightingStyles,
    List<int>? classProficiencies,
    List<int>? selectedManoeuvres,
    List<int>? selectedClassActions,
    List<int>? selectedClassTraits,
  })  : selectedClassActions = selectedClassActions ?? [],
        selectedClassTraits = selectedClassTraits ?? [],
        super(
          classType: CLERIC,
          classDescription:
              '클레릭은 자신이 섬기는 신의 대리인으로, 강력한 신성 마법을 휘둘러 선이나 악을 행합니다.',
          hitPointBase: 8,
          hitPointPerLevel: 5,
          isCaster: true,
          classProfSelecatble: [5, 10, 11, 17, 8],
          classProfNum: 2,
          startingArmorProf: 2,
          startingWeaponProf: [31],
        );

  void updateClericClass() {
    //사용 시에는 if (~ is Fighter) {(~ as Fighter).~();} 으로 캐스팅해서 사용할 것

    switch (super.classLevel) {
      case 0:
        subClassType = -1;
        isSubClassSelectable = false;
        classProficiencyMaxNum = 0;
        classProficiencyCurrNum = 0;
        break;
      case 1:
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
