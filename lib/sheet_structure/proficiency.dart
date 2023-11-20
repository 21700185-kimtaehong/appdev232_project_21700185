class Proficiency {
  String profName;
  int baseAbilityType;
  bool isSkilled;
  bool isSpecialized;

  Proficiency({
    required this.profName,
    required this.baseAbilityType,
    this.isSkilled = false,
    this.isSpecialized = false,
  });
}
