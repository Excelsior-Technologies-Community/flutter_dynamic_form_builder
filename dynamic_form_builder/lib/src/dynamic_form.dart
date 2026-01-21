import 'package:flutter/material.dart';
import 'form_models.dart';
import 'form_controller.dart';
import 'form_field_factory.dart';


class DynamicForm extends StatelessWidget {
  final List<Map<String, dynamic>> json;
  final DynamicFormController controller;
  final VoidCallback onSubmit;


  DynamicForm({
    super.key,
    required this.json,
    required this.controller,
    required this.onSubmit,
  });


  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    final fields = json.map((e) => DynamicFormField.fromMap(e)).toList();


    return Form(
      key: _formKey,
      child: Column(
        children: [
          ...fields.map(
                (f) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: FormFieldFactory.buildField(f, controller),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                onSubmit();
              }
            },
            child: const Text('Submit'),
          )
        ],
      ),
    );
  }
}