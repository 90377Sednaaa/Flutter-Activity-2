import 'package:flutter/material.dart';

import '../../widgets/example_card.dart';
import 'section_screen.dart';

class ColumnMainAxisSection extends StatelessWidget {
  const ColumnMainAxisSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionScreen(
      title: "Column Main Axis Alignment",
      examples: [
        ExampleCard(
          label: "Center",
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 100, width: 100, color: Colors.red),
              Container(height: 90, width: 90, color: Colors.yellow),
              Container(height: 80, width: 80, color: Colors.blue),
            ],
          ),
        ),
        ExampleCard(
          label: "Space Around",
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(height: 100, width: 100, color: Colors.red),
              Container(height: 90, width: 90, color: Colors.yellow),
              Container(height: 80, width: 80, color: Colors.blue),
            ],
          ),
        ),
        ExampleCard(
          label: "Space Between",
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: 100, width: 100, color: Colors.red),
              Container(height: 90, width: 90, color: Colors.yellow),
              Container(height: 80, width: 80, color: Colors.blue),
            ],
          ),
        ),
        ExampleCard(
          label: "Space Evenly",
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(height: 100, width: 100, color: Colors.red),
              Container(height: 90, width: 90, color: Colors.yellow),
              Container(height: 80, width: 80, color: Colors.blue),
            ],
          ),
        ),
        ExampleCard(
          label: "Start",
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(height: 100, width: 100, color: Colors.red),
              Container(height: 90, width: 90, color: Colors.yellow),
              Container(height: 80, width: 80, color: Colors.blue),
            ],
          ),
        ),
      ],
    );
  }
}
