import 'package:flutter/material.dart';

import '../../widgets/example_card.dart';
import 'section_screen.dart';

class RowMainAxisSection extends StatelessWidget {
  const RowMainAxisSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionScreen(
      title: "Row Main Axis Alignment",
      examples: [
        ExampleCard(
          label: "Center",
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 90, height: 90, color: Colors.yellow),
              Container(width: 80, height: 80, color: Colors.blue),
            ],
          ),
        ),
        ExampleCard(
          label: "Space Around",
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 90, height: 90, color: Colors.yellow),
              Container(width: 80, height: 80, color: Colors.blue),
            ],
          ),
        ),
        ExampleCard(
          label: "Space Between",
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 90, height: 90, color: Colors.yellow),
              Container(width: 80, height: 80, color: Colors.blue),
            ],
          ),
        ),
        ExampleCard(
          label: "Space Evenly",
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 90, height: 90, color: Colors.yellow),
              Container(width: 80, height: 80, color: Colors.blue),
            ],
          ),
        ),
        ExampleCard(
          label: "Start",
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 90, height: 90, color: Colors.yellow),
              Container(width: 80, height: 80, color: Colors.blue),
            ],
          ),
        ),
      ],
    );
  }
}
