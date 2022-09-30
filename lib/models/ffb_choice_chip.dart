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
          labelText: 'Ok, if I had to choose one language, it would be:'),
      name: 'languages_choice',
      initialValue: 'Dart',
      options: const [
        FormBuilderChipOption(
          value: 'Dart',
          avatar: CircleAvatar(child: Text('D')),
        ),
        FormBuilderChipOption(
          value: 'Kotlin',
          avatar: CircleAvatar(child: Text('K')),
        ),
        FormBuilderChipOption(
          value: 'Java',
          avatar: CircleAvatar(child: Text('J')),
        ),
        FormBuilderChipOption(
          value: 'Swift',
          avatar: CircleAvatar(child: Text('S')),
        ),
        FormBuilderChipOption(
          value: 'Objective-C',
          avatar: CircleAvatar(child: Text('O')),
        ),
      ],
      onChanged: _onChanged,
    );
  }
}
