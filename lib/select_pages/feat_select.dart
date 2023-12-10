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

    List<int> currFeatSelected = characterState.currCharacter.selectedFeats;
    int currFeatNum = currFeatSelected.length;
    int maxFeatNum = characterState.currCharacter.characterFeatNum;

    if (currFeatNum > maxFeatNum) {
      currFeatSelected.removeAt(currFeatNum - 1);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('재주'),
        elevation: 0,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Text(
                '재주 $maxFeatNum / $currFeatNum',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Divider(color: Color.fromARGB(255, 216, 214, 214)),
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
