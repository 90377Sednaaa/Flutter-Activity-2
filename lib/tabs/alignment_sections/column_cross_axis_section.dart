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
          // Center loosens the tight height constraints coming from the
          // card's Expanded, so the SizedBox height below is respected and
          // spaceEvenly only spreads the boxes within a small area.
          child: Center(
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
        ),
        ExampleCard(
          label: "End",
          child: Center(
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
        ),
        ExampleCard(
          label: "Center",
          child: Center(
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
        ),
        ExampleCard(
          label: "Stretch",
          // No widths so the boxes can stretch horizontally.
          child: Center(
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
        ),
      ],
    );
  }
}
