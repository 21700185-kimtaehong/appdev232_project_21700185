import 'package:appdev232_project_21700185/select_pages/ability_select.dart';
import 'package:appdev232_project_21700185/select_pages/class_select.dart';
import 'package:appdev232_project_21700185/select_pages/feat_select.dart';
import 'package:appdev232_project_21700185/sheet_page/summary2_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appdev232_project_21700185/select_pages/class_select_pages/bard_select.dart';
import 'package:appdev232_project_21700185/select_pages/class_select_pages/barbarian_select.dart';
import 'package:appdev232_project_21700185/select_pages/class_select_pages/cleric_select.dart';
import 'package:appdev232_project_21700185/select_pages/class_select_pages/druid_select.dart';
import 'package:appdev232_project_21700185/select_pages/class_select_pages/fighter_select.dart';
import 'package:appdev232_project_21700185/select_pages/class_select_pages/monk_select.dart';
import 'package:appdev232_project_21700185/select_pages/class_select_pages/paladin_select.dart';
import 'package:appdev232_project_21700185/select_pages/class_select_pages/rogue_select.dart';
import 'package:appdev232_project_21700185/select_pages/class_select_pages/ranger_select.dart';
import 'package:appdev232_project_21700185/select_pages/class_select_pages/sorcerer_select.dart';
import 'package:appdev232_project_21700185/select_pages/class_select_pages/warlock_select.dart';
import 'package:appdev232_project_21700185/select_pages/class_select_pages/wizard_select.dart';

import 'package:appdev232_project_21700185/sheet_page/button_select.dart';
import 'package:appdev232_project_21700185/select_pages/background_select.dart';
import 'package:appdev232_project_21700185/select_pages/race_select.dart';
import 'package:appdev232_project_21700185/temp_page.dart';
import 'package:appdev232_project_21700185/sheet_page/summary_page.dart';
import 'package:appdev232_project_21700185/constant/constant_code.dart';

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
            width: 150,
            child: ButtonPage(context, selectPage),
          ),
          Expanded(
            flex: 2,
            child: selectedPageWidget(selectedPageIndex),
          ),
          const Expanded(
            child: SummaryPage(),
          ),
          const Expanded(
            child: Summary2Page(),
          )
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
                  width: 150,
                  child: ButtonPage(context, selectPage),
                ),
                Expanded(
                  child: selectedPageWidget(selectedPageIndex),
                ),
              ],
            );
          } else {
            return const Row(
              children: [
                Expanded(
                  child: SummaryPage(),
                ),
                Expanded(
                  child: Summary2Page(),
                )
              ],
            );
          }
        },
      );
    }
  }

  Widget selectedPageWidget(int pageIndex) {
    switch (pageIndex) {
      case 0:
      case 1:
        return RacePage(context);
      case 2:
        return BackgroundPage(context);
      case 3:
        return AbilityPage(context);
      case 4:
        return ClassPage(context);
      case 5:
        return FeatPage(context);
      case BARD:
        return BardPage(context);
      case BARBARIAN:
        return BarbarianPage(context);
      case CLERIC:
        return ClericPage(context);
      case DRUID:
        return DruidPage(context);
      case FIGHTER:
        return FighterPage(context);
      case MONK:
        return MonkPage(context);
      case PALADIN:
        return PaladinPage(context);
      case RANGER:
        return RangerPage(context);
      case ROGUE:
        return RoguePage(context);
      case SORCERER:
        return SorcererPage(context);
      case WARLOCK:
        return WarlockPage(context);
      case WIZARD:
        return WizardPage(context);
      default:
        return const TempPage();
    }
  }
}
