class Proficiency {
  int profNum;
  int baseAbilityType;
  double isSkilled;
  bool isSpecialized;
  bool isSelectable;

  Proficiency({
    required this.profNum,
    required this.baseAbilityType,
    this.isSkilled = 0.0,
    this.isSpecialized = false,
    this.isSelectable = true,
  });
}
