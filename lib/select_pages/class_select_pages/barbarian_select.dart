import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';
import 'package:appdev232_project_21700185/select_pages/class_levelup_button.dart';
import 'package:appdev232_project_21700185/select_pages/class_select_pages/class_skill_select.dart';

class BarbarianPage extends StatefulWidget {
  const BarbarianPage(BuildContext context, {Key? key}) : super(key: key);

  @override
  _BarbarianPageState createState() => _BarbarianPageState();
}

class _BarbarianPageState extends State<BarbarianPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('바바리안'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildClassLevelUpButton(context, BARBARIAN, screenWidth),
            const Divider(color: Color.fromARGB(255, 216, 214, 214)),
            if (characterState.currCharacter.startingClassType == BARBARIAN)
              Text(
                '기술 숙련 ${characterState.currCharacter.characterClasses[BARBARIAN - BARD].classProficiencies.length} / ${characterState.currCharacter.characterClasses[BARBARIAN - BARD].classProfNum}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            if (characterState.currCharacter.startingClassType == BARBARIAN)
              selectClassSkillProf(context, BARBARIAN),
          ],
        ),
      ),
    );
  }
}
