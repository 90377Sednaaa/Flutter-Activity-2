import 'package:flutter/material.dart';

class InsetsTab extends StatelessWidget {
  const InsetsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(30),
            color: Colors.red,
            child: const Text("EdgeInsets.all(30)"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            color: Colors.yellow,
            child: const Text(
              "EdgeInsets.symmetric(horizontal: 40, vertical: 10)",
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.only(
              left: 30,
              top: 10,
              right: 5,
              bottom: 20,
            ),
            color: Colors.blue,
            child: const Text(
              "EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)",
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
            color: Colors.green,
            child: const Text("EdgeInsets.fromLTRB(10, 20, 30, 40)"),
          ),
        ],
      ),
    );
  }
}
