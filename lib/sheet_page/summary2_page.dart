import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_background.dart';
import 'package:appdev232_project_21700185/constant/constant_names.dart';
import 'package:appdev232_project_21700185/constant/constant_race.dart';
import 'package:appdev232_project_21700185/constant/constant_weapon.dart';

class Summary2Page extends StatefulWidget {
  const Summary2Page({super.key});

  @override
  _Summary2PageState createState() => _Summary2PageState();
}

class _Summary2PageState extends State<Summary2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Row(
        children: [
          Container(
            width: 1,
            color: Colors.grey,
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Consumer<CharacterState>(
                    builder: (context, characterState, child) {
                  return ListView(children: <Widget>[
                    const Text(
                      '기술 보너스',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    for (int i = 0;
                        i <
                            characterState
                                .currCharacter.characterProficiencies.length;
                        i++)
                      Text(
                          '${profNames[i]}  :  ${characterState.currCharacter.characterProficiencies[i].skillBonus}'),
                  ]);
                })),
          )
        ],
      ),
    );
  }
}
