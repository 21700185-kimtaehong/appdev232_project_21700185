import 'package:appdev232_project_21700185/sheet_structure/proficiency.dart';

import '../constant/constant_code.dart';
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
          classDescription:
              '드루이드는 자연의 원소을 조종하고 동물과 깊은 친밀감을 공유합니다. 야생 형상을 숙달하면 모든 영역의 짐승으로 변신할 수 있습니다.',
          hitPointBase: 8,
          hitPointPerLevel: 5,
          isCaster: true,
          classProfSelecatble: [4, 9, 10, 11, 7, 12],
          classProfNum: 3,
          startingArmorProf: 2,
          startingWeaponProf: [33],
        );

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
