import 'package:appdev232_project_21700185/sheet_structure/ability.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_names.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';

class AbilityPage extends StatefulWidget {
  const AbilityPage(BuildContext context, {Key? key}) : super(key: key);

  @override
  _AbilityPageState createState() => _AbilityPageState();
}

class _AbilityPageState extends State<AbilityPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool ablePadding = (screenWidth > 500);

    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);

    int currAdd1type = characterState.currCharacter.characterAbility.add1type;
    int currAdd2type = characterState.currCharacter.characterAbility.add2type;

    return Scaffold(
      appBar: AppBar(
        title: const Text('능력치'),
      ),
      body: Padding(
          padding: (ablePadding)
              ? const EdgeInsets.only(left: 32, right: 32, top: 16, bottom: 16)
              : const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text('포인트', style: TextStyle(color: Colors.white)),
                Ink(
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                    ),
                    child: null,
                  ),
                ),
                Text(characterState.currCharacter.characterAbility.totalPoint.toString(),
                style: TextStyle(color: Colors.white)),
                Ink(
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                    ),
                    child: null,
                  ),
                ),
                Text('+ 1', style: TextStyle(color: Colors.white)),
                Padding(
                  padding: EdgeInsets.only(right: 1), 
                  child: null,
                ),
                Text('+ 2', style: TextStyle(color: Colors.white)),
                
              ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    abilityNames[0],
                    style: TextStyle(color: Colors.white),
                  ),
                  abilitydownButton(context, STR),
                  Text(
                    characterState.currCharacter.characterAbility.strength[4]
                        .toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  abilityupButton(context, STR),
                  Radio(
                    value: 1,
                    groupValue: currAdd1type,
                    onChanged: (value) {
                      setState(() {
                        if (currAdd1type != -1) {
                          characterState.updateAbilityState(
                              currAdd1type, false, 1, 1);
                        }
                        currAdd1type = value!;
                        characterState.updateAdd1type(value);
                        characterState.updateAbilityState(
                            currAdd1type, true, 1, 1);
                      });
                    },
                    activeColor: Colors.white,
                  ),
                  Radio(
                    value: 1,
                    groupValue: currAdd2type,
                    onChanged: (value) {
                      setState(() {
                        if (currAdd2type != -1) {
                          characterState.updateAbilityState(
                              currAdd2type, false, 1, 2);
                        }
                        currAdd2type = value!;
                        characterState.updateAdd2type(value);
                        characterState.updateAbilityState(
                            currAdd2type, true, 1, 2);
                      });
                    },
                    activeColor: Colors.white,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    abilityNames[1],
                    style: TextStyle(color: Colors.white),
                  ),
                  abilitydownButton(context, DEX),
                  Text(
                    characterState.currCharacter.characterAbility.dexterity[4]
                        .toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  abilityupButton(context, DEX),
                  Radio(
                    value: 2,
                    groupValue: currAdd1type,
                    onChanged: (value) {
                      setState(() {
                        if (currAdd1type != -1) {
                          characterState.updateAbilityState(
                              currAdd1type, false, 1, 1);
                        }
                        currAdd1type = value!;
                        characterState.updateAdd1type(value);
                        characterState.updateAbilityState(
                            currAdd1type, true, 1, 1);
                      });
                    },
                    activeColor: Colors.white,
                  ),
                  Radio(
                    value: 2,
                    groupValue: currAdd2type,
                    onChanged: (value) {
                      setState(() {
                        if (currAdd2type != -1) {
                          characterState.updateAbilityState(
                              currAdd2type, false, 1, 2);
                        }
                        currAdd2type = value!;
                        characterState.updateAdd2type(value);
                        characterState.updateAbilityState(
                            currAdd2type, true, 1, 2);
                      });
                    },
                    activeColor: Colors.white,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    abilityNames[2],
                    style: TextStyle(color: Colors.white),
                  ),
                  abilitydownButton(context, CON),
                  Text(
                    characterState.currCharacter.characterAbility.constitution[4]
                        .toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  abilityupButton(context, CON),
                  Radio(
                    value: 3,
                    groupValue: currAdd1type,
                    onChanged: (value) {
                      setState(() {
                        if (currAdd1type != -1) {
                          characterState.updateAbilityState(
                              currAdd1type, false, 1, 1);
                        }
                        currAdd1type = value!;
                        characterState.updateAdd1type(value);
                        characterState.updateAbilityState(
                            currAdd1type, true, 1, 1);
                      });
                    },
                    activeColor: Colors.white,
                  ),
                  Radio(
                    value: 3,
                    groupValue: currAdd2type,
                    onChanged: (value) {
                      setState(() {
                        if (currAdd2type != -1) {
                          characterState.updateAbilityState(
                              currAdd2type, false, 1, 2);
                        }
                        currAdd2type = value!;
                        characterState.updateAdd2type(value);
                        characterState.updateAbilityState(
                            currAdd2type, true, 1, 2);
                      });
                    },
                    activeColor: Colors.white,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    abilityNames[3],
                    style: TextStyle(color: Colors.white),
                  ),
                  abilitydownButton(context, INT),
                  Text(
                    characterState.currCharacter.characterAbility.intelligence[4]
                        .toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  abilityupButton(context, INT),
                  Radio(
                    value: 4,
                    groupValue: currAdd1type,
                    onChanged: (value) {
                      setState(() {
                        if (currAdd1type != -1) {
                          characterState.updateAbilityState(
                              currAdd1type, false, 1, 1);
                        }
                        currAdd1type = value!;
                        characterState.updateAdd1type(value);
                        characterState.updateAbilityState(
                            currAdd1type, true, 1, 1);
                      });
                    },
                    activeColor: Colors.white,
                  ),
                  Radio(
                    value: 4,
                    groupValue: currAdd2type,
                    onChanged: (value) {
                      setState(() {
                        if (currAdd2type != -1) {
                          characterState.updateAbilityState(
                              currAdd2type, false, 1, 2);
                        }
                        currAdd2type = value!;
                        characterState.updateAdd2type(value);
                        characterState.updateAbilityState(
                            currAdd2type, true, 1, 2);
                      });
                    },
                    activeColor: Colors.white,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    abilityNames[4],
                    style: TextStyle(color: Colors.white),
                  ),
                  abilitydownButton(context, WIS),
                  Text(
                    characterState.currCharacter.characterAbility.wisdom[4]
                        .toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  abilityupButton(context, WIS),
                  Radio(
                    value: 5,
                    groupValue: currAdd1type,
                    onChanged: (value) {
                      setState(() {
                        if (currAdd1type != -1) {
                          characterState.updateAbilityState(
                              currAdd1type, false, 1, 1);
                        }
                        currAdd1type = value!;
                        characterState.updateAdd1type(value);
                        characterState.updateAbilityState(
                            currAdd1type, true, 1, 1);
                      });
                    },
                    activeColor: Colors.white,
                  ),
                  Radio(
                    value: 5,
                    groupValue: currAdd2type,
                    onChanged: (value) {
                      setState(() {
                        if (currAdd2type != -1) {
                          characterState.updateAbilityState(
                              currAdd2type, false, 1, 2);
                        }
                        currAdd2type = value!;
                        characterState.updateAdd2type(value);
                        characterState.updateAbilityState(
                            currAdd2type, true, 1, 2);
                      });
                    },
                    activeColor: Colors.white,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    abilityNames[5],
                    style: TextStyle(color: Colors.white),
                  ),
                  abilitydownButton(context, CHA),
                  Text(
                    characterState.currCharacter.characterAbility.charisma[4]
                        .toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  abilityupButton(context, CHA),
                  Radio(
                    value: 6,
                    groupValue: currAdd1type,
                    onChanged: (value) {
                      setState(() {
                        if (currAdd1type != -1) {
                          characterState.updateAbilityState(
                              currAdd1type, false, 1, 1);
                        }
                        currAdd1type = value!;
                        characterState.updateAdd1type(value);
                        characterState.updateAbilityState(
                            currAdd1type, true, 1, 1);
                      });
                    },
                    activeColor: Colors.white,
                  ),
                  Radio(
                    value: 6,
                    groupValue: currAdd2type,
                    onChanged: (value) {
                      setState(() {
                        if (currAdd2type != -1) {
                          characterState.updateAbilityState(
                              currAdd2type, false, 1, 2);
                        }
                        currAdd2type = value!;
                        characterState.updateAdd2type(value);
                        characterState.updateAbilityState(
                            currAdd2type, true, 1, 2);
                      });
                    },
                    activeColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}

Widget abilitydownButton(BuildContext context, int abilityType) {
  CharacterState characterState =
      Provider.of<CharacterState>(context, listen: true);
  List<int> currAbility = [];

  switch (abilityType) {
    case STR:
      currAbility = characterState.currCharacter.characterAbility.strength;
      break;
    case DEX:
      currAbility = characterState.currCharacter.characterAbility.dexterity;
      break;
    case CON:
      currAbility = characterState.currCharacter.characterAbility.constitution;
      break;
    case INT:
      currAbility = characterState.currCharacter.characterAbility.intelligence;
      break;
    case WIS:
      currAbility = characterState.currCharacter.characterAbility.wisdom;
      break;
    case CHA:
      currAbility = characterState.currCharacter.characterAbility.charisma;
      break;
  }
  return ElevatedButton(
    onPressed: () {
      if (currAbility[0] > 8) {
        characterState.updateAbilityState(abilityType, false, 0, 1);
      }
    },
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(16.0),
      backgroundColor: (currAbility[0] > 8) ? Colors.blue : Colors.grey,
    ),
    child: const Icon(Icons.remove),
  );
}

Widget abilityupButton(BuildContext context, int abilityType) {
  CharacterState characterState =
      Provider.of<CharacterState>(context, listen: true);
  List<int> currAbility = [];

  switch (abilityType) {
    case STR:
      currAbility = characterState.currCharacter.characterAbility.strength;
      break;
    case DEX:
      currAbility = characterState.currCharacter.characterAbility.dexterity;
      break;
    case CON:
      currAbility = characterState.currCharacter.characterAbility.constitution;
      break;
    case INT:
      currAbility = characterState.currCharacter.characterAbility.intelligence;
      break;
    case WIS:
      currAbility = characterState.currCharacter.characterAbility.wisdom;
      break;
    case CHA:
      currAbility = characterState.currCharacter.characterAbility.charisma;
      break;
  }
  return ElevatedButton(
    onPressed: () {
      if (currAbility[0] < 15) {
        characterState.updateAbilityState(abilityType, true, 0, 1);
      }
    },
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(16.0),
      backgroundColor: (currAbility[0] < 15) ? Colors.blue : Colors.grey,
    ),
    child: const Icon(Icons.add),
  );
}

Widget abilityUpdownButton(BuildContext context, int abilityType,
    List<bool> selectAdd1, List<bool> selectAdd2) {
  CharacterState characterState =
      Provider.of<CharacterState>(context, listen: true);

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    mainAxisSize: MainAxisSize.min,
    children: [
      ElevatedButton(
        onPressed: () {
          characterState.updateAbilityState(abilityType, true, 0, 1);
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16.0),
          backgroundColor:
              (characterState.currCharacter.characterAbility.strength[0] > 8)
                  ? Colors.blue
                  : Colors.grey,
        ),
        child: const Icon(Icons.remove),
      ),
      Text(abilityNames[abilityType - STR]),
      ElevatedButton(
        onPressed: () {
          characterState.updateAbilityState(abilityType, false, 0, 1);
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16.0),
          backgroundColor:
              (characterState.currCharacter.characterAbility.strength[0] < 15)
                  ? Colors.blue
                  : Colors.grey,
        ),
        child: const Icon(Icons.add),
      ),
    ],
  );
}