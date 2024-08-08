import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_example/presentation/home/widget/testing_type_listview.dart';

void main() {
  testWidgets(
    'TestingTypeListview displays correct items and toggles checkboxes',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: TestingTypeListview(),
          ),
        ),
      );

      final unitTestsCheckbox = find.byType(Checkbox).at(0);
      final widgetTestsCheckbox = find.byType(Checkbox).at(1);
      final goldenTestsCheckbox = find.byType(Checkbox).at(2);

      expect(unitTestsCheckbox, findsOneWidget);
      expect(widgetTestsCheckbox, findsOneWidget);
      expect(goldenTestsCheckbox, findsOneWidget);

      Checkbox unitTestsWidget = tester.widget(unitTestsCheckbox) as Checkbox;
      expect(unitTestsWidget.value, isFalse);

      await tester.tap(unitTestsCheckbox);
      await tester.pump();

      unitTestsWidget = tester.widget(unitTestsCheckbox) as Checkbox;
      expect(unitTestsWidget.value, isTrue);

      Checkbox widgetTestsWidget =
          tester.widget(widgetTestsCheckbox) as Checkbox;
      Checkbox goldenTestsWidget =
          tester.widget(goldenTestsCheckbox) as Checkbox;
      expect(widgetTestsWidget.value, isFalse);
      expect(goldenTestsWidget.value, isFalse);

      await tester.tap(widgetTestsCheckbox);
      await tester.pump();

      widgetTestsWidget = tester.widget(widgetTestsCheckbox) as Checkbox;
      expect(widgetTestsWidget.value, isTrue);
    },
  );
}
