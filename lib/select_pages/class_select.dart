import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';

class ClassPage extends StatefulWidget {
  const ClassPage(BuildContext context, {Key? key}) : super(key: key);

  @override
  _ClassPageState createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double minButtonWidth = 30.0;
    TextStyle buttonTextStyle = TextStyle(fontSize: 16.0);

    int crossAxisCount = screenWidth < 600 ? 3 : 4;

    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);

    List<bool> currActiveClasses = characterState.currCharacter.activeClasses;

    List<String> classNames = [
      '바드',
      '바바리안',
      '클레릭',
      '드루이드',
      '파이터',
      '몽크',
      '팔라딘',
      '레인저',
      '로그',
      '소서러',
      '워락',
      '위저드'
    ];

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
                  for (int i = 0; i < currActiveClasses.length; i++)
                    classSelectButton(context, BARD + i, classNames[i],
                        screenWidth, minButtonWidth, buttonTextStyle),
                ],
              ),
            ),
            const Divider(thickness: 1, color: Colors.white),
            Expanded(
              child: ListView(
                children: [
                  for (int i = 0; i < currActiveClasses.length; i++)
                    if (currActiveClasses[i])
                      _buildClassLevelUpButton(
                        context,
                        BARD + i,
                        classNames[i],
                        screenWidth,
                        minButtonWidth,
                        buttonTextStyle,
                      ),
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
    bool isSelected =
        characterState.currCharacter.activeClasses[classType - 10];

    return ElevatedButton(
      onPressed: () {
        if (isSelected) {
          characterState.deactivateClassState(classType);
        } else {
          characterState.activateClassState(classType);
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
    String className,
    double screenWidth,
    double minButtonWidth,
    TextStyle buttonTextStyle,
  ) {
    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);

    return Row(
      children: [
        Container(
          width: 100,
          padding: const EdgeInsets.all(8.0),
          child: Text(
            className,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            characterState.classLevelUp(classType, false);
          },
          child: const Icon(Icons.remove),
        ),
        ElevatedButton(
          onPressed: () {
            characterState.classLevelUp(classType, true);
          },
          child: const Icon(Icons.add),
        ),
        Container(
          width: 50,
          padding: const EdgeInsets.all(8.0),
          child: Text(
            characterState
                .currCharacter.characterClasses[classType - 10].classLevel
                .toString(),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
