import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../component/validate_date_pick_text_field/widget.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/widget.dart';
import 'notifier.dart';
import 'state.dart';

//---------------------------------------//

class ChildInputPage extends ConsumerWidget {
  const ChildInputPage({super.key});

  ///
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(childInputStateProvider);
    final notifier = ref.watch(childInputStateProvider.notifier);

    final form = FormGroup({
      ValidateTextFieldType.nickname.name: state.nameController!,
      ValidateTextFieldType.date.name: state.birthdayController!,
    });

    final scrollController = ScrollController();

    return Scaffold(
      body: ReactiveForm(
        formGroup: form,
        child: SingleChildScrollView(
          controller: scrollController,
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              const SizedBox(height: 24),
              _buildNameField(
                notifier,
                state.nameController!,
              ),
              const SizedBox(height: 16),
              _buildBirthdayField(
                context,
                state,
                notifier,
                state.birthdayController!,
              ),
              const SizedBox(height: 32),
              _buildRegisterArea(
                context,
                state,
                notifier,
                form,
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///
  Widget _buildNameField(
    ChildInputNotifier notifier,
    FormControl<String> controller,
  ) {
    return ValidateTextField(
      type: ValidateTextFieldType.nickname,
      title: '名前（ニックネーム）',
      isRequired: true,
      controller: controller,
      onChanged: notifier.onChangedNameField,
    );
  }

  ///
  Widget _buildBirthdayField(
    BuildContext context,
    ChildInputState state,
    ChildInputNotifier notifier,
    FormControl<String> controller,
  ) {
    return ValidateDatePickTextField(
      state.inputData.birthday,
      title: '生年月日',
      isRequired: true,
      controller: controller,
      lastYear: DateTime.now().year,
      onChanged: notifier.onChangedDateField,
    );
  }

  ///
  Widget _buildRegisterArea(
    BuildContext context,
    ChildInputState state,
    ChildInputNotifier notifier,
    FormGroup form,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            form.markAllAsTouched();

            if (!form.valid) {
              return;
            }
          },
          icon: const Icon(Icons.input),
        ),
      ],
    );
  }
}
