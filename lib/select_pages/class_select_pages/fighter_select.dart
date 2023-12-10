import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';
import 'package:appdev232_project_21700185/constant/constant_fighter.dart';
import 'package:appdev232_project_21700185/class_default/fighter_default.dart';
import 'package:appdev232_project_21700185/select_pages/class_levelup_button.dart';
import 'package:appdev232_project_21700185/select_pages/class_select_pages/class_skill_select.dart';
import 'package:appdev232_project_21700185/sheet_structure/character_class.dart';

class FighterPage extends StatefulWidget {
  const FighterPage(BuildContext context, {Key? key}) : super(key: key);

  @override
  _FighterPageState createState() => _FighterPageState();
}

class _FighterPageState extends State<FighterPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);

    FighterClass currClass = characterState
        .currCharacter.characterClasses[FIGHTER - BARD] as FighterClass;

    return Scaffold(
      appBar: AppBar(
        title: const Text('파이터'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildClassLevelUpButton(context, FIGHTER, screenWidth),
            const Divider(color: Color.fromARGB(255, 216, 214, 214)),
            if (characterState.currCharacter.startingClassType == FIGHTER)
              Text(
                '기술 숙련 ${characterState.currCharacter.characterClasses[FIGHTER - BARD].classProficiencies.length} / ${characterState.currCharacter.characterClasses[FIGHTER - BARD].classProfNum}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            if (characterState.currCharacter.startingClassType == FIGHTER)
              selectClassSkillProf(context, FIGHTER),
            if (currClass.isSubClassSelectable)
              const Divider(color: Color.fromARGB(255, 216, 214, 214)),
            if (currClass.isSubClassSelectable)
              const Text(
                '하위 클래스',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            if (currClass.isSubClassSelectable)
              fighterSubClassSelectButton(context, currClass),
            if (currClass.manoeuvresMaxNum > 0)
              const Divider(color: Color.fromARGB(255, 216, 214, 214)),
            if (currClass.manoeuvresMaxNum > 0)
              Text(
                '전술 ${currClass.manoeuvresMaxNum} / ${currClass.selectedManoeuvres.length}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            if (currClass.manoeuvresMaxNum > 0)
              for (int i = 0; i < battleMaster_manoeuvres.length; i++)
                manoeuvresSelectButton(context, currClass, i),
          ],
        ),
      ),
    );
  }

  Widget fighterSubClassSelectButton(
      BuildContext context, CharacterClass currClass) {
    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        ElevatedButton(
          onPressed: () {
            characterState.updateSubClass(FIGHTER, 0);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: ((currClass as FighterClass).subClassType == 0)
                ? Colors.blue
                : Colors.grey,
          ),
          child: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text('배틀 마스터'),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        ElevatedButton(
          onPressed: () {
            characterState.updateSubClass(FIGHTER, 1);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: ((currClass as FighterClass).subClassType == 1)
                ? Colors.blue
                : Colors.grey,
          ),
          child: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text('엘드리치 나이트'),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        ElevatedButton(
          onPressed: () {
            characterState.updateSubClass(FIGHTER, 2);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: ((currClass as FighterClass).subClassType == 2)
                ? Colors.blue
                : Colors.grey,
          ),
          child: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text('챔피언'),
          ),
        ),
      ],
    );
  }

  Widget manoeuvresSelectButton(
      BuildContext context, CharacterClass currClass, int index) {
    FighterClass currFighterClass = currClass as FighterClass;

    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);

    return CheckboxListTile(
      title: Text(battleMaster_manoeuvres[index].actionName),
      value: currFighterClass.selectedManoeuvres.contains(index),
      onChanged: (bool? value) {
        if (value != null) {
          if (value) {
            if (currFighterClass.manoeuvresMaxNum >
                currFighterClass.selectedManoeuvres.length) {
              currFighterClass.selectedManoeuvres.add(index);
            } else {
              currFighterClass.selectedManoeuvres
                  .removeAt(currFighterClass.manoeuvresMaxNum - 1);
              currFighterClass.selectedManoeuvres.add(index);
            }
          } else {
            currFighterClass.selectedManoeuvres.remove(index);
          }
        }
        currFighterClass.updateFighterActions();
        characterState.callNotify();
      },
    );
  }
}
