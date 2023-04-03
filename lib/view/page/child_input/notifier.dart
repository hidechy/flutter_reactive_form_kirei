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

    final emailContoller = getController(
      type: ValidateTextFieldType.email,
      value: state.inputData.email,
    );

    final passwordContoller = getController(
      type: ValidateTextFieldType.password,
      value: state.inputData.password,
    );

    final passwordConfirmationContoller = getController(
      type: ValidateTextFieldType.passwordConfirmation,
      value: state.inputData.passwordConfirmation,
    );

    state = state.copyWith(
      nameController: nameContoller,
      birthdayController: birthdayContoller,
      emailController: emailContoller,
      passwordController: passwordContoller,
      passwordConfirmationController: passwordConfirmationContoller,
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
  void onChangedEmailField(String email) {
    state.emailController!.updateValue(email);
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        email: email,
      ),
    );
  }

  ///
  void onChangedPasswordField(String password) {
    state.passwordController!.updateValue(password);
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        password: password,
      ),
    );
  }

  ///
  void onChangedPasswordConfirmationField(String passwordConfirmation) {
    state.passwordConfirmationController!.updateValue(passwordConfirmation);
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        passwordConfirmation: passwordConfirmation,
      ),
    );
  }

  ///
  Future<void> onTapRegister({
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) async {}
}
