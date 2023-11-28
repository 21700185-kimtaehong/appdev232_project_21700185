import '../constant/constant_code.dart';
import 'action.dart';
import 'character_class.dart';

class FighterClass extends CharacterClass {
  int hitPointBase;
  int hitPointPerLevel;

  int fightingStyleNum;
  int classProficiencyNum;

  int subClassType;

  int manoeuvresNum;
  int superiorDiceNum;
  int superiorDiceSize;

  bool isSubClassSelectable;

  late List<int> classProficiencies;
  late List<bool> selectedClassActions;
  late List<bool> selectedClassTraits;

  FighterClass({
    this.hitPointBase = 10,
    this.hitPointPerLevel = 6,
    this.fightingStyleNum = 0,
    this.classProficiencyNum = 0,
    this.subClassType = -1,
    this.manoeuvresNum = 0,
    this.superiorDiceNum = 0,
    this.superiorDiceSize = 0,
    this.isSubClassSelectable = false,
    List<int>? classProficiencies,
    List<int>? selectedFightingStyles,
    List<int>? selectedManoeuvres,
  })  : classProficiencies = classProficiencies ?? [],
        selectedFightingStyles = selectedFightingStyles ?? [],
        selectedManoeuvres = selectedManoeuvres ?? [],
        super(classType: FIGHTER);

  void updateFighterClass() {
    //사용 시에는 if (~ is Fighter) {(~ as Fighter).~();} 으로 캐스팅해서 사용할 것
    switch (super.classLevel) {
      case 0:
        fightingStyleNum = 0;
        classProficiencyNum = 0;
        subClassType = -1;
        manoeuvresNum = 0;
        superiorDiceNum = 0;
        superiorDiceSize = 0;
        break;
      case 1:
        fightingStyleNum = 1;
        classProficiencyNum = 0;
      case 2:
        subClassType = -1;
        manoeuvresNum = 0;
        superiorDiceNum = 0;
        superiorDiceSize = 0;
        super.isHalfCaster = false;
        isSubClassSelectable = false;
      case 3:
        isSubClassSelectable = true;
       
    }
  }

  void updateFightingStyles(List<int> newSelectedFightingStyles) {
    selectedFightingStyles = newSelectedFightingStyles;
  }
}
