import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'type.dart';

//---------------------------------------//

class ValidateTextField extends HookWidget {
  const ValidateTextField({
    super.key,
    this.title,
    this.forwardTitle,
    this.backTitle,
    this.hintText,
    this.width,
    this.errorMaxLines = 5,
    this.isRequired = false,
    this.keyboardType = TextInputType.text,
    this.inputAction = TextInputAction.next,
    this.textAlign = TextAlign.left,
    required this.type,
    required this.controller,
    required this.onChanged,
    this.readOnly = false,
    this.borderColor = Colors.black,
    this.inputFormatter,
    this.hintStyle,
    this.canDecimalInput,
  });

  final String? title;
  final String? forwardTitle;
  final String? backTitle;
  final bool isRequired;
  final String? hintText;
  final double? width;
  final int errorMaxLines;
  final TextInputType keyboardType;
  final TextInputAction inputAction;
  final TextAlign textAlign;
  final ValidateTextFieldType type;
  final FormControl<String> controller;
  final Function(String) onChanged;
  final bool readOnly;
  final Color borderColor;
  final List<TextInputFormatter>? inputFormatter;
  final TextStyle? hintStyle;
  final bool? canDecimalInput;

  ///
  List<TextInputFormatter>? get _inputFormatter {
    if (canDecimalInput == null) {
      return inputFormatter;
    }
    return canDecimalInput!
        ? [FilteringTextInputFormatter.allow(RegExp('[0-9.]'))]
        : [FilteringTextInputFormatter.allow(RegExp('[0-9]'))];
  }

  ///
  @override
  Widget build(BuildContext context) {
    final isVisible = useState<bool>(false);

    final isPasswordInputField = type == ValidateTextFieldType.password ||
        type == ValidateTextFieldType.newPassword ||
        type == ValidateTextFieldType.passwordConfirmation;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _title(
          isRequired: isRequired,
          title: title,
          forwardTitle: forwardTitle,
          backTitle: backTitle,
        ),
        SizedBox(
          width: width,
          child: ReactiveTextField<String>(
            formControl: controller,
            style: const TextStyle(fontSize: 12),
            textAlign: textAlign,
            keyboardType: keyboardType,
            inputFormatters: _inputFormatter,
            textInputAction: inputAction,
            readOnly: readOnly,
            obscureText: isPasswordInputField && !isVisible.value,
            showErrors: (control) {
              return control.touched && control.invalid;
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: type.fillColor,
              hintText: hintText,
              hintStyle: hintStyle ?? const TextStyle(fontSize: 12),
              suffixIcon: isPasswordInputField
                  ? _visibleIcon(isVisible: isVisible)
                  : null,
              errorMaxLines: errorMaxLines,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              enabledBorder: _boderStyle,
              focusedBorder: _boderStyle,
              errorBorder: _errorBoderStyle,
              focusedErrorBorder: _errorBoderStyle,
              errorStyle: const TextStyle(fontSize: 12),
            ),
            validationMessages: type.validationMessage,
            onChanged: (control) => onChanged(control.value ?? ''),
          ),
        ),
      ],
    );
  }

  ///
  Widget _title({
    required bool isRequired,
    String? title,
    String? forwardTitle,
    String? backTitle,
  }) {
    if (title != null) {
      return FieldTitle(
        title: title,
        isRequired: isRequired,
      );
    }
    if (forwardTitle != null && backTitle != null) {
      return FieldSeparatedTitle(
        forwardTitle: forwardTitle,
        backTitle: backTitle,
        isRequired: isRequired,
      );
    }
    return const SizedBox.shrink();
  }

  ///
  Widget _visibleIcon({required ValueNotifier<bool> isVisible}) {
    return Container(
      padding: const EdgeInsets.only(right: 16),
      child: Transform.scale(
        scale: 0.75,
        child: GestureDetector(
          onTap: () => isVisible.value = !isVisible.value,
          behavior: HitTestBehavior.opaque,
          child: isVisible.value
              ? const Icon(Icons.plus_one)
              : const Icon(Icons.exposure_minus_1),
        ),
      ),
    );
  }

  ///
  OutlineInputBorder get _boderStyle {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
        width: 1.5,
      ),
      borderRadius: BorderRadius.circular(type.borderRadius),
    );
  }

  ///
  OutlineInputBorder get _errorBoderStyle {
    return _boderStyle.copyWith(
      borderSide: const BorderSide(
        color: Colors.red,
        width: 1.5,
      ),
    );
  }
}

//--------------------------------------

class FieldTitle extends StatelessWidget {
  const FieldTitle({
    super.key,
    required this.title,
    required this.isRequired,
  });

  final String title;
  final bool isRequired;

  ///
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                title,
              ),
              if (isRequired) ...[
                const SizedBox(width: 8),
                const Text('必須'),
              ],
            ],
          ),
        ),
        const SizedBox(height: 8)
      ],
    );
  }
}

//--------------------------------------

class FieldSeparatedTitle extends StatelessWidget {
  const FieldSeparatedTitle({
    super.key,
    required this.forwardTitle,
    required this.backTitle,
    required this.isRequired,
  });

  final String forwardTitle;
  final String backTitle;
  final bool isRequired;

  ///
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(forwardTitle),
              if (isRequired) ...[
                const SizedBox(width: 8),
                const Text('必須'),
              ],
              ...[
                Text(backTitle),
              ]
            ],
          ),
        ),
        const SizedBox(height: 8)
      ],
    );
  }
}
