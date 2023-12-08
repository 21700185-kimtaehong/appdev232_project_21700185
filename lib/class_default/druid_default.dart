import 'package:appdev232_project_21700185/sheet_structure/proficiency.dart';

import '../constant/constant_code.dart';
import '../constant/constant_fighter.dart';
import '../sheet_structure/action.dart';
import '../sheet_structure/character_class.dart';

class DruidClass extends CharacterClass {
  bool isSubClassSelectable;
  int subClassType;

  int classProficiencyMaxNum;
  int classProficiencyCurrNum;

  late List<List<bool>> selectedClassActions;
  late List<List<bool>> selectedClassTraits;
  //[is selected, is selectable]

  DruidClass({
    this.subClassType = -1, //0: battlemaster, 1: eldrich knight, 2: champion
    this.isSubClassSelectable = false,
    this.classProficiencyMaxNum = 0,
    this.classProficiencyCurrNum = 0,
    List<List<bool>>? selectedFightingStyles,
    List<Proficiency>? classProficiencies,
    List<List<bool>>? selectedManoeuvres,
    List<List<bool>>? selectedClassActions,
    List<List<bool>>? selectedClassTraits,
  })  : selectedClassActions = selectedClassActions ?? [],
        selectedClassTraits = selectedClassTraits ?? [],
        super(
            classType: DRUID,
            hitPointBase: 8,
            hitPointPerLevel: 5,
            isCaster: true);

  void updateDruidClass() {
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