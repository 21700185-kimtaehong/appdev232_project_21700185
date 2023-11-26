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
    return Scaffold(
      appBar: AppBar(
        title: const Text('배경'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                backgroundSelectButton(context, ACOLYTE, '복사'),
                backgroundSelectButton(context, CHARLATAN, '사기꾼'),
                backgroundSelectButton(context, CRIMINAL, '범죄자'),
                backgroundSelectButton(context, ENTERTAINER, '연예인'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                backgroundSelectButton(context, FOLKHERO, '민중 영웅'),
                backgroundSelectButton(context, CHARLATAN, '길드 장인'),
                backgroundSelectButton(context, CRIMINAL, '귀족'),
                backgroundSelectButton(context, ENTERTAINER, '이방인'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                backgroundSelectButton(context, SAGE, '학자'),
                backgroundSelectButton(context, SOLDIER, '군인'),
                backgroundSelectButton(context, URCHIN, '부랑아'),
                backgroundSelectButton(context, HAUNTED, '사로잡힌 자'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget backgroundSelectButton(
    BuildContext context, int index, String buttonText) {
  return ElevatedButton(
      onPressed: () {
        CharacterState characterState =
            Provider.of<CharacterState>(context, listen: false);
        characterState.setBackground(index);
      },
      child: Text(buttonText));
}
