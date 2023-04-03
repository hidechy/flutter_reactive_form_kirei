// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChildInputState {
  ChildInputData get inputData => throw _privateConstructorUsedError;

  ///
  FormControl<String>? get nameController => throw _privateConstructorUsedError;
  FormControl<String>? get birthdayController =>
      throw _privateConstructorUsedError;
  FormControl<String>? get emailController =>
      throw _privateConstructorUsedError;
  FormControl<String>? get passwordController =>
      throw _privateConstructorUsedError;
  FormControl<String>? get passwordConfirmationController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChildInputStateCopyWith<ChildInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildInputStateCopyWith<$Res> {
  factory $ChildInputStateCopyWith(
          ChildInputState value, $Res Function(ChildInputState) then) =
      _$ChildInputStateCopyWithImpl<$Res, ChildInputState>;
  @useResult
  $Res call(
      {ChildInputData inputData,
      FormControl<String>? nameController,
      FormControl<String>? birthdayController,
      FormControl<String>? emailController,
      FormControl<String>? passwordController,
      FormControl<String>? passwordConfirmationController});

  $ChildInputDataCopyWith<$Res> get inputData;
}

/// @nodoc
class _$ChildInputStateCopyWithImpl<$Res, $Val extends ChildInputState>
    implements $ChildInputStateCopyWith<$Res> {
  _$ChildInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
    Object? nameController = freezed,
    Object? birthdayController = freezed,
    Object? emailController = freezed,
    Object? passwordController = freezed,
    Object? passwordConfirmationController = freezed,
  }) {
    return _then(_value.copyWith(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as ChildInputData,
      nameController: freezed == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
      birthdayController: freezed == birthdayController
          ? _value.birthdayController
          : birthdayController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
      emailController: freezed == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
      passwordController: freezed == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
      passwordConfirmationController: freezed == passwordConfirmationController
          ? _value.passwordConfirmationController
          : passwordConfirmationController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChildInputDataCopyWith<$Res> get inputData {
    return $ChildInputDataCopyWith<$Res>(_value.inputData, (value) {
      return _then(_value.copyWith(inputData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChildInputStateCopyWith<$Res>
    implements $ChildInputStateCopyWith<$Res> {
  factory _$$_ChildInputStateCopyWith(
          _$_ChildInputState value, $Res Function(_$_ChildInputState) then) =
      __$$_ChildInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChildInputData inputData,
      FormControl<String>? nameController,
      FormControl<String>? birthdayController,
      FormControl<String>? emailController,
      FormControl<String>? passwordController,
      FormControl<String>? passwordConfirmationController});

  @override
  $ChildInputDataCopyWith<$Res> get inputData;
}

/// @nodoc
class __$$_ChildInputStateCopyWithImpl<$Res>
    extends _$ChildInputStateCopyWithImpl<$Res, _$_ChildInputState>
    implements _$$_ChildInputStateCopyWith<$Res> {
  __$$_ChildInputStateCopyWithImpl(
      _$_ChildInputState _value, $Res Function(_$_ChildInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
    Object? nameController = freezed,
    Object? birthdayController = freezed,
    Object? emailController = freezed,
    Object? passwordController = freezed,
    Object? passwordConfirmationController = freezed,
  }) {
    return _then(_$_ChildInputState(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as ChildInputData,
      nameController: freezed == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
      birthdayController: freezed == birthdayController
          ? _value.birthdayController
          : birthdayController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
      emailController: freezed == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
      passwordController: freezed == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
      passwordConfirmationController: freezed == passwordConfirmationController
          ? _value.passwordConfirmationController
          : passwordConfirmationController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
    ));
  }
}

/// @nodoc

class _$_ChildInputState implements _ChildInputState {
  const _$_ChildInputState(
      {this.inputData = const ChildInputData(),
      this.nameController,
      this.birthdayController,
      this.emailController,
      this.passwordController,
      this.passwordConfirmationController});

  @override
  @JsonKey()
  final ChildInputData inputData;

  ///
  @override
  final FormControl<String>? nameController;
  @override
  final FormControl<String>? birthdayController;
  @override
  final FormControl<String>? emailController;
  @override
  final FormControl<String>? passwordController;
  @override
  final FormControl<String>? passwordConfirmationController;

  @override
  String toString() {
    return 'ChildInputState(inputData: $inputData, nameController: $nameController, birthdayController: $birthdayController, emailController: $emailController, passwordController: $passwordController, passwordConfirmationController: $passwordConfirmationController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildInputState &&
            (identical(other.inputData, inputData) ||
                other.inputData == inputData) &&
            (identical(other.nameController, nameController) ||
                other.nameController == nameController) &&
            (identical(other.birthdayController, birthdayController) ||
                other.birthdayController == birthdayController) &&
            (identical(other.emailController, emailController) ||
                other.emailController == emailController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController) &&
            (identical(other.passwordConfirmationController,
                    passwordConfirmationController) ||
                other.passwordConfirmationController ==
                    passwordConfirmationController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      inputData,
      nameController,
      birthdayController,
      emailController,
      passwordController,
      passwordConfirmationController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildInputStateCopyWith<_$_ChildInputState> get copyWith =>
      __$$_ChildInputStateCopyWithImpl<_$_ChildInputState>(this, _$identity);
}

abstract class _ChildInputState implements ChildInputState {
  const factory _ChildInputState(
          {final ChildInputData inputData,
          final FormControl<String>? nameController,
          final FormControl<String>? birthdayController,
          final FormControl<String>? emailController,
          final FormControl<String>? passwordController,
          final FormControl<String>? passwordConfirmationController}) =
      _$_ChildInputState;

  @override
  ChildInputData get inputData;
  @override

  ///
  FormControl<String>? get nameController;
  @override
  FormControl<String>? get birthdayController;
  @override
  FormControl<String>? get emailController;
  @override
  FormControl<String>? get passwordController;
  @override
  FormControl<String>? get passwordConfirmationController;
  @override
  @JsonKey(ignore: true)
  _$$_ChildInputStateCopyWith<_$_ChildInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChildInputData {
  String get name => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get passwordConfirmation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChildInputDataCopyWith<ChildInputData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildInputDataCopyWith<$Res> {
  factory $ChildInputDataCopyWith(
          ChildInputData value, $Res Function(ChildInputData) then) =
      _$ChildInputDataCopyWithImpl<$Res, ChildInputData>;
  @useResult
  $Res call(
      {String name,
      DateTime? birthday,
      String email,
      String password,
      String passwordConfirmation});
}

/// @nodoc
class _$ChildInputDataCopyWithImpl<$Res, $Val extends ChildInputData>
    implements $ChildInputDataCopyWith<$Res> {
  _$ChildInputDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? birthday = freezed,
    Object? email = null,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildInputDataCopyWith<$Res>
    implements $ChildInputDataCopyWith<$Res> {
  factory _$$_ChildInputDataCopyWith(
          _$_ChildInputData value, $Res Function(_$_ChildInputData) then) =
      __$$_ChildInputDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      DateTime? birthday,
      String email,
      String password,
      String passwordConfirmation});
}

/// @nodoc
class __$$_ChildInputDataCopyWithImpl<$Res>
    extends _$ChildInputDataCopyWithImpl<$Res, _$_ChildInputData>
    implements _$$_ChildInputDataCopyWith<$Res> {
  __$$_ChildInputDataCopyWithImpl(
      _$_ChildInputData _value, $Res Function(_$_ChildInputData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? birthday = freezed,
    Object? email = null,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(_$_ChildInputData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChildInputData implements _ChildInputData {
  const _$_ChildInputData(
      {this.name = '',
      this.birthday,
      this.email = '',
      this.password = '',
      this.passwordConfirmation = ''});

  @override
  @JsonKey()
  final String name;
  @override
  final DateTime? birthday;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String passwordConfirmation;

  @override
  String toString() {
    return 'ChildInputData(name: $name, birthday: $birthday, email: $email, password: $password, passwordConfirmation: $passwordConfirmation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildInputData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, birthday, email, password, passwordConfirmation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildInputDataCopyWith<_$_ChildInputData> get copyWith =>
      __$$_ChildInputDataCopyWithImpl<_$_ChildInputData>(this, _$identity);
}

abstract class _ChildInputData implements ChildInputData {
  const factory _ChildInputData(
      {final String name,
      final DateTime? birthday,
      final String email,
      final String password,
      final String passwordConfirmation}) = _$_ChildInputData;

  @override
  String get name;
  @override
  DateTime? get birthday;
  @override
  String get email;
  @override
  String get password;
  @override
  String get passwordConfirmation;
  @override
  @JsonKey(ignore: true)
  _$$_ChildInputDataCopyWith<_$_ChildInputData> get copyWith =>
      throw _privateConstructorUsedError;
}
