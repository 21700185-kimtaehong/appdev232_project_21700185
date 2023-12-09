import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';
import 'package:appdev232_project_21700185/select_pages/class_levelup_button.dart';
import 'package:appdev232_project_21700185/select_pages/class_select_pages/class_skill_select.dart';

class RangerPage extends StatefulWidget {
  const RangerPage(BuildContext context, {Key? key}) : super(key: key);

  @override
  _RangerPageState createState() => _RangerPageState();
}

class _RangerPageState extends State<RangerPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('레인저'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildClassLevelUpButton(context, RANGER, screenWidth),
            const Divider(color: Color.fromARGB(255, 216, 214, 214)),
            if (characterState.currCharacter.startingClassType == RANGER)
              Text(
                '기술 숙련 ${characterState.currCharacter.characterClasses[RANGER - BARD].classProficiencies.length} / ${characterState.currCharacter.characterClasses[RANGER - BARD].classProfNum}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            if (characterState.currCharacter.startingClassType == RANGER)
              selectClassSkillProf(context, RANGER),
          ],
        ),
      ),
    );
  }
}
