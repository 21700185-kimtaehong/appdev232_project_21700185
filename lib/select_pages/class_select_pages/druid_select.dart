import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';
import 'package:appdev232_project_21700185/select_pages/class_levelup_button.dart';
import 'package:appdev232_project_21700185/select_pages/class_select_pages/class_skill_select.dart';

class DruidPage extends StatefulWidget {
  const DruidPage(BuildContext context, {Key? key}) : super(key: key);

  @override
  _DruidPageState createState() => _DruidPageState();
}

class _DruidPageState extends State<DruidPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('드루이드'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildClassLevelUpButton(context, DRUID, screenWidth),
            const Divider(color: Color.fromARGB(255, 216, 214, 214)),
            if (characterState.currCharacter.startingClassType == DRUID)
              Text(
                '기술 숙련 ${characterState.currCharacter.characterClasses[DRUID - BARD].classProficiencies.length} / ${characterState.currCharacter.characterClasses[DRUID - BARD].classProfNum}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            if (characterState.currCharacter.startingClassType == DRUID)
              selectClassSkillProf(context, DRUID),
          ],
        ),
      ),
    );
  }
}
