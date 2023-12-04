import '../constant/constant_code.dart';

class Ability {
  int totalPoint;
  late List<int> strength;
  late List<int> dexterity;
  late List<int> constitution;
  late List<int> intelligence;
  late List<int> wisdom;
  late List<int> charisma;
  // {ability_base, ability_added20, ability_added22, ability_added, ability_final}
  //         0             1                2                3              4

  Ability({
    this.totalPoint = 30,
  })  : strength = List<int>.from(defaultAbilityState),
        dexterity = List<int>.from(defaultAbilityState),
        constitution = List<int>.from(defaultAbilityState),
        intelligence = List<int>.from(defaultAbilityState),
        wisdom = List<int>.from(defaultAbilityState),
        charisma = List<int>.from(defaultAbilityState);

  void updateAbility(int abilityType, bool updown, int addedType, int amount) {
    // updown = true : up, false : down
    switch (abilityType) {
      case STR:
        switch (addedType) {
          case 0:
            updateBaseAbility(strength, updown);
            break;
          case 1:
            update20AddedAbility(strength, updown, amount);
            break;
          case 2:
            update22AddedAbility(strength, updown, amount);
            break;
          case 3:
            updateAddedAbility(strength, updown, amount);
            break;
        }
        if (strength[5] == 0) {
          strength[4] = strength[0] + strength[1] + strength[2] + strength[3];
        } else {
          strength[4] = strength[5];
        }
        break;
      case DEX:
        switch (addedType) {
          case 0:
            updateBaseAbility(dexterity, updown);
            break;
          case 1:
            update20AddedAbility(dexterity, updown, amount);
            break;
          case 2:
            update22AddedAbility(dexterity, updown, amount);
            break;
          case 3:
            updateAddedAbility(dexterity, updown, amount);
            break;
        }
        if (dexterity[5] == 0) {
          dexterity[4] = dexterity[0] + dexterity[1] + dexterity[2] + dexterity[3];
        } else {
          dexterity[4] = dexterity[5];
        }
        break;
      case CON:
        switch (addedType) {
          case 0:
            updateBaseAbility(constitution, updown);
            break;
          case 1:
            update20AddedAbility(constitution, updown, amount);
            break;
          case 2:
            update22AddedAbility(constitution, updown, amount);
            break;
          case 3:
            updateAddedAbility(constitution, updown, amount);
            break;
        }
        if (constitution[5] == 0) {
          constitution[4] = constitution[0] + constitution[1] + constitution[2] + constitution[3];
        } else {
          constitution[4] = constitution[5];
        }
        break;
      case INT:
        switch (addedType) {
          case 0:
            updateBaseAbility(intelligence, updown);
            break;
          case 1:
            update20AddedAbility(intelligence, updown, amount);
            break;
          case 2:
            update22AddedAbility(intelligence, updown, amount);
            break;
          case 3:
            updateAddedAbility(intelligence, updown, amount);
            break;
        }
        if (intelligence[5] == 0) {
          intelligence[4] = intelligence[0] + intelligence[1] + intelligence[2] + intelligence[3];
        } else {
          intelligence[4] = intelligence[5];
        }
        break;
      case WIS:
        switch (addedType) {
          case 0:
            updateBaseAbility(wisdom, updown);
            break;
          case 1:
            update20AddedAbility(wisdom, updown, amount);
            break;
          case 2:
            update22AddedAbility(wisdom, updown, amount);
            break;
          case 3:
            updateAddedAbility(wisdom, updown, amount);
            break;
        }
        if (wisdom[5] == 0) {
          wisdom[4] = wisdom[0] + wisdom[1] + wisdom[2] + wisdom[3];
        } else {
          wisdom[4] = wisdom[5];
        }
        break;
      case CHA:
        switch (addedType) {
          case 0:
            updateBaseAbility(charisma, updown);
            break;
          case 1:
            update20AddedAbility(charisma, updown, amount);
            break;
          case 2:
            update22AddedAbility(charisma, updown, amount);
            break;
          case 3:
            updateAddedAbility(charisma, updown, amount);
            break;
        }
        if (charisma[5] == 0) {
          charisma[4] = charisma[0] + charisma[1] + charisma[2] + charisma[3];
        } else {
          charisma[4] = charisma[5];
        }
        break;
    }
  }

// {ability_base, ability_added20, ability_added22, ability_added, ability_final, ability_fix}
//         0             1                2                3              4
  void updateBaseAbility(List<int> ability, bool updown) {
    if (updown) {
      if (ability[0] < 13) {
        totalPoint -= 1;
        ability[0] += 1;
      } else if (ability[0] < 15) {
        totalPoint -= 2;
        ability[0] += 1;
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

  void update20AddedAbility(List<int> ability, bool updown, int amount) {
    if (updown) {
      ability[1] += amount;
    } else {
      ability[1] -= amount;
    }
  }

  void update22AddedAbility(List<int> ability, bool updown, int amount) {
    if (updown) {
      ability[2] += amount;
    } else {
      ability[2] -= amount;
    }
  }

  void updateAddedAbility(List<int> ability, bool updown, int amount) {
    if (updown) {
      ability[3] += amount;
    } else {
      ability[3] -= amount;
    }
  }
}

List<int> defaultAbilityState = [8, 0, 0, 0, 8, 0];
