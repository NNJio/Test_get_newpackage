import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CheckBoxGroup extends StatelessWidget {
  void _onChanged(dynamic val) => debugPrint(val.toString());
  const CheckBoxGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderCheckboxGroup<String>(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(labelText: 'The language of my people'),
      name: 'languages',
      options: const [
        FormBuilderFieldOption(value: 'Dart'),
        FormBuilderFieldOption(value: 'Kotlin'),
        FormBuilderFieldOption(value: 'Java'),
        FormBuilderFieldOption(value: 'Swift'),
        FormBuilderFieldOption(value: 'Objective-C'),
      ],
      onChanged: _onChanged,
    );
  }
}
