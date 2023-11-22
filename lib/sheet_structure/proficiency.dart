import 'constant.dart';

class Proficiency {
  String profName;
  int profNum;
  int baseAbilityType;
  double isSkilled;
  bool isSpecialized;

  Proficiency({
    required this.profName,
    required this.profNum,
    required this.baseAbilityType,
    this.isSkilled = 0.0,
    this.isSpecialized = false,
  });
}
