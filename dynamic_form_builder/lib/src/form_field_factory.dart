import 'package:flutter/material.dart';
import 'form_models.dart';
import 'form_controller.dart';


class FormFieldFactory {
  static Widget buildField(
      DynamicFormField field,
      DynamicFormController controller,
      ) {
    switch (field.type) {
      case 'text':
        return TextFormField(
          decoration: InputDecoration(labelText: field.label),
          validator: field.required
              ? (v) => v == null || v.isEmpty ? 'Required' : null
              : null,
          onChanged: (v) => controller.setValue(field.keyName, v),
        );


      case 'email':
        return TextFormField(
          decoration: InputDecoration(labelText: field.label),
          keyboardType: TextInputType.emailAddress,
          onChanged: (v) => controller.setValue(field.keyName, v),
        );


      case 'dropdown':
        return DropdownButtonFormField(
          decoration: InputDecoration(labelText: field.label),
          items: field.options!
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
          onChanged: (v) => controller.setValue(field.keyName, v),
        );


      default:
        return const SizedBox();
    }
  }
}