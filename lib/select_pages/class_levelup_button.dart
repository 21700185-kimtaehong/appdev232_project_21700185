import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';

Widget buildClassLevelUpButton(
  BuildContext context,
  int classType,
  double screenWidth,
) {
  CharacterState characterState =
      Provider.of<CharacterState>(context, listen: true);

  return Row(
    children: [
      Container(
        width: 100,
        padding: const EdgeInsets.all(8.0),
        child: const SizedBox(
          width: 30,
          child: Text(
            '클래스 레벨',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {
          characterState.classLevelUp(classType, false);
        },
        child: const Icon(Icons.remove),
      ),
      Container(
        width: 50,
        padding: const EdgeInsets.all(8.0),
        child: Text(
          characterState
              .currCharacter.characterClasses[classType - 10].classLevel
              .toString(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      ElevatedButton(
        onPressed: () {
          characterState.classLevelUp(classType, true);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: (characterState.currCharacter.totalLevel < 12)
              ? Colors.blue
              : Colors.grey,
        ),
        child: const Icon(Icons.add),
      ),
    ],
  );
}
