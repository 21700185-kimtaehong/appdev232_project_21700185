import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/sheet_structure/constant.dart';

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
    TextStyle buttonTextStyle = TextStyle(fontSize: 16.0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('배경'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                backgroundSelectButton(context, ACOLYTE, '복사', screenWidth,
                    minButtonWidth, buttonTextStyle),
                backgroundSelectButton(context, CHARLATAN, '사기꾼', screenWidth,
                    minButtonWidth, buttonTextStyle),
                backgroundSelectButton(context, CRIMINAL, '범죄자', screenWidth,
                    minButtonWidth, buttonTextStyle),
                backgroundSelectButton(context, ENTERTAINER, '연예인', screenWidth,
                    minButtonWidth, buttonTextStyle),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                backgroundSelectButton(context, FOLKHERO, '민중 영웅', screenWidth,
                    minButtonWidth, buttonTextStyle),
                backgroundSelectButton(context, GUILDARTISAN, '길드 장인',
                    screenWidth, minButtonWidth, buttonTextStyle),
                backgroundSelectButton(context, NOBLE, '귀족', screenWidth,
                    minButtonWidth, buttonTextStyle),
                backgroundSelectButton(context, OUTLANDER, '이방인', screenWidth,
                    minButtonWidth, buttonTextStyle),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                backgroundSelectButton(context, SAGE, '학자', screenWidth,
                    minButtonWidth, buttonTextStyle),
                backgroundSelectButton(context, SOLDIER, '군인', screenWidth,
                    minButtonWidth, buttonTextStyle),
                backgroundSelectButton(context, URCHIN, '부랑아', screenWidth,
                    minButtonWidth, buttonTextStyle),
                backgroundSelectButton(context, HAUNTED, '사로잡힌 자', screenWidth,
                    minButtonWidth, buttonTextStyle),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget backgroundSelectButton(
    BuildContext context,
    int index,
    String buttonText,
    double screenWidth,
    double minButtonWidth,
    TextStyle buttonTextStyle,
  ) {
    double buttonWidth =
        screenWidth < minButtonWidth ? screenWidth : minButtonWidth;

    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);
    int curr_index = characterState.currCharacter.backgroundType;
    bool isSelected = curr_index == index;

    return ElevatedButton(
      onPressed: () {
        characterState.setBackground(index);
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(16.0),
        minimumSize: Size(buttonWidth, 48.0),
        textStyle: buttonTextStyle,
        backgroundColor: isSelected ? Colors.blue : Colors.grey,
      ),
      child: Text(buttonText),
    );
  }
}
