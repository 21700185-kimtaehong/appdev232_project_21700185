class Spell {
  bool slotConsume;
  bool shortRest;
  bool longRest;
  bool needConcentrate;

  int spellLevel;
  int spellDC;
  int saveAbility;
  int damage;
  int damageType;
  int duration;
  int school;
  int castingTime;
  String range;
  String spellDescription;

  Spell({
    required this.slotConsume,
    required this.shortRest,
    required this.longRest,
    required this.needConcentrate,
    required this.spellLevel,
    required this.spellDC,
    required this.saveAbility,
    required this.damage,
    required this.damageType,
    required this.duration,
    required this.school,
    required this.castingTime,
    required this.range,
    required this.spellDescription,
  });
}
