// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:auto_gridview/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build the widget tree.
    await tester.pumpWidget(MyApp());

    // Wait for any animations to settle.
    await tester.pumpAndSettle();

    // Verify the initial value of the counter.
    expect(find.text('0'), findsOneWidget);

    // Tap the button to increment the counter.
    await tester.tap(find.byIcon(Icons.add));

    // Wait for the animation to complete.
    await tester.pump();

    // Verify the counter increments.
    expect(find.text('1'), findsOneWidget);
  });
}
