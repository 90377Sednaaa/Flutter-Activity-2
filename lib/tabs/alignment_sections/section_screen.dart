import 'package:flutter/material.dart';

/// A dedicated full-screen page for one alignment category.
/// The AppBar gets an automatic back button (this route is pushed on top),
/// and the examples are swiped horizontally instead of scrolled.
class SectionScreen extends StatefulWidget {
  final String title;
  final List<Widget> examples;

  const SectionScreen({
    super.key,
    required this.title,
    required this.examples,
  });

  @override
  State<SectionScreen> createState() => _SectionScreenState();
}

class _SectionScreenState extends State<SectionScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: [
          // Example indicator dots
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < widget.examples.length; i++)
                Container(
                  margin: const EdgeInsets.all(4),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        _currentPage == i ? Colors.deepPurple : Colors.black26,
                  ),
                ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) => setState(() => _currentPage = index),
              // Each example fills one full screen.
              children: widget.examples,
            ),
          ),
        ],
      ),
    );
  }
}
