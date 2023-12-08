import '../constant/constant_code.dart';

class Ability {
  int totalPoint;
  late List<int> strength;
  late List<int> dexterity;
  late List<int> constitution;
  late List<int> intelligence;
  late List<int> wisdom;
  late List<int> charisma;
  int add1type;
  int add2type;

  // {ability_base, ability_added17, ability_added20, ability_added22, ability_added, ability_final, ability_fix}
  //         0             1                2                3              4             5             6

  Ability({
    this.totalPoint = 30,
    this.add1type = -1,
    this.add2type = -2,
  })  : strength = List<int>.from(defaultAbilityState),
        dexterity = List<int>.from(defaultAbilityState),
        constitution = List<int>.from(defaultAbilityState),
        intelligence = List<int>.from(defaultAbilityState),
        wisdom = List<int>.from(defaultAbilityState),
        charisma = List<int>.from(defaultAbilityState);

  void updateAdd1type(int index) {
    add1type = index;
  }

  void updateAdd2type(int index) {
    add2type = index;
  }

  void updateAbility(
      List<int> abilityType, bool updown, int addedType, int amount) {
    switch (addedType) {
      case 0:
        updateBaseAbility(abilityType, updown);
        break;
      case 1:
        update17AddedAbility(abilityType, updown, amount);
        break;
      case 2:
        update20AddedAbility(abilityType, updown, amount);
        break;
      case 3:
        update22AddedAbility(abilityType, updown, amount);
        break;
      case 4:
        updateAddedAbility(abilityType, updown, amount);
        break;
    }
    if (abilityType[5] != 0) {
      abilityType[4] = abilityType[5];
    } else {
      int temp = 0;
      if (abilityType[0] + abilityType[1] > 20) {
        temp = 20;
      } else {
        temp = abilityType[0] + abilityType[1];
      }
      if (temp + abilityType[2] > 22) {
        temp = 22;
      } else {
        temp += abilityType[2];
      }
      abilityType[4] = temp + abilityType[3];
    }
  }

// {ability_base, ability_added20, ability_added22, ability_added, ability_final, ability_fix}
//         0             1                2                3              4           5
  void updateBaseAbility(List<int> ability, bool updown) {
    if (updown) {
      if (totalPoint > 0) {
        if (ability[0] < 13) {
          totalPoint -= 1;
          ability[0] += 1;
        } else if (totalPoint > 1 && ability[0] < 15) {
          totalPoint -= 2;
          ability[0] += 1;
        }
      }
    } else {
      if (ability[0] > 13) {
        totalPoint += 2;
        ability[0] -= 1;
      } else if (ability[0] > 8) {
        totalPoint += 1;
        ability[0] -= 1;
      }
    }
  }

  void update17AddedAbility(List<int> ability, bool updown, int amount) {
    if (updown) {
      ability[1] += amount;
    } else {
      ability[1] -= amount;
    }
  }

  void update20AddedAbility(List<int> ability, bool updown, int amount) {
    if (updown) {
      ability[2] += amount;
    } else {
      ability[2] -= amount;
    }
  }

  void update22AddedAbility(List<int> ability, bool updown, int amount) {
    if (updown) {
      ability[3] += amount;
    } else {
      ability[3] -= amount;
    }
  }

  void updateAddedAbility(List<int> ability, bool updown, int amount) {
    if (updown) {
      ability[4] += amount;
    } else {
      ability[4] -= amount;
    }
  }
}

List<int> defaultAbilityState = [8, 0, 0, 0, 8, 0];
