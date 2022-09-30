import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RangSlider extends StatelessWidget {
  void _onChanged(dynamic val) => debugPrint(val.toString());
  const RangSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderRangeSlider(
      name: 'range_slider',
      // validator: FormBuilderValidators.compose([FormBuilderValidators.min(context, 6)]),
      onChanged: _onChanged,
      min: 0.0,
      max: 100.0,
      initialValue: const RangeValues(4, 7),
      divisions: 20,
      activeColor: Colors.red,
      inactiveColor: Colors.pink[100],
      decoration: const InputDecoration(labelText: 'Price Range'),
    );
  }
}
