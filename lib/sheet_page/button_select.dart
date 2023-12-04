import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/button_builder.dart';
import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';

class ButtonPage extends StatefulWidget {
  final Function(int) onPageSelected;
  ButtonPage(BuildContext context, this.onPageSelected, {Key? key})
      : super(key: key);

  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);

    bool activateFeatSelect =
        (characterState.currCharacter.characterFeatNum > 0);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            createCustomButton(
              buttonText: '배경',
              onPressed: () => widget.onPageSelected(1),
              isValid: (characterState.currCharacter.backgroundType != -1),
            ),
            createCustomButton(
              buttonText: '종족',
              onPressed: () => widget.onPageSelected(2),
              isValid: (characterState.currCharacter.raceType != -1),
            ),
            createCustomButton(
              buttonText: '능력치',
              onPressed: () => widget.onPageSelected(3),
              isValid:
                  (characterState.currCharacter.characterAbility.totalPoint ==
                      0),
            ),
            createCustomButton(
              buttonText: '클래스',
              onPressed: () => widget.onPageSelected(4),
              isValid:
                  (characterState.currCharacter.activeClasses.contains(true)),
            ),
            if (activateFeatSelect)
              createCustomButton(
                buttonText: '재주',
                onPressed: () => widget.onPageSelected(5),
                isValid: (true),
              ),
          ],
        ),
      ),
    );
  }
}
