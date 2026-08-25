import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:activity2/main.dart';

void main() {
  testWidgets('Stretch section children fill the row height', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    // Open the Alignments tab, then the Row Cross Axis section page.
    await tester.tap(find.text('Alignments'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Row Cross Axis'));
    await tester.pumpAndSettle();

    // Swipe left through the examples until "Stretch" is on screen.
    // Each step moves further than half the page width so the
    // PageView advances one full example per gesture.
    await tester.dragUntilVisible(
      find.text('Stretch'),
      find.byType(PageView),
      const Offset(-500, 0),
    );
    await tester.pumpAndSettle();

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

    // With CrossAxisAlignment.stretch every box must fill the full
    // height of the row while keeping its own width.
    final rowSize = tester.getSize(stretchRowFinder);
    expect(rowSize.height, greaterThan(0));

    final red = tester.getSize(boxes.at(0));
    final yellow = tester.getSize(boxes.at(1));
    final blue = tester.getSize(boxes.at(2));

    expect(red.width, 100);
    expect(yellow.width, 90);
    expect(blue.width, 80);

    expect(red.height, rowSize.height);
    expect(yellow.height, rowSize.height);
    expect(blue.height, rowSize.height);
  });
}
