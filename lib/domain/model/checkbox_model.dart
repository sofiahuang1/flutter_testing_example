class CheckboxModel {
  final Map<int, bool> _checkedStates = {};

  bool isChecked(int index) => _checkedStates[index] ?? false;

  void toggleCheck(int index) {
    _checkedStates[index] = !isChecked(index);
  }
}
