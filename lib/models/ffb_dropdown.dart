import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FFBDropDown extends StatelessWidget {
  FFBDropDown({
    Key? key,
    required GlobalKey<FormBuilderState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormBuilderState> _formKey;
  List<String> genderOptions = ['Male', 'Female', 'Other'];

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown<String>(
      name: 'gender',
      decoration: InputDecoration(
        labelText: 'Gender',
        suffix: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            _formKey.currentState!.fields['gender']?.reset();
          },
        ),
        hintText: 'Select Gender',
      ),
      items: genderOptions
          .map((gender) => DropdownMenuItem(
                alignment: AlignmentDirectional.center,
                value: gender,
                child: Text(gender),
              ))
          .toList(),
    );
  }
}
