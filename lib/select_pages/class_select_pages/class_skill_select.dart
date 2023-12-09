import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';
import 'package:appdev232_project_21700185/constant/constant_names.dart';

Widget selectClassSkillProf(BuildContext context, int classType) {
  CharacterState characterState =
      Provider.of<CharacterState>(context, listen: true);

  List<int> currClassSkillList = characterState
      .currCharacter.characterClasses[classType - BARD].classProfSelecatble;

  if (currClassSkillList[0] == 18) {
    return Column(
      children: [for (int i = 0; i < 18; i++) skillItem(context, classType, i)],
    );
  } else {
    return Column(
      children: [
        for (int i = 0; i < currClassSkillList.length; i++)
          skillItem(context, classType, currClassSkillList[i]),
      ],
    );
  }
}

Widget skillItem(BuildContext context, int classType, int index) {
  CharacterState characterState =
      Provider.of<CharacterState>(context, listen: true);
  List<int> currSelectedSkill = characterState
      .currCharacter.characterClasses[classType - BARD].classProficiencies;
  int maxSkillNum = characterState
      .currCharacter.characterClasses[classType - BARD].classProfNum;
  return CheckboxListTile(
    title: Text(profNames[index]),
    value: currSelectedSkill.contains(index),
    onChanged: (bool? value) {
      if (value != null) {
        if (value) {
          if (maxSkillNum > currSelectedSkill.length) {
            currSelectedSkill.add(index);
          } else {
            currSelectedSkill.removeAt(maxSkillNum - 1);
            currSelectedSkill.add(index);
          }
        } else {
          currSelectedSkill.remove(index);
        }
      }
      characterState.updateSkillProfState();
    },
  );
}
