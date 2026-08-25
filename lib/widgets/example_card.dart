import 'package:flutter/material.dart';

/// Shared card used by every alignment example: a black border with a
/// centered [label] on top and the demo [child] filling the rest.
class ExampleCard extends StatelessWidget {
  final String label;
  final Widget child;

  const ExampleCard({super.key, required this.label, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2.0),
      ),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Text(
              label,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(30),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
