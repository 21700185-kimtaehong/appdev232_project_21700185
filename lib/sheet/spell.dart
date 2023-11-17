class Spell {
  bool slotConsume;
  bool shortRest;
  bool longRest;
  bool isConcentrate;
  
  int spellLevel;
  int spellDC;
  int saveAbility;
  int damage;
  int damageType;
  int duration;

  List<Condition> conditions;

  Spell({
    required this.slotConsume,
    required this.shortRest,
    required this.longRest,
    required this.isConcentrate,
    required this.spellLevel,
    required this.spellDC,
    required this.saveAbility,
    required this.damage,
    required this.damageType,
    required this.duration,
  });
}