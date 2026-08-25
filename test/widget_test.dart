// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:activity2/main.dart';

void main() {
  testWidgets('HomePage renders title, insets content, and alignment menu', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // The app starts on the Insets tab.
    expect(find.text('Murillo_Activity2'), findsOneWidget);
    expect(find.text('Insets'), findsOneWidget);
    expect(find.text('Alignments'), findsOneWidget);
    expect(find.text('EdgeInsets.all(30)'), findsOneWidget);

    // Switch to the Alignments tab: it should show the section menu buttons.
    await tester.tap(find.text('Alignments'));
    await tester.pumpAndSettle();

    expect(find.text('Row Main Axis'), findsOneWidget);
    expect(find.text('Row Cross Axis'), findsOneWidget);
    expect(find.text('Row Baseline'), findsOneWidget);
    expect(find.text('Column Main Axis'), findsOneWidget);
    expect(find.text('Column Cross Axis'), findsOneWidget);
  });

  testWidgets('Tapping a menu button opens its dedicated swipeable page', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Alignments'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Row Baseline'));
    await tester.pumpAndSettle();

    // The dedicated page shows the section title in its own app bar
    // plus an automatic back button.
    expect(find.text('Row Baseline Alignment'), findsOneWidget);
    expect(find.byType(BackButton), findsOneWidget);

    // Go back to the options menu.
    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();
    expect(find.text('Row Baseline'), findsOneWidget);
  });
}
