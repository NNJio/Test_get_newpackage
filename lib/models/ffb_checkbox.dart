import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FFBCheckbox extends StatelessWidget {
  const FFBCheckbox({
    Key? key,
  }) : super(key: key);
  void _onChanged(dynamic val) => debugPrint(val.toString());

  @override
  Widget build(BuildContext context) {
    return FormBuilderCheckbox(
              name: 'accept_terms',
              initialValue: false,
              onChanged: _onChanged,
              title: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'I have read and agree to the ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Terms and Conditions',
                      style: TextStyle(color: Colors.blue),
                      // Flutter doesn't allow a button inside a button
                      // https://github.com/flutter/flutter/issues/31437#issuecomment-492411086
                      /*
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('launch url');
                        },
                      */
                    ),
                  ],
                ),
              ),
              validator: FormBuilderValidators.equal(
                true,
                errorText:
                    'You must accept terms and conditions to continue',
              ),
            );
  }
}