import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';
import 'package:appdev232_project_21700185/select_pages/class_levelup_button.dart';
import 'package:appdev232_project_21700185/select_pages/class_select_pages/class_skill_select.dart';

class PaladinPage extends StatefulWidget {
  const PaladinPage(BuildContext context, {Key? key}) : super(key: key);

  @override
  _PaladinPageState createState() => _PaladinPageState();
}

class _PaladinPageState extends State<PaladinPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('팔라딘'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildClassLevelUpButton(context, PALADIN, screenWidth),
            const Divider(color: Color.fromARGB(255, 216, 214, 214)),
            if (characterState.currCharacter.startingClassType == PALADIN)
              Text(
                '기술 숙련 ${characterState.currCharacter.characterClasses[PALADIN - BARD].classProficiencies.length} / ${characterState.currCharacter.characterClasses[PALADIN - BARD].classProfNum}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            if (characterState.currCharacter.startingClassType == PALADIN)
              selectClassSkillProf(context, PALADIN),
          ],
        ),
      ),
    );
  }
}
