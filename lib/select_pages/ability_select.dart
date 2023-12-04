import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
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
