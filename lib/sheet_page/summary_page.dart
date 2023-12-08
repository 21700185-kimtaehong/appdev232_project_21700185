import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_background.dart';

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
                    Text(
                      '레벨: ${characterState.currCharacter.totalLevel}',
                      style: TextStyle(),
                    ),
                    Text(
                      '체력: ${characterState.currCharacter.hitpoints}',
                      style: TextStyle(),
                    ),
                    Text(
                      '배경: ${backgroundText(characterState.currCharacter.backgroundType)}',
                      style: TextStyle(),
                    )
                    // 추가 정보 표시
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
