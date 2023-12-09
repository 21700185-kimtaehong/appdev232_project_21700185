import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_background.dart';
import 'package:appdev232_project_21700185/constant/constant_names.dart';
import 'package:appdev232_project_21700185/constant/constant_race.dart';
import 'package:appdev232_project_21700185/constant/constant_weapon.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  _SummaryPageState createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('캐릭터 요약'),
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
                return ListView(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                '레벨: ${characterState.currCharacter.totalLevel}',
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          if (characterState.currCharacter.totalLevel > 0)
                            const TextSpan(text: ' ( '),
                          if (characterState.currCharacter.totalLevel > 0)
                            for (int i = 0;
                                i <
                                    characterState
                                        .currCharacter.activeClasses.length;
                                i++)
                              if (characterState.currCharacter
                                      .characterClasses[i].classLevel >
                                  0)
                                TextSpan(
                                    text:
                                        '${classNames[i]}${characterState.currCharacter.characterClasses[i].classLevel} '),
                          if (characterState.currCharacter.totalLevel > 0)
                            const TextSpan(text: ')'),
                        ],
                      ),
                    ),
                    Text(
                      '체력: ${characterState.currCharacter.hitpoints}',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(
                            text: '종족: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          if (characterState.currCharacter.raceType != -1)
                            TextSpan(
                                text: raceText(
                                    characterState.currCharacter.raceType)),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(
                            text: '출신: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          if (characterState.currCharacter.backgroundType != -1)
                            TextSpan(
                                text: backgroundText(characterState
                                    .currCharacter.backgroundType)),
                        ],
                      ),
                    ),
                    const Divider(color: Color.fromARGB(255, 216, 214, 214)),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(
                            text: '근력: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: characterState
                                  .currCharacter.characterAbility.strength[5]
                                  .toString()),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(
                            text: '민첩: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: characterState
                                  .currCharacter.characterAbility.dexterity[5]
                                  .toString()),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(
                            text: '건강: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: characterState.currCharacter
                                  .characterAbility.constitution[5]
                                  .toString()),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(
                            text: '지능: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: characterState.currCharacter
                                  .characterAbility.intelligence[5]
                                  .toString()),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(
                            text: '지혜: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: characterState
                                  .currCharacter.characterAbility.wisdom[5]
                                  .toString()),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(
                            text: '매력: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: characterState
                                  .currCharacter.characterAbility.charisma[5]
                                  .toString()),
                        ],
                      ),
                    ),
                    const Divider(color: Color.fromARGB(255, 216, 214, 214)),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(
                            text: '방어구: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: armorProfText(characterState
                                  .currCharacter.characterArmorProf)),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(
                            text: '무기: ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: weaponProfText(characterState
                                  .currCharacter.characterWeaponProf)),
                        ],
                      ),
                    ),
                    const Divider(color: Color.fromARGB(255, 216, 214, 214)),

                    //add from here
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

// 0~18번까지 군용무기
String weaponProfText(List<bool> characterWeaponState) {
  int startIndex = 0;
  int endIndex = 31;
  String temp = '';
  if (characterWeaponState[33]) {
    return '모든 무기';
  }
  if (characterWeaponState[31]) {
    temp += defaultWeaponState[31].weaponName;
    temp += ', ';
    startIndex = 19;
  }
  if (characterWeaponState[32]) {
    temp += defaultWeaponState[32].weaponName;
    temp += ', ';
    endIndex = 19;
  }

  for (int i = startIndex; i < endIndex; i++) {
    if (characterWeaponState[i]) {
      temp += defaultWeaponState[i].weaponName;
      temp += ', ';
    }
  }
  if (temp.length > 2) {
    temp = temp.substring(0, temp.length - 2);
  } else {
    return '없음';
  }

  return temp;
}
