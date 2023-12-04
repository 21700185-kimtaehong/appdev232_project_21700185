import 'package:appdev232_project_21700185/select_pages/ability_select.dart';
import 'package:appdev232_project_21700185/select_pages/class_select.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/sheet_page/button_select.dart';
import 'package:appdev232_project_21700185/select_pages/background_select.dart';
import 'package:appdev232_project_21700185/select_pages/race_select.dart';
import 'package:appdev232_project_21700185/temp_page.dart';
import 'package:appdev232_project_21700185/sheet_page/summary_page.dart';

class BuildPage extends StatefulWidget {
  const BuildPage({Key? key}) : super(key: key);

  @override
  _BuildPageState createState() => _BuildPageState();
}

class _BuildPageState extends State<BuildPage> {
  late PageController _pageController;
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
            child: SummaryPage(),
          ),
        ],
      );
    } else {
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
            return SummaryPage();
          }
        },
      );
    }
  }

  Widget selectedPageWidget(int pageIndex) {
    switch (pageIndex) {
      case 1:
        return BackgroundPage(context);
      case 2:
        return RacePage(context);
      case 3:
        return AbilityPage(context);
      case 4:
        return ClassPage(context);
      default:
        return const TempPage();
    }
  }
}
