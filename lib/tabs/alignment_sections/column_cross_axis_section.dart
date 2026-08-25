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
          // Fixed height so spaceEvenly distributes a small,
          // readable amount of free space instead of a whole screen.
          child: SizedBox(
            height: 340,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 100, width: 100, color: Colors.red),
                Container(height: 90, width: 90, color: Colors.yellow),
                Container(height: 80, width: 80, color: Colors.blue),
              ],
            ),
          ),
        ),
        ExampleCard(
          label: "End",
          child: SizedBox(
            height: 340,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 100, width: 100, color: Colors.red),
                Container(height: 90, width: 90, color: Colors.yellow),
                Container(height: 80, width: 80, color: Colors.blue),
              ],
            ),
          ),
        ),
        ExampleCard(
          label: "Center",
          child: SizedBox(
            height: 340,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 100, width: 100, color: Colors.red),
                Container(height: 90, width: 90, color: Colors.yellow),
                Container(height: 80, width: 80, color: Colors.blue),
              ],
            ),
          ),
        ),
        ExampleCard(
          label: "Stretch",
          // No widths so the boxes can stretch horizontally.
          child: SizedBox(
            height: 340,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 100, color: Colors.red),
                Container(height: 90, color: Colors.yellow),
                Container(height: 80, color: Colors.blue),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
