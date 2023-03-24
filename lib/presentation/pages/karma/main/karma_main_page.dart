import 'package:flutter/material.dart';
import 'package:next_starter/presentation/components/card/karma_card.dart';

class KarmaMainPage extends StatelessWidget {
  const KarmaMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Karma Level"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              KarmaCard(),
            ],
          ),
        ),
      ),
    );
  }
}
