import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';

class ClassPage extends StatefulWidget {
  const ClassPage({Key? key}) : super(key: key);

  @override
  _ClassPageState createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double minButtonWidth = 100.0;
    TextStyle buttonTextStyle = TextStyle(fontSize: 16.0);

    int crossAxisCount = screenWidth < 600 ? 2 : 4;

    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);

    List<bool> currActiveClasses = characterState.currCharacter.activeClasses;

    return Scaffold(
      appBar: AppBar(
        title: const Text('클래스'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  classSelectButton(context, BARD, '바드', screenWidth, minButtonWidth, buttonTextStyle),
                  classSelectButton(context, BARBARIAN, '바바리안', screenWidth, minButtonWidth, buttonTextStyle),
                  classSelectButton(context, CLERIC, '클레릭', screenWidth, minButtonWidth, buttonTextStyle),
                  classSelectButton(context, DRUID, '드루이드', screenWidth, minButtonWidth, buttonTextStyle),
                  classSelectButton(context, FIGHTER, '파이터', screenWidth, minButtonWidth, buttonTextStyle),
                  classSelectButton(context, MONK, '몽크', screenWidth, minButtonWidth, buttonTextStyle),
                  classSelectButton(context, PALADIN, '팔라딘', screenWidth, minButtonWidth, buttonTextStyle),
                  classSelectButton(context, RANGER, '레인저', screenWidth, minButtonWidth, buttonTextStyle),
                  classSelectButton(context, ROGUE, '로그', screenWidth, minButtonWidth, buttonTextStyle),
                  classSelectButton(context, SORCERER, '소서러', screenWidth, minButtonWidth, buttonTextStyle),
                  classSelectButton(context, WARLOCK, '워락', screenWidth, minButtonWidth, buttonTextStyle),
                  classSelectButton(context, WIZARD, '위저드', screenWidth, minButtonWidth, buttonTextStyle),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
              crossAxisCount: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                if (currActiveClasses[1]) {
                }
              ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget classSelectButton(
    BuildContext context,
    int classType,
    String buttonText,
    double screenWidth,
    double minButtonWidth,
    TextStyle buttonTextStyle,
  ) {
    double buttonWidth =
        screenWidth < minButtonWidth ? screenWidth : minButtonWidth;

    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);
    bool isSelected = characterState.currCharacter.activeClasses[classType-10];

    return ElevatedButton(
      onPressed: () {
        if (isSelected) {
          characterState.currCharacter.deactivateClass(classType);
        }else {
          characterState.currCharacter.activateClass(classType);
        }
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16.0),
        minimumSize: Size(buttonWidth, 48.0),
        textStyle: buttonTextStyle,
        backgroundColor: isSelected ? Colors.blue : Colors.grey,
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(buttonText),
      ),
    );
  }

  Widget _buildClassLevelUpButton(
    BuildContext context,
    int classType,
    double screenWidth,
    double minButtonWidth,
    TextStyle buttonTextStyle,
  ) {
    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);
    
      return Row();
    }
}
