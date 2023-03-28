import 'package:flutter/material.dart';
import 'package:next_starter/presentation/components/card/karma_points_card.dart';

class KarmaMainPage extends StatefulWidget {
  const KarmaMainPage({super.key});

  @override
  State<KarmaMainPage> createState() => _KarmaMainPageState();
}

class _KarmaMainPageState extends State<KarmaMainPage> {
  final _title = ["wanderer", "explorer", "rising star", "champion", "trailblazer", "hero"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Karma Level"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: _title.map((e) {
              var index = _title.indexOf(e);
              return KarmaPointsCard(level: index + 1, title: e);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
