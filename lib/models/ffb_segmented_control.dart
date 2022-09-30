import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';


class SegmentedControl extends StatelessWidget {
  const SegmentedControl({
    Key? key,
  }) : super(key: key);
  void _onChanged(dynamic val) => debugPrint(val.toString());
  @override
  Widget build(BuildContext context) {
    return FormBuilderSegmentedControl(
      decoration: const InputDecoration(
        labelText: 'ให้คะแนนความพอใจในการบริการ ( 5 = พอใจมาก )',
      ),
      name: 'movie_rating',
      options: List.generate(5, (i) => i + 1)
          .map((number) => FormBuilderFieldOption(
                value: number,
                child: Text(
                  number.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ))
          .toList(),
      onChanged: _onChanged,
    );
  }
}
