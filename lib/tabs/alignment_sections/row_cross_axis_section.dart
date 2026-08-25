import 'package:flutter/material.dart';

import '../../widgets/example_card.dart';
import 'section_screen.dart';

class RowCrossAxisSection extends StatelessWidget {
  const RowCrossAxisSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionScreen(
      title: "Row Cross Axis Alignment",
      examples: [
        ExampleCard(
          label: "Start",
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 90, height: 90, color: Colors.yellow),
              Container(width: 80, height: 80, color: Colors.blue),
            ],
          ),
        ),
        ExampleCard(
          label: "End",
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 90, height: 90, color: Colors.yellow),
              Container(width: 80, height: 80, color: Colors.blue),
            ],
          ),
        ),
        ExampleCard(
          label: "Center",
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 90, height: 90, color: Colors.yellow),
              Container(width: 80, height: 80, color: Colors.blue),
            ],
          ),
        ),
        ExampleCard(
          label: "Stretch",
          // No heights so the boxes can stretch vertically.
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(width: 100, color: Colors.red),
              Container(width: 90, color: Colors.yellow),
              Container(width: 80, color: Colors.blue),
            ],
          ),
        ),
      ],
    );
  }
}
