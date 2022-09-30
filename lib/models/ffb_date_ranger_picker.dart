import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class DRP extends StatelessWidget {
  const DRP({
    Key? key,
    required GlobalKey<FormBuilderState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormBuilderState> _formKey;
  void _onChanged(dynamic val) => debugPrint(val.toString());

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateRangePicker(
      name: 'date_range',
      firstDate: DateTime(1970),
      lastDate: DateTime(2030),
      format: DateFormat('yyyy-MM-dd'),
      onChanged: _onChanged,
      decoration: InputDecoration(
        labelText: 'เลือกวันเช็คอิน - เช็คเอาท์',
        hintText: 'Hint text',
        suffixIcon: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            _formKey.currentState!.fields['date_range']?.didChange(null);
          },
        ),
      ),
    );
  }
}
