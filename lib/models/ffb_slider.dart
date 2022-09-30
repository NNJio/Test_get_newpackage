import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FFBSlider extends StatelessWidget {
  const FFBSlider({
    Key? key,
  }) : super(key: key);
  void _onChanged(dynamic val) => debugPrint(val.toString());
  @override
  Widget build(BuildContext context) {
    return FormBuilderSlider(
      name: 'slider',
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.min(6),
      ]),
      onChanged: _onChanged,
      min: 0.0,
      max: 10.0,
      initialValue: 7.0,
      divisions: 20,
      activeColor: Colors.red,
      inactiveColor: Colors.pink[100],
      decoration: const InputDecoration(
        labelText: 'Number of things',
      ),
    );
  }
}
