import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_example/presentation/home/widget/testing_type_listview.dart';

void main() {
  Future<void> pumpTestingTypeListview(WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: TestingTypeListview(),
        ),
      ),
    );
  }

  testWidgets('Initial checkboxes state is unchecked',
      (WidgetTester tester) async {
    await pumpTestingTypeListview(tester);

    final unitTestsCheckbox = find.byKey(const Key('checkbox_0'));
    final widgetTestsCheckbox = find.byKey(const Key('checkbox_1'));
    final goldenTestsCheckbox = find.byKey(const Key('checkbox_2'));

    expect(unitTestsCheckbox, findsOneWidget);
    expect(widgetTestsCheckbox, findsOneWidget);
    expect(goldenTestsCheckbox, findsOneWidget);

    final unitTestsWidget = tester.widget<Checkbox>(unitTestsCheckbox);
    final widgetTestsWidget = tester.widget<Checkbox>(widgetTestsCheckbox);
    final goldenTestsWidget = tester.widget<Checkbox>(goldenTestsCheckbox);

    expect(unitTestsWidget.value, isFalse);
    expect(widgetTestsWidget.value, isFalse);
    expect(goldenTestsWidget.value, isFalse);
  });

  testWidgets('Checkboxes toggle state when tapped',
      (WidgetTester tester) async {
    await pumpTestingTypeListview(tester);

    final unitTestsCheckbox = find.byKey(const Key('checkbox_0'));
    final widgetTestsCheckbox = find.byKey(const Key('checkbox_1'));
    final goldenTestsCheckbox = find.byKey(const Key('checkbox_2'));

    await tester.tap(unitTestsCheckbox);
    await tester.pump();
    expect(tester.widget<Checkbox>(unitTestsCheckbox).value, isTrue);

    await tester.tap(widgetTestsCheckbox);
    await tester.pump();
    expect(tester.widget<Checkbox>(widgetTestsCheckbox).value, isTrue);

    await tester.tap(goldenTestsCheckbox);
    await tester.pump();
    expect(tester.widget<Checkbox>(goldenTestsCheckbox).value, isTrue);
  });
}
