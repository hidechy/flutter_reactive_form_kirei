import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../component/validate_text_field/type.dart';
import 'state.dart';

//---------------------------------------//

final childInputStateProvider =
    AutoDisposeStateNotifierProvider<ChildInputNotifier, ChildInputState>(
        (ref) {
  return ChildInputNotifier(ref: ref);
});

//---------------------------------------//

class ChildInputNotifier extends StateNotifier<ChildInputState> {
  ChildInputNotifier({
    required this.ref,
  }) : super(const ChildInputState()) {
    final nameContoller = getController(
      type: ValidateTextFieldType.nickname,
      value: state.inputData.name,
    );

    final birthday = state.inputData.birthday;

    final birthdayContoller = getController(
      type: ValidateTextFieldType.date,
      value: birthday != null ? birthday.toString().split(' ')[0] : '',
    );

    state = state.copyWith(
      nameController: nameContoller,
      birthdayController: birthdayContoller,
    );
  }

  final Ref ref;

  ///
  void onChangedNameField(String name) {
    state.nameController!.updateValue(name);
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        name: name,
      ),
    );
  }

  ///
  void onChangedDateField(DateTime? birthday) {
    state.birthdayController!.updateValue(birthday?.toString().split(' ')[0]);
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        birthday: birthday,
      ),
    );
  }

  ///
  Future<void> onTapRegister({
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) async {}
}
