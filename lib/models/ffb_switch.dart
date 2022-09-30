import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FFBSwitch extends StatelessWidget {
  void _onChanged(dynamic val) => debugPrint(val.toString());
  const FFBSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderSwitch(
      title: const Text('ฉันยอมรับข้อกำหนดและเงื่อนไขต่างๆ'),
      name: 'accept_terms_switch',
      initialValue: true,
      onChanged: _onChanged,
    );
  }
}
