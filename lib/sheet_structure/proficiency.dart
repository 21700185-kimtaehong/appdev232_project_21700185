class Proficiency {
  int profNum;
  int baseAbilityType;
  int isSkilled;
  int isDoubleSkilled;
  int isSpecialized;
  bool isJOAT; // jack of all trades
  bool isSelectable;

  Proficiency({
    required this.profNum,
    required this.baseAbilityType,
    this.isSkilled = 0,
    this.isSpecialized = 0,
    this.isDoubleSkilled = 0,
    this.isJOAT = false,
    this.isSelectable = false,
  });
}
