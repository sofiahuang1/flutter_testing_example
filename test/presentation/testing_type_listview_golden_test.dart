import 'package:flutter/material.dart';
import 'package:flutter_testing_example/presentation/home/widget/testing_type_listview.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('TestingTypeListview matches the golden file', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: TestingTypeListview(),
        ),
      ),
    );

    await screenMatchesGolden(
      tester,
      'testing_type_listview',
    );
  });
}
