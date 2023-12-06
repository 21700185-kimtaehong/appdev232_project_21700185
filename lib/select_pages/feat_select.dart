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
    List<int> currFeatSelected = characterState.currCharacter.selectedFeats;

    return Scaffold(
      appBar: AppBar(
        title: const Text('재주'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              for (int i = 0; i < featsList.length; i++)
                featItem(context, i, maxFeatNum, currFeatSelected),
            ],
          )),
    );
  }

  Widget featItem(BuildContext context, int index, int maxFeatNum,
      List<int> currFeatSelected) {
    return CheckboxListTile(
      title: Tooltip(
        message: featsList[index].traitDescription,
        child: Text(
          featsList[index].traitName,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      value: currFeatSelected.contains(index),
      onChanged: (bool? newValue) {
        setState(() {
          if (newValue != null) {
            if (newValue) {
              if (maxFeatNum > currFeatSelected.length) {
                currFeatSelected.add(index);
              } else {
                currFeatSelected.removeAt(maxFeatNum - 1);
                currFeatSelected.add(index);
              }
            } else {
              currFeatSelected.remove(index);
            }
          }
        });
      },
    );
  }
}
