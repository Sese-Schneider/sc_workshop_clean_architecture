import 'package:flutter/material.dart';

/// Jan widget that is sexy.
class SexyJan extends StatefulWidget {
  /// Constructs [SexyJan].
  const SexyJan({Key key}) : super(key: key);

  @override
  _SexyJanState createState() => _SexyJanState();
}

class _SexyJanState extends State<SexyJan> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Image.asset('assets/christmas_jan.png'),
        ),
      ],
    );
  }
}
