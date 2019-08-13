

import 'package:flutter/material.dart';

import 'draggable_card.dart';

class PhysicsSimulationExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PhysicsCardDragDemo(),
    );
  }
}

class PhysicsCardDragDemo extends StatelessWidget {
  const PhysicsCardDragDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DraggableCard(
        child: FlutterLogo(size: 128),
      ),
    );
  }
}