class Proficiency {
  int profNum;
  int baseAbilityType;
  double isSkilled;
  bool isSpecialized;

  Proficiency({
    required this.profNum,
    required this.baseAbilityType,
    this.isSkilled = 0.0,
    this.isSpecialized = false,
  });
}
