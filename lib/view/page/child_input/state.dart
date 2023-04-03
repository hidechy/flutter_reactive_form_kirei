import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'state.freezed.dart';

@freezed
class ChildInputState with _$ChildInputState {
  const factory ChildInputState({
    @Default(ChildInputData()) ChildInputData inputData,

    ///
    FormControl<String>? nameController,
    FormControl<String>? birthdayController,
    FormControl<String>? emailController,
    FormControl<String>? passwordController,
    FormControl<String>? passwordConfirmationController,
  }) = _ChildInputState;
}

/// 入力中データ
@freezed
class ChildInputData with _$ChildInputData {
  const factory ChildInputData({
    @Default('') String name,
    DateTime? birthday,
    @Default('') String email,
    @Default('') String password,
    @Default('') String passwordConfirmation,
  }) = _ChildInputData;
}
