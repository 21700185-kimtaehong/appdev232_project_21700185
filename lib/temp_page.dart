import 'package:flutter/material.dart';

class TempPage extends StatelessWidget {
  const TempPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('디폴트 페이지 for page 2'),
      ),
      body: const Center(
        child: Text('임시'),
      ),
    );
  }
}
