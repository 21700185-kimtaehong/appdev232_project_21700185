enum ArType { light, medium, heavy }

class Armor {
  ArType arType;
  bool shield;

  Armor({
    required this.arType,
    this.shield = false,
  });
}
