import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_example/presentation/home/home_screen.dart';

void main() {
  testWidgets('Integration Test: Check and uncheck items in the list',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomeScreen()));

    final firstCheckbox = find.byKey(const Key('checkbox_0'));
    expect(firstCheckbox, findsOneWidget);

    expect(tester.widget<Checkbox>(firstCheckbox).value, false);

    await tester.tap(firstCheckbox);
    await tester.pump();

    expect(tester.widget<Checkbox>(firstCheckbox).value, true);

    await tester.tap(firstCheckbox);
    await tester.pump();

    expect(tester.widget<Checkbox>(firstCheckbox).value, false);
  });
}
