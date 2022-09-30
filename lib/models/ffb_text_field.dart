import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FFBTextField extends StatelessWidget {
  const FFBTextField({
    Key? key,
    required GlobalKey<FormBuilderState> formKey,
  }) : _formKey = formKey, super(key: key);

  final GlobalKey<FormBuilderState> _formKey;

  @override
  Widget build(BuildContext context) {
    return     FormBuilder(
        key: _formKey,
        child:  FormBuilderTextField(
            name: 'text',
            onChanged: (val) {
                print(val); // Print the text value write into TextField
            },
        ),
    );
  }
}