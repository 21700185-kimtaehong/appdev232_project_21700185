import 'package:flutter/material.dart';

class TempPage extends StatelessWidget {
  const TempPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('default page for page 2'),
      ),
      body: const Center(
        child: Text('임시'),
      ),
    );
  }
}
