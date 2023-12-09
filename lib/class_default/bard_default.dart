import '../constant/constant_code.dart';
import '../sheet_structure/character_class.dart';

class BardClass extends CharacterClass {
  bool isSubClassSelectable;
  int subClassType;

  int fightingStyleMaxNum;
  int fightingStyleCurrNum;
  List<int> selectedFightingStyles = [];

  int classProficiencyMaxNum;
  int classProficiencyCurrNum;

  List<int> selectedClassActions = [];
  List<int> selectedClassTraits = [];

  bool joat;

  BardClass({
    this.subClassType = -1, //0: battlemaster, 1: eldrich knight, 2: champion
    this.isSubClassSelectable = false,
    this.fightingStyleMaxNum = 0,
    this.fightingStyleCurrNum = 0,
    this.classProficiencyMaxNum = 0,
    this.classProficiencyCurrNum = 0,
    this.joat = false,
    List<int>? selectedFightingStyles,
    List<int>? classProficiencies,
    List<int>? selectedClassActions,
    List<int>? selectedClassTraits,
  }) : super(
          classType: BARD,
          classDescription:
              '당신은 음악이 그저 상상이 아니라 힘을 지니고 있음을 알고 있습니다. 당신은 공부와 모험을 통해 노래와 연설, 그리고 그것들이 지닌 마법에 숙련되었습니다.',
          hitPointBase: 8,
          hitPointPerLevel: 5,
          isCaster: true,
          classProfSelecatble: [18],
          classProfNum: 3,
          startingArmorProf: 1,
          startingWeaponProf: [32, 16, 2, 4, 7],
        );

  void updateBardClass() {
    //사용 시에는 if (~ is Fighter) {(~ as Fighter).~();} 으로 캐스팅해서 사용할 것

    switch (super.classLevel) {
      case 0:
        subClassType = -1;
        isSubClassSelectable = false;
        fightingStyleMaxNum = 0;
        fightingStyleCurrNum = 0;
        classProficiencyMaxNum = 0;
        classProficiencyCurrNum = 0;
        joat = false;
        break;
      case 1:
        fightingStyleMaxNum = 1;
        classProficiencyMaxNum = 0;
        joat = true;
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
