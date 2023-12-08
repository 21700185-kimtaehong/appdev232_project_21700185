import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';
import 'package:appdev232_project_21700185/constant/constant_background.dart';

class BackgroundPage extends StatefulWidget {
  const BackgroundPage(BuildContext context, {Key? key}) : super(key: key);

  @override
  _BackgroundPageState createState() => _BackgroundPageState();
}

class _BackgroundPageState extends State<BackgroundPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double minButtonWidth = 100.0;
    TextStyle buttonTextStyle = const TextStyle(fontSize: 16.0);

    int crossAxisCount = screenWidth < 600 ? 3 : 4;

    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);

    int currBackground = characterState.currCharacter.backgroundType;

    return Scaffold(
      appBar: AppBar(
        title: const Text('출신'),
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
                  backgroundSelectButton(context, ACOLYTE, '복사', screenWidth,
                      minButtonWidth, buttonTextStyle),
                  backgroundSelectButton(context, CHARLATAN, '사기꾼', screenWidth,
                      minButtonWidth, buttonTextStyle),
                  backgroundSelectButton(context, CRIMINAL, '범죄자', screenWidth,
                      minButtonWidth, buttonTextStyle),
                  backgroundSelectButton(context, ENTERTAINER, '연예인',
                      screenWidth, minButtonWidth, buttonTextStyle),
                  backgroundSelectButton(context, FOLKHERO, '민중 영웅',
                      screenWidth, minButtonWidth, buttonTextStyle),
                  backgroundSelectButton(context, GUILDARTISAN, '길드 장인',
                      screenWidth, minButtonWidth, buttonTextStyle),
                  backgroundSelectButton(context, NOBLE, '귀족', screenWidth,
                      minButtonWidth, buttonTextStyle),
                  backgroundSelectButton(context, OUTLANDER, '이방인', screenWidth,
                      minButtonWidth, buttonTextStyle),
                  backgroundSelectButton(context, SAGE, '학자', screenWidth,
                      minButtonWidth, buttonTextStyle),
                  backgroundSelectButton(context, SOLDIER, '군인', screenWidth,
                      minButtonWidth, buttonTextStyle),
                  backgroundSelectButton(context, URCHIN, '부랑아', screenWidth,
                      minButtonWidth, buttonTextStyle),
                ],
              ),
            ),
            if (currBackground != -1)
              const Divider(color: Color.fromARGB(255, 216, 214, 214)),
            if (currBackground != -1)
              backgroundDesciption(context, currBackground),
          ],
        ),
      ),
    );
  }

  Widget backgroundSelectButton(
    BuildContext context,
    int backgroundType,
    String buttonText,
    double screenWidth,
    double minButtonWidth,
    TextStyle buttonTextStyle,
  ) {
    double buttonWidth =
        screenWidth < minButtonWidth ? screenWidth : minButtonWidth;

    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);
    int currIndex = characterState.currCharacter.backgroundType;
    bool isSelected = currIndex == backgroundType;

    return ElevatedButton(
      onPressed: () {
        characterState.setBackground(backgroundType);
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

  Widget backgroundDesciption(BuildContext context, int backgroundType) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            backgroundText(backgroundType),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(backgroundDesc[backgroundType - ACOLYTE]),
          const SizedBox(
            height: 5,
          ),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                const TextSpan(
                  text: '기술 - ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: backgroundSkillText[backgroundType - ACOLYTE]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
