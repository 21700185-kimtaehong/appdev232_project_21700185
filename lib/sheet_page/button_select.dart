import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_page/button_builder.dart';
import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_names.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';

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

    List<bool> currActiveClasses = characterState.currCharacter.activeClasses;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  createCustomButton(
                    buttonText: '종족',
                    onPressed: () => widget.onPageSelected(1),
                    isValid: (characterState.currCharacter.raceType != -1),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  createCustomButton(
                    buttonText: '출신',
                    onPressed: () => widget.onPageSelected(2),
                    isValid:
                        (characterState.currCharacter.backgroundType != -1),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  createCustomButton(
                    buttonText: '능력치',
                    onPressed: () => widget.onPageSelected(3),
                    isValid: (characterState
                            .currCharacter.characterAbility.totalPoint ==
                        0),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  createCustomButton(
                    buttonText: '클래스',
                    onPressed: () => widget.onPageSelected(4),
                    isValid: (characterState.currCharacter.activeClasses
                        .contains(true)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  if (activateFeatSelect)
                    createCustomButton(
                      buttonText: '재주',
                      onPressed: () => widget.onPageSelected(5),
                      isValid: (true),
                    ),
                  if (activateFeatSelect)
                    const SizedBox(
                      height: 5,
                    ),
                  for (int i = 0;
                      i < characterState.currCharacter.activeClasses.length;
                      i++)
                    if (characterState.currCharacter.activeClasses[i])
                      Column(
                        children: [
                          createCustomButton(
                            buttonText: classNames[i],
                            onPressed: () => widget.onPageSelected(i + BARD),
                            isValid: (true),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      )
                ],
              ),
            ),
          ),
          Container(
            width: 1,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
