import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_get_package/models/ffb_slider.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import '../models/ffb_checkbox.dart';
import '../models/ffb_date_ranger_picker.dart';
import '../models/ffb_date_time_picker.dart';
import '../models/ffb_dropdown.dart';
import '../models/ffb_radio_group.dart';
import '../models/ffb_segmented_control.dart';
import '../models/ffb_text_field.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormBuilderState>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Builder Example')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            DTP(formKey: _formKey),
            DRP(formKey: _formKey),
            FFBSlider(),
            FFBCheckbox(),
            FFBTextField(formKey: _formKey),
            FFBDropDown(formKey: _formKey),
            RadioGroup(),
            SegmentedControl(),

            
  

            

          ]),
        ),
      ),
    );
  }
}

