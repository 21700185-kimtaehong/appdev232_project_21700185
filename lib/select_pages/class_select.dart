import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';
import 'package:appdev232_project_21700185/constant/constant_names.dart';
import 'package:appdev232_project_21700185/constant/constant_weapon.dart';

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

    return Scaffold(
      appBar: AppBar(
        title: const Text('클래스'),
        elevation: 0,
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
            const Divider(thickness: 1, color: Colors.grey),
            Expanded(
              child: ListView(
                children: [
                  for (int i = 0;
                      i < characterState.currCharacter.activeClasses.length;
                      i++)
                    if (characterState.currCharacter.activeClasses[i])
                      classDescription(context, i + BARD),
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

  Widget classDescription(BuildContext context, int classType) {
    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          classNames[classType - BARD],
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(characterState
            .currCharacter.characterClasses[classType - BARD].classDescription),
        const SizedBox(
          height: 5,
        ),
        const Text('직업 숙련',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 5,
        ),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              const TextSpan(
                text: '무기: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              for (int i = 0;
                  i <
                      characterState
                          .currCharacter
                          .characterClasses[classType - BARD]
                          .startingWeaponProf
                          .length;
                  i++)
                TextSpan(
                    text:
                        '${defaultWeaponState[characterState.currCharacter.characterClasses[classType - BARD].startingWeaponProf[i]].weaponName} '),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              const TextSpan(
                text: '갑옷: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                  text: armorNames[characterState.currCharacter
                      .characterClasses[classType - BARD].startingArmorProf]),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              const TextSpan(
                text: '기술: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              for (int i = 0;
                  i <
                      characterState
                          .currCharacter
                          .characterClasses[classType - BARD]
                          .classProfSelecatble
                          .length;
                  i++)
                TextSpan(
                    text:
                        '${profNames[characterState.currCharacter.characterClasses[classType - BARD].classProfSelecatble[i]]} '),
              TextSpan(
                  text:
                      '중 택${characterState.currCharacter.characterClasses[classType - BARD].classProfNum}')
            ],
          ),
        ),
        const Divider(thickness: 1, color: Colors.grey),
      ],
    );
  }
}
