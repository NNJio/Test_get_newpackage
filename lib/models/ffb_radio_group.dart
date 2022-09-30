import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class RadioGroup extends StatelessWidget {
  const RadioGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderRadioGroup(
      decoration: InputDecoration(labelText: 'วันนี้ทานอะไรดีน้า'),
      name: 'my',
      validator: FormBuilderValidators.required(),
      options: ['ส้มตำ', 'กระเพรา', 'ต้มยำ', 'ก๋วยเตี๋ยว', 'หมูกระเทียม', 'ไม่ทานลดความอ้วน']
          .map((lang) => FormBuilderFieldOption(value: lang))
          .toList(growable: false),
    );
  }
}
