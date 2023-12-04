import 'package:appdev232_project_21700185/sheet_structure/race.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';

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
            _buildSubraceButtons(context, subRaceSetIndex, screenWidth,
                minButtonWidth, buttonTextStyle, crossAxisCount)
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
            raceSelectButton(context, HIGHELF, '하이엘프', screenWidth,
                minButtonWidth, buttonTextStyle),
            raceSelectButton(context, WOODELF, '우드엘프', screenWidth,
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
            raceSelectButton(context, ASMODEUSTIF, '아스모데우스 티플링', screenWidth,
                minButtonWidth, buttonTextStyle),
            raceSelectButton(context, MEPHISTOPHELESTIF, '메피스토펠레스 티플링',
                screenWidth, minButtonWidth, buttonTextStyle),
            raceSelectButton(context, ZARIELTIF, '자리엘 티플링', screenWidth,
                minButtonWidth, buttonTextStyle),
          ],
        ));
      default:
        return const SizedBox();
    }
  }
}
