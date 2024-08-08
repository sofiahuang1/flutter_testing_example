import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_example/domain/model/checkbox_model.dart';

void main() {
  group('CheckboxModel', () {
    late CheckboxModel checkboxModel;

    setUp(() {
      checkboxModel = CheckboxModel();
    });

    test('Should start with the checkbox in an unchecked state', () {
      expect(checkboxModel.isChecked(0), isFalse);
    });

    test('Should correctly toggle the checkbox state', () {
      checkboxModel.toggleCheck(0);
      expect(checkboxModel.isChecked(0), isTrue);

      checkboxModel.toggleCheck(0);
      expect(checkboxModel.isChecked(0), isFalse);
    });
  });
}
