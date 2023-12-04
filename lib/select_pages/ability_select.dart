import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/sheet_structure/ability.dart';
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

    return Scaffold();
  }
}

Widget abilityUpdownButton(BuildContext context, int abilityType) {
  CharacterState characterState =
      Provider.of<CharacterState>(context, listen: true);

  Ability currAbility;
  switch (abilityType) {
    case STR:
      currAbility = characterState.currCharacter.characterAbility.strength;
      break;
    case DEX:
      currAbility = characterState.currCharacter.characterAbility[];
      break;
    case CON:
      currAbility = characterState.currCharacter.characterAbility[];
      break;
    case INT:
      currAbility = characterState.currCharacter.characterAbility[];
      break;
    case WIS:
      currAbility = characterState.currCharacter.characterAbility[];
      break;
    case CHA:
      currAbility = characterState.currCharacter.characterAbility[];
      break;
  }

  return Row (
    children :[
      ElevatedButton(
        onPressed: () {
            
        },
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(16.0),
            backgroundColor: (characterState.currCharacter.characterAbility.strength[0] > 8) ? Colors.blue : Colors.grey,
        ),
        child: const Icon(Icons.remove),
      ),
    ],
  );
}
