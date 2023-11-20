class Spell {
  bool slotConsume;
  bool shortRest;
  bool longRest;
  bool needConcentrate;
  
  int spellLevel;
  int saveAbility;
  int damage;
  int damageType;
  int duration;
  int actionType;
  int schoolTYpe;

  String range;

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
    required this.actionType,
    required this.schoolTYpe,
    required this.range,
  });
}