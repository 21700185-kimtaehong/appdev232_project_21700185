import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/race.dart';
import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';
import 'package:appdev232_project_21700185/constant/constant_race.dart';
import 'package:appdev232_project_21700185/constant/constant_names.dart';

class RacePage extends StatefulWidget {
  const RacePage(BuildContext context, {Key? key}) : super(key: key);

  @override
  _RacePageState createState() => _RacePageState();
}

class _RacePageState extends State<RacePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double minButtonWidth = 100.0;
    TextStyle buttonTextStyle = const TextStyle(fontSize: 16.0);

    int crossAxisCount = screenWidth < 600 ? 3 : 4;

    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);

    int subRaceSetIndex = -1;
    int currRaceType = characterState.currCharacter.raceType;
    switch (currRaceType) {
      case HIGHELF:
      case WOODELF:
        subRaceSetIndex = 0;
        break;
      case ASMODEUSTIF:
      case MEPHISTOPHELESTIF:
      case ZARIELTIF:
        subRaceSetIndex = 1;
        break;
      case SELDARINEDROW:
      case LOLTHDROW:
        subRaceSetIndex = 2;
        break;
      case GOLDDWARF:
      case SHIELDDWARF:
      case DUERGA:
        subRaceSetIndex = 3;
        break;
      case HIGHHALF:
      case WOODHALF:
      case DROWHALF:
        subRaceSetIndex = 4;
        break;
      case LIGHTFOOTHAL:
      case STRONGHEARTHAL:
        subRaceSetIndex = 5;
        break;
      case FORESTGNOME:
      case DEEPGNOME:
        subRaceSetIndex = 6;
        break;
      case BLACKBORN:
      case BLUEBORN:
      case BRASSBORN:
      case BRONZEBORN:
      case COPPERBORN:
      case GOLDBORN:
      case GREENBORN:
      case REDBORN:
      case SILVERBORN:
      case WHITEBORN:
        subRaceSetIndex = 7;
        break;
      default:
        subRaceSetIndex = -1;
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('종족'),
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
                  raceSelectButton(context, HIGHELF, '엘프', screenWidth,
                      minButtonWidth, buttonTextStyle),
                  raceSelectButton(context, ASMODEUSTIF, '티플링', screenWidth,
                      minButtonWidth, buttonTextStyle),
                  raceSelectButton(context, SELDARINEDROW, '드로우', screenWidth,
                      minButtonWidth, buttonTextStyle),
                  raceSelectButton(context, HUMAN, '인간', screenWidth,
                      minButtonWidth, buttonTextStyle),
                  raceSelectButton(context, GITHYANKI, '기스양키', screenWidth,
                      minButtonWidth, buttonTextStyle),
                  raceSelectButton(context, GOLDDWARF, '드워프', screenWidth,
                      minButtonWidth, buttonTextStyle),
                  raceSelectButton(context, HIGHHALF, '하프엘프', screenWidth,
                      minButtonWidth, buttonTextStyle),
                  raceSelectButton(context, LIGHTFOOTHAL, '하플링', screenWidth,
                      minButtonWidth, buttonTextStyle),
                  raceSelectButton(context, FORESTGNOME, '노움', screenWidth,
                      minButtonWidth, buttonTextStyle),
                  raceSelectButton(context, BLACKBORN, '드래곤본', screenWidth,
                      minButtonWidth, buttonTextStyle),
                  raceSelectButton(context, HALFORC, '하프오크', screenWidth,
                      minButtonWidth, buttonTextStyle),
                ],
              ),
            ),
            if (subRaceSetIndex != -1)
              const Divider(color: Color.fromARGB(255, 216, 214, 214)),
            if (subRaceSetIndex != -1)
              _buildSubraceButtons(context, subRaceSetIndex, screenWidth,
                  minButtonWidth, buttonTextStyle, crossAxisCount),
            if (currRaceType != -1)
              const Divider(color: Color.fromARGB(255, 216, 214, 214)),
            if (currRaceType != -1) raceDescription(context, currRaceType),
          ],
        ),
      ),
    );
  }

  Widget raceSelectButton(
    BuildContext context,
    int raceType,
    String buttonText,
    double screenWidth,
    double minButtonWidth,
    TextStyle buttonTextStyle,
  ) {
    double buttonWidth =
        screenWidth < minButtonWidth ? screenWidth : minButtonWidth;

    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);
    int currIndex = characterState.currCharacter.raceType;
    bool isSelected = currIndex == raceType;

    return ElevatedButton(
      onPressed: () {
        characterState.setRace(raceType);
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

  Widget _buildSubraceButtons(
    BuildContext context,
    int subRaceSetIndex,
    double screenWidth,
    double minButtonWidth,
    TextStyle buttonTextStyle,
    int crossAxisCount,
  ) {
    switch (subRaceSetIndex) {
      case 0:
        return Expanded(
            child: GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            raceSelectButton(context, HIGHELF, raceText(HIGHELF), screenWidth,
                minButtonWidth, buttonTextStyle),
            raceSelectButton(context, WOODELF, raceText(WOODELF), screenWidth,
                minButtonWidth, buttonTextStyle),
          ],
        ));
      case 1:
        return Expanded(
            child: GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            raceSelectButton(context, ASMODEUSTIF, raceText(ASMODEUSTIF),
                screenWidth, minButtonWidth, buttonTextStyle),
            raceSelectButton(
                context,
                MEPHISTOPHELESTIF,
                raceText(MEPHISTOPHELESTIF),
                screenWidth,
                minButtonWidth,
                buttonTextStyle),
            raceSelectButton(context, ZARIELTIF, raceText(ZARIELTIF),
                screenWidth, minButtonWidth, buttonTextStyle),
          ],
        ));
      case 2:
        return Expanded(
            child: GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            raceSelectButton(context, SELDARINEDROW, raceText(SELDARINEDROW),
                screenWidth, minButtonWidth, buttonTextStyle),
            raceSelectButton(context, LOLTHDROW, raceText(LOLTHDROW),
                screenWidth, minButtonWidth, buttonTextStyle),
          ],
        ));
      case 3:
        return Expanded(
            child: GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            raceSelectButton(context, GOLDDWARF, raceText(GOLDDWARF),
                screenWidth, minButtonWidth, buttonTextStyle),
            raceSelectButton(context, SHIELDDWARF, raceText(SHIELDDWARF),
                screenWidth, minButtonWidth, buttonTextStyle),
            raceSelectButton(context, DUERGA, raceText(DUERGA), screenWidth,
                minButtonWidth, buttonTextStyle),
          ],
        ));
      case 4:
        return Expanded(
            child: GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            raceSelectButton(context, HIGHHALF, raceText(HIGHHALF), screenWidth,
                minButtonWidth, buttonTextStyle),
            raceSelectButton(context, WOODHALF, raceText(WOODHALF), screenWidth,
                minButtonWidth, buttonTextStyle),
            raceSelectButton(context, DROWHALF, raceText(DROWHALF), screenWidth,
                minButtonWidth, buttonTextStyle),
          ],
        ));
      case 5:
        return Expanded(
            child: GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            raceSelectButton(context, LIGHTFOOTHAL, raceText(LIGHTFOOTHAL),
                screenWidth, minButtonWidth, buttonTextStyle),
            raceSelectButton(context, STRONGHEARTHAL, raceText(STRONGHEARTHAL),
                screenWidth, minButtonWidth, buttonTextStyle),
          ],
        ));
      case 6:
        return Expanded(
            child: GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            raceSelectButton(context, FORESTGNOME, raceText(FORESTGNOME),
                screenWidth, minButtonWidth, buttonTextStyle),
            raceSelectButton(context, DEEPGNOME, raceText(DEEPGNOME),
                screenWidth, minButtonWidth, buttonTextStyle),
          ],
        ));
      case 7:
        return Expanded(
            child: GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            raceSelectButton(context, BLACKBORN, raceText(BLACKBORN),
                screenWidth, minButtonWidth, buttonTextStyle),
            raceSelectButton(context, BLUEBORN, raceText(BLUEBORN), screenWidth,
                minButtonWidth, buttonTextStyle),
            raceSelectButton(context, BRASSBORN, raceText(BRASSBORN),
                screenWidth, minButtonWidth, buttonTextStyle),
            raceSelectButton(context, BRONZEBORN, raceText(BRONZEBORN),
                screenWidth, minButtonWidth, buttonTextStyle),
            raceSelectButton(context, COPPERBORN, raceText(COPPERBORN),
                screenWidth, minButtonWidth, buttonTextStyle),
            raceSelectButton(context, GOLDBORN, raceText(GOLDBORN), screenWidth,
                minButtonWidth, buttonTextStyle),
            raceSelectButton(context, GREENBORN, raceText(GREENBORN),
                screenWidth, minButtonWidth, buttonTextStyle),
            raceSelectButton(context, REDBORN, raceText(REDBORN), screenWidth,
                minButtonWidth, buttonTextStyle),
            raceSelectButton(context, SILVERBORN, raceText(SILVERBORN),
                screenWidth, minButtonWidth, buttonTextStyle),
            raceSelectButton(context, WHITEBORN, raceText(WHITEBORN),
                screenWidth, minButtonWidth, buttonTextStyle),
          ],
        ));
      default:
        return const SizedBox();
    }
  }

  Widget raceDescription(BuildContext context, int raceType) {
    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);
    return Expanded(
      child: ListView(children: [
        Text(raceText(raceType),
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 5,
        ),
        Text(raceDesc(raceType)),
        const SizedBox(
          height: 5,
        ),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              const TextSpan(
                text: '이동속도: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                  text: raceMovementText(
                      characterState.currCharacter.activeRace.speedType)),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        if (characterState.currCharacter.activeRace.raceProfs.isNotEmpty)
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
                            .currCharacter.activeRace.raceProfs.length;
                    i++)
                  TextSpan(
                      text:
                          '${profNames[characterState.currCharacter.activeRace.raceProfs[i]]} '),
              ],
            ),
          ),
        if (characterState.currCharacter.activeRace.raceProfs.isNotEmpty)
          const SizedBox(
            height: 5,
          ),
        for (int i = 0;
            i < characterState.currCharacter.activeRace.raceTraits.length;
            i++)
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text:
                      '${characterState.currCharacter.activeRace.raceTraits[i].traitName}: ',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text: characterState.currCharacter.activeRace.raceTraits[i]
                        .traitDescription),
              ],
            ),
          ),
      ]),
    );
  }
}
