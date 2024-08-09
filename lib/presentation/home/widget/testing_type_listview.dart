import 'package:flutter/material.dart';
import 'package:flutter_testing_example/domain/model/checkbox_model.dart';

class TestingTypeListview extends StatefulWidget {
  const TestingTypeListview({super.key});

  @override
  TestingTypeListviewState createState() => TestingTypeListviewState();
}

class TestingTypeListviewState extends State<TestingTypeListview> {
  final CheckboxModel _checkboxModel = CheckboxModel();

  @override
  Widget build(BuildContext context) {
    final List<String> testingTypes = [
      'Unit Tests',
      'Widget Tests',
      'Golden Tests',
    ];

    return ListView.builder(
      itemCount: testingTypes.length,
      itemBuilder: (context, index) {
        final type = testingTypes[index];
        final isChecked = _checkboxModel.isChecked(index);

        return ListTile(
          leading: Checkbox(
            key: Key('checkbox_$index'),
            value: isChecked,
            onChanged: (bool? checkState) {
              setState(() {
                _checkboxModel.toggleCheck(index);
              });
            },
          ),
          title: Text(type),
        );
      },
    );
  }
}
