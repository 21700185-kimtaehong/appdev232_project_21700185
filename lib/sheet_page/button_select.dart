import 'package:flutter/material.dart';

import 'package:appdev232_project_21700185/sheet_page/button_builder.dart';

class ButtonPage extends StatefulWidget {
  final Function(int) onPageSelected;
  ButtonPage(BuildContext context, this.onPageSelected, {Key? key})
      : super(key: key);

  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            createCustomButton(
              buttonText: '배경',
              onPressed: () => widget.onPageSelected(1),
            ),
          ],
        ),
      ),
    );
  }
}
