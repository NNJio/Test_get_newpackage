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
      decoration: const InputDecoration(labelText: 'เลือกยี้ห้อการ์ดจอที่คุณต้องการ'),
      name: 'languages_filter',
      selectedColor: Color(0xFFe9c46a),
      options: const [
        FormBuilderChipOption(
          value: 'GIGABYTE',
          avatar: CircleAvatar(child: Text('G')),
        ),
        FormBuilderChipOption(
          value: 'MSI',
          avatar: CircleAvatar(child: Text('M')),
        ),
        FormBuilderChipOption(
          value: 'GALAX',
          avatar: CircleAvatar(child: Text('G')),
        ),
        FormBuilderChipOption(
          value: 'INNO3D',
          avatar: CircleAvatar(child: Text('I')),
        ),
        FormBuilderChipOption(
          value: 'ASUS',
          avatar: CircleAvatar(child: Text('A')),
        ),
        FormBuilderChipOption(
          value: 'ZOTAC',
          avatar: CircleAvatar(child: Text('Z')),
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
