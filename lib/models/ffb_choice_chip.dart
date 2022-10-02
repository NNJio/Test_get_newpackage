import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ChoiceChips extends StatelessWidget {
  void _onChanged(dynamic val) => debugPrint(val.toString());
  const ChoiceChips({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderChoiceChip<String>(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
          labelText: 'กรุณาเลือกจังหวัดให้บริการ'),
      name: 'languages_choice',
      initialValue: 'Dart',
      selectedColor: const Color(0xFF2a9d8f),
      options: const [
        FormBuilderChipOption(
          value: 'กรุงเทพมหานคร',
        ),
        FormBuilderChipOption(
          value: 'สมุทรปราการ',
        ),
        FormBuilderChipOption(
          value: 'นนทบุรี',
        ),
        FormBuilderChipOption(
          value: 'ปทุมธานี',
        ),
        FormBuilderChipOption(
          value: 'สมุทรสาคร',
        ),
      ],
      onChanged: _onChanged,
    );
  }
}
