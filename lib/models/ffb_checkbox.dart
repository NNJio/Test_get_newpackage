import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:form_builder_validators/form_builder_validators.dart';

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
              text: 'ฉันได้อ่านและยอมรับ ',
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: 'ข้อกำหนดและเงื่อนไข',
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
      // validator: FormBuilderValidators.equal(
      //   true,
      //   errorText: 'You must accept terms and conditions to continue',
      // ),
    );
  }
}
