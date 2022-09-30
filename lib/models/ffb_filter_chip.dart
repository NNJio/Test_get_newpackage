import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FilterChips extends StatelessWidget {
  void _onChanged(dynamic val) => debugPrint(val.toString());
  const FilterChips({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderFilterChip<String>(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(labelText: 'The language of my people'),
      name: 'languages_filter',
      selectedColor: Colors.red,
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
      // validator: FormBuilderValidators.compose([
      //   FormBuilderValidators.minLength(1),
      //   FormBuilderValidators.maxLength(3),
      // ]),
    );
  }
}
