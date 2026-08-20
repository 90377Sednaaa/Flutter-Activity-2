// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:activity2/main.dart';

void main() {
  testWidgets('HomePage renders title and layout content', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the app bar title is displayed.
    expect(find.text('Murillo_Activity 2'), findsOneWidget);

    // Verify the section labels are displayed.
    expect(find.text('Row Main Axis Alignment'), findsOneWidget);
    expect(find.text('Row Cross Axis Alignment'), findsOneWidget);

    // Verify the stretch label (the last cross-axis demo) is present.
    expect(find.text('Stretch'), findsOneWidget);
  });
}