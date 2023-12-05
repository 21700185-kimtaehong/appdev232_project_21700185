import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_structure/character_state.dart';
import 'package:appdev232_project_21700185/constant/constant_feat.dart';


class FeatPage extends StatefulWidget {
  const FeatPage(BuildContext context, {Key? key}) : super(key: key);

  @override
  _FeatPageState createState() => _FeatPageState();
}

class _FeatPageState extends State<FeatPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    CharacterState characterState =
        Provider.of<CharacterState>(context, listen: true);

    int maxFeatNum = characterState.currCharacter.characterFeatNum;
    int currFeatNum = 0;
    List<int> currFeatSelected = [-1, -1, -1, -1];

    return Scaffold(
      appBar: AppBar(
        title: const Text('재주'),
      ),
      body: Padding(padding: ,
      child: Column (
        children: [
          
      ],)
      ),
    );
  }

  Widget featItem (BuildContext context, int index) {
    return Row(children: [],);
  }
}