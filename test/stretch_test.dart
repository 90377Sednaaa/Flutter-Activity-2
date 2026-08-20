import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:activity2/main.dart';

void main() {
  testWidgets('Stretch section children fill the row height', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Locate the unique stretch Row.
    final stretchRowFinder = find.byWidgetPredicate(
      (widget) =>
          widget is Row &&
          widget.crossAxisAlignment == CrossAxisAlignment.stretch,
    );
    expect(stretchRowFinder, findsOneWidget);

    // The row's direct children are the red/yellow/blue containers.
    final boxes = find.descendant(
      of: stretchRowFinder,
      matching: find.byType(Container),
    );
    expect(boxes, findsNWidgets(3));

    // With CrossAxisAlignment.stretch + a fixed row height (150),
    // every box must fill the full height while keeping its width.
    final red = tester.getSize(boxes.at(0));
    final yellow = tester.getSize(boxes.at(1));
    final blue = tester.getSize(boxes.at(2));

    // ignore: avoid_print
    print('Stretch row child sizes: red=$red, yellow=$yellow, blue=$blue');

    expect(red.height, 150);
    expect(yellow.height, 150);
    expect(blue.height, 150);

    expect(red.width, 100);
    expect(yellow.width, 90);
    expect(blue.width, 80);
  });
}