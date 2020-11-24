import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

/// Jan widget that is sexy.
class SexyJan extends StatefulWidget {
  /// Constructs [SexyJan].
  const SexyJan({Key key}) : super(key: key);

  @override
  _SexyJanState createState() => _SexyJanState();
}

class _SexyJanState extends State<SexyJan> {
  ConfettiController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ConfettiController()..play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Image.asset('assets/christmas_jan.png'),
        ),
        Positioned(
          top: -100,
          child: ConfettiWidget(
            confettiController: _controller,
            blastDirection: pi / 2,
            blastDirectionality: BlastDirectionality.explosive,
            emissionFrequency: .1,
            numberOfParticles: 30,
            minimumSize: Size(3, 3),
            maximumSize: Size(9, 9),
            colors: [
              Colors.white,
              Colors.white54,
              Colors.white70,
            ],
            shouldLoop: true,
          ),
        ),
      ],
    );
  }
}
