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

    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);

    int currAdd1type = characterState.currCharacter.characterAbility.add1type;
    int currAdd2type = characterState.currCharacter.characterAbility.add2type;

    return Scaffold(
      appBar: AppBar(
        title: const Text('능력치'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 50,
                ),
                Opacity(
                  opacity: 0,
                  child: Container(
                    width: 10,
                  ),
                ),
                Container(
                  width: 30,
                  child: Text(
                    characterState.currCharacter.characterAbility.totalPoint
                        .toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0,
                  child: Container(
                    width: 30,
                  ),
                ),
                Container(
                    width: 25,
                    child: const Tooltip(
                      message: '능력치 보너스',
                      child: Text(
                        '+ 1',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                Container(
                  width: 25,
                  child: const Tooltip(
                    message: '능력치 보너스',
                    child: Text(
                      '+ 2',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 30,
                    child: Text(
                      abilityNames[0],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                abilitydownButton(context, STR),
                Container(
                  width: 30,
                  child: Text(
                    characterState.currCharacter.characterAbility.strength[5]
                        .toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                abilityupButton(context, STR),
                Opacity(
                  opacity: (currAdd2type == 1) ? 0 : 1,
                  child: Radio(
                    value: 1,
                    groupValue: currAdd1type,
                    onChanged: (value) {
                      if (currAdd2type == 1) {
                      } else {
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
                      }
                    },
                    activeColor: Colors.grey,
                  ),
                ),
                Opacity(
                  opacity: (currAdd1type == 1) ? 0 : 1,
                  child: Radio(
                    value: 1,
                    groupValue: currAdd2type,
                    onChanged: (value) {
                      if (currAdd1type == 1) {
                      } else {
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
                      }
                    },
                    activeColor: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 30,
                    child: Text(
                      abilityNames[1],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                abilitydownButton(context, DEX),
                Container(
                  width: 30,
                  child: Text(
                    characterState.currCharacter.characterAbility.dexterity[5]
                        .toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                abilityupButton(context, DEX),
                Opacity(
                  opacity: (currAdd2type == 2) ? 0 : 1,
                  child: Radio(
                    value: 2,
                    groupValue: currAdd1type,
                    onChanged: (value) {
                      if (currAdd2type == 2) {
                      } else {
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
                      }
                    },
                    activeColor: Colors.grey,
                  ),
                ),
                Opacity(
                  opacity: (currAdd1type == 2) ? 0 : 1,
                  child: Radio(
                    value: 2,
                    groupValue: currAdd2type,
                    onChanged: (value) {
                      if (currAdd1type == 2) {
                      } else {
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
                      }
                    },
                    activeColor: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 30,
                    child: Text(
                      abilityNames[2],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                abilitydownButton(context, CON),
                Container(
                  width: 30,
                  child: Text(
                    characterState
                        .currCharacter.characterAbility.constitution[5]
                        .toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                abilityupButton(context, CON),
                Opacity(
                  opacity: (currAdd2type == 3) ? 0 : 1,
                  child: Radio(
                    value: 3,
                    groupValue: currAdd1type,
                    onChanged: (value) {
                      if (currAdd2type == 3) {
                      } else {
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
                      }
                    },
                    activeColor: Colors.grey,
                  ),
                ),
                Opacity(
                  opacity: (currAdd1type == 3) ? 0 : 1,
                  child: Radio(
                    value: 3,
                    groupValue: currAdd2type,
                    onChanged: (value) {
                      if (currAdd1type == 3) {
                      } else {
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
                      }
                    },
                    activeColor: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 30,
                    child: Text(
                      abilityNames[3],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                abilitydownButton(context, INT),
                Container(
                  width: 30,
                  child: Text(
                    characterState
                        .currCharacter.characterAbility.intelligence[5]
                        .toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                abilityupButton(context, INT),
                Opacity(
                  opacity: (currAdd2type == 4) ? 0 : 1,
                  child: Radio(
                    value: 4,
                    groupValue: currAdd1type,
                    onChanged: (value) {
                      if (currAdd2type == 4) {
                      } else {
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
                      }
                    },
                    activeColor: Colors.grey,
                  ),
                ),
                Opacity(
                  opacity: (currAdd1type == 4) ? 0 : 1,
                  child: Radio(
                    value: 4,
                    groupValue: currAdd2type,
                    onChanged: (value) {
                      if (currAdd1type == 4) {
                      } else {
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
                      }
                    },
                    activeColor: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 30,
                    child: Text(
                      abilityNames[4],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                abilitydownButton(context, WIS),
                Container(
                  width: 30,
                  child: Text(
                    characterState.currCharacter.characterAbility.wisdom[5]
                        .toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                abilityupButton(context, WIS),
                Opacity(
                  opacity: (currAdd2type == 5) ? 0 : 1,
                  child: Radio(
                    value: 5,
                    groupValue: currAdd1type,
                    onChanged: (value) {
                      if (currAdd2type == 5) {
                      } else {
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
                      }
                    },
                    activeColor: Colors.grey,
                  ),
                ),
                Opacity(
                  opacity: (currAdd1type == 5) ? 0 : 1,
                  child: Radio(
                    value: 5,
                    groupValue: currAdd2type,
                    onChanged: (value) {
                      if (currAdd1type == 5) {
                      } else {
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
                      }
                    },
                    activeColor: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 30,
                    child: Text(
                      abilityNames[5],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                abilitydownButton(context, CHA),
                Container(
                  width: 30,
                  child: Text(
                    characterState.currCharacter.characterAbility.charisma[5]
                        .toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                abilityupButton(context, CHA),
                Opacity(
                  opacity: (currAdd2type == 6) ? 0 : 1,
                  child: Radio(
                    value: 6,
                    groupValue: currAdd1type,
                    onChanged: (value) {
                      if (currAdd2type == 6) {
                      } else {
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
                      }
                    },
                    activeColor: Colors.grey,
                  ),
                ),
                Opacity(
                  opacity: (currAdd1type == 6) ? 0 : 1,
                  child: Radio(
                    value: 6,
                    groupValue: currAdd2type,
                    onChanged: (value) {
                      if (currAdd1type == 6) {
                      } else {
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
                      }
                    },
                    activeColor: Colors.grey,
                  ),
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
