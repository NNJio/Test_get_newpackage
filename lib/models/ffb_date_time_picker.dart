import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class DTP extends StatelessWidget {
  const DTP({
    Key? key,
    required GlobalKey<FormBuilderState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormBuilderState> _formKey;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      name: 'date',
      initialEntryMode: DatePickerEntryMode.calendar,
      initialValue: DateTime.now(),
      inputType: InputType.both,
      decoration: InputDecoration(
        labelText: 'Select Date and Time',
        suffixIcon: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            _formKey.currentState!.fields['date']?.didChange(null);
          },
        ),
      ),
      initialTime: const TimeOfDay(hour: 8, minute: 0),
    );
  }
}
