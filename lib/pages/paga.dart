import 'package:flutter/material.dart';
import 'package:slidign_up_panel/widgts/Body.dart';
import 'package:slidign_up_panel/widgts/panel_p.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HOme extends StatelessWidget {
  const HOme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('panel de control'),
      ),
      body: SlidingUpPanel(
        minHeight: 30,
        maxHeight: MediaQuery.of(context).size.height * 0.5,
        color: Colors.transparent,
        body: Body(),
        panel: PaneUp(),
      ),
    );
  }
}
