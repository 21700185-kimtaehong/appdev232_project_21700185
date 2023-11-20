class Spell {
  bool slotConsume;
  bool shortRest;
  bool longRest;
  bool isConcentrate;

  int spellLevel;
  int saveAbility;
  int damage;
  int damageType;
  int duration;

  Spell({
    required this.slotConsume,
    required this.shortRest,
    required this.longRest,
    required this.needConcentrate,
    required this.spellLevel,
    required this.saveAbility,
    required this.damage,
    required this.damageType,
    required this.duration,
  });
}
