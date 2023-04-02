import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../validate_text_field/type.dart';

//---------------------------------------//

class ValidateDatePickTextField extends StatelessWidget {
  const ValidateDatePickTextField(
    this.dateTime, {
    super.key,
    this.title,
    this.forwardTitle,
    this.backTitle,
    this.hintText,
    this.width,
    this.errorMaxLines = 5,
    this.isRequired = false,
    this.inputAction = TextInputAction.next,
    this.textAlign = TextAlign.left,
    this.isParent = false,
    this.firstYear = 100,
    this.lastYear = 100,
    required this.controller,
    required this.onChanged,
  });

  final DateTime? dateTime;
  final String? title;
  final String? forwardTitle;
  final String? backTitle;
  final bool isRequired;
  final bool isParent;
  final String? hintText;
  final double? width;
  final int errorMaxLines;
  final TextInputAction inputAction;
  final TextAlign textAlign;
  final FormControl<String> controller;
  final Function(DateTime?) onChanged;
  final int firstYear;
  final int lastYear;

  ///
  @override
  Widget build(BuildContext context) {
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
            key: Key(controller.value.toString()),
            readOnly: true,
            formControl: controller,
            style: const TextStyle(fontSize: 12),
            textAlign: textAlign,
            textInputAction: inputAction,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: hintText,
              hintStyle: const TextStyle(fontSize: 12),
              suffixIcon: isRequired
                  ? const Icon(Icons.calendar_month)
                  : DeletableIcons(
                      controller: controller,
                      onChanged: onChanged,
                    ),
              errorMaxLines: errorMaxLines,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              enabledBorder: _boderStyle(),
              focusedBorder: _boderStyle(),
              errorBorder: _boderStyle(borderColor: Colors.red),
              focusedErrorBorder: _boderStyle(borderColor: Colors.red),
              errorStyle: const TextStyle(fontSize: 12),
            ),
            validationMessages: ValidateTextFieldType.date.validationMessage,
            onTap: (_) {
              Future.microtask(() => _showPicker(context));
            },
          ),
        ),
      ],
    );
  }

  ///
  Future<void> _showPicker(BuildContext context) async {
    final now = DateTime.now();
    final initialDate = isParent
        ? dateTime ?? DateTime(now.year - 30, now.month)
        : dateTime ?? now;
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: now.add(Duration(days: -365 * firstYear)),
      lastDate: now.add(Duration(days: 365 * lastYear)),
    );
    if (pickedDate == null) {
      return;
    }

    onChanged(pickedDate);
  }

  ///
  Widget _title({
    required bool isRequired,
    String? title,
    String? forwardTitle,
    String? backTitle,
  }) {
    if (title != null) {
      return FieldTitle(title: title, isRequired: isRequired);
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
  OutlineInputBorder _boderStyle({
    Color borderColor = Colors.black,
  }) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
        width: 1.5,
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }
}

//---------------------------------------//

class DeletableIcons extends StatefulWidget {
  const DeletableIcons({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  final FormControl<String> controller;
  final Function(DateTime?) onChanged;

  @override
  State<DeletableIcons> createState() => _DeletableIconsState();
}

class _DeletableIconsState extends State<DeletableIcons> {
  ///
  @override
  Widget build(BuildContext context) {
    return widget.controller.value == ''
        ? Icon(
            Icons.calendar_month_outlined,
            color: Colors.black.withOpacity(0.8),
          )
        : GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => setState(() {
              widget.controller.value = '';
              widget.onChanged(null);
            }),
            child: Icon(
              Icons.clear_rounded,
              color: Colors.black.withOpacity(0.8),
            ),
          );
  }
}

//---------------------------------------//

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

//---------------------------------------//

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
