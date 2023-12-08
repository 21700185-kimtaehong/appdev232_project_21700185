class Proficiency {
  int profNum;
  int baseAbilityType;
  bool isSkilled;
  bool isDoubleSkilled;
  bool isExpertised;
  bool isSelectable;

  Proficiency({
    required this.profNum,
    required this.baseAbilityType,
    this.isSkilled = false,
    this.isExpertised = false,
    this.isDoubleSkilled = false,
    this.isSelectable = false,
  });
}
