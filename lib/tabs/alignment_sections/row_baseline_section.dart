import 'package:flutter/material.dart';

import '../../widgets/example_card.dart';
import 'section_screen.dart';

class RowBaselineSection extends StatelessWidget {
  const RowBaselineSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionScreen(
      title: "Row Baseline Alignment",
      examples: [
        // Baseline only works on horizontal Rows and requires a textBaseline.
        ExampleCard(
          label: "Baseline",
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Flutter",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    backgroundColor: Colors.red,
                  ),
                ),
                const SizedBox(width: 20),
                const Text(
                  "Flutter",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    backgroundColor: Colors.yellow,
                  ),
                ),
                const SizedBox(width: 20),
                const Text(
                  "Flutter",
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.black,
                    backgroundColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
