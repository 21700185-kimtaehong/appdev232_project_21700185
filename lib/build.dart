import 'package:flutter/material.dart';
import 'package:appdev232_project_21700185/sheet_structure/character.dart';

class BuildPage extends StatefulWidget {
  const BuildPage({Key? key}) : super(key: key);

  @override
  _BuildPageState createState() => _BuildPageState();
}

class _BuildPageState extends State<BuildPage> {
  late PageController _pageController;
  late Character character;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    if (screenSize.width > 2500) {
      return Row(
        children: [
          Container(
            width: 200,
            child: Page1(),
          ),
          Expanded(
            child: Page2(),
          ),
          Expanded(
            child: Page3(),
          ),
        ],
      );
    } else {
      // 작은 화면의 경우
      return PageView.builder(
        controller: _pageController,
        itemCount: 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Row(
              children: [
                Container(
                  width: 200,
                  child: Page1(),
                ),
                Expanded(
                  child: Page2(),
                ),
              ],
            );
          } else {
            return Page3();
          }
        },
      );
    }
  }
}
