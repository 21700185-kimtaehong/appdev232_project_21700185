import 'constant.dart';

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
  }) : strength= List<int>.from(defaultAbilityState), 
      dexterity= List<int>.from(defaultAbilityState), 
      constitution= List<int>.from(defaultAbilityState), 
      intelligence= List<int>.from(defaultAbilityState), 
      wisdom= List<int>.from(defaultAbilityState), 
      charisma = List<int>.from(defaultAbilityState);

  void updateAbility(int abilityType, bool updown) { // updown = true : up, false : down
    switch (abilityType) {
      case STR:
        if (statusup) {
          if ()
        }
        else {

        }
        break;
    }
  }
// {ability_base, ability_added20, ability_added22, ability_added, ability_final}
  //         0             1                2                3              4
  void calculateAbility (List<int> ability, bool updown) {
    if (updown){
      if (ability[0] < 13) {
        totalPoint -= 1;
        ability[0] += 1;
        ability[4] = ability[0] + ability[1] + ability[2] + ability[3];
      }
      else if (ability[0] < 15) {
        totalPoint -= 2;
        ability[0] += 1;
      }
    }
    else {
      if ()
    }

    
  }

}

List<int> defaultAbilityState = [8, 0, 0, 0, 8];

