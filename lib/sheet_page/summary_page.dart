import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_background_race.dart';

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
        title: Text('캐릭터 요약'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Consumer<CharacterState>(builder: (context, characterState, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '이름: ${characterState.currCharacter.chracterName}',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                '레벨: ${characterState.currCharacter.totalLevel}',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                '체력: ${characterState.currCharacter.hitpoints}',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                '배경: ${backgroundText(characterState.currCharacter.backgroundType)}',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
              // 추가 정보 표시
            ],
          );
        }),
      ),
    );
  }
}
