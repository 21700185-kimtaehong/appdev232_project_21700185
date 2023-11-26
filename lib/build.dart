import 'package:flutter/material.dart';
import 'package:appdev232_project_21700185/sheet_structure/character.dart';
import 'package:appdev232_project_21700185/sheet_page/button_select.dart';
import 'package:appdev232_project_21700185/sheet_page/background_select.dart';
import 'package:appdev232_project_21700185/temp_page.dart';

class BuildPage extends StatefulWidget {
  const BuildPage({Key? key}) : super(key: key);

  @override
  _BuildPageState createState() => _BuildPageState();
}

class _BuildPageState extends State<BuildPage> {
  late PageController _pageController;
  late Character character;
  int selectedPageIndex = 0;

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

  void selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    if (screenSize.width > 1000) {
      return Row(
        children: [
          SizedBox(
            width: 200,
            child: ButtonPage(context, selectPage),
          ),
          Expanded(
            child: selectedPageWidget(selectedPageIndex),
          ),
          Expanded(
            child: TempPage(),
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
                SizedBox(
                  width: 200,
                  child: ButtonPage(context, selectPage),
                ),
                Expanded(
                  child: selectedPageWidget(selectedPageIndex),
                ),
              ],
            );
          } else {
            return TempPage();
          }
        },
      );
    }
  }

  Widget selectedPageWidget(int pageIndex) {
    switch (pageIndex) {
      case 1:
        return BackgroundPage(context);
      default:
        return const TempPage(); // 기본 페이지
    }
  }
}
