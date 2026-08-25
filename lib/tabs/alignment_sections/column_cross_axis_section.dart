import 'package:flutter/material.dart';

import '../../widgets/example_card.dart';
import 'section_screen.dart';

class ColumnCrossAxisSection extends StatelessWidget {
  const ColumnCrossAxisSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionScreen(
      title: "Column Cross Axis Alignment",
      examples: [
        ExampleCard(
          label: "Start",
          // No mainAxisAlignment: boxes stack flush (default is start),
          // so only the horizontal cross-axis alignment differs.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 100, width: 100, color: Colors.red),
              Container(height: 90, width: 90, color: Colors.yellow),
              Container(height: 80, width: 80, color: Colors.blue),
            ],
          ),
        ),
        ExampleCard(
          label: "End",
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(height: 100, width: 100, color: Colors.red),
              Container(height: 90, width: 90, color: Colors.yellow),
              Container(height: 80, width: 80, color: Colors.blue),
            ],
          ),
        ),
        ExampleCard(
          label: "Center",
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(height: 100, width: 100, color: Colors.red),
              Container(height: 90, width: 90, color: Colors.yellow),
              Container(height: 80, width: 80, color: Colors.blue),
            ],
          ),
        ),
        ExampleCard(
          label: "Stretch",
          // No widths so the boxes can stretch horizontally.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(height: 100, color: Colors.red),
              Container(height: 90, color: Colors.yellow),
              Container(height: 80, color: Colors.blue),
            ],
          ),
        ),
      ],
    );
  }
}
