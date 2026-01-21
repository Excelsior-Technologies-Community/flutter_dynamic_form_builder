import 'package:flutter/material.dart';


class DynamicFormController {
  final Map<String, dynamic> values = {};


  void setValue(String key, dynamic value) {
    values[key] = value;
  }


  dynamic getValue(String key) => values[key];


  Map<String, dynamic> getAllValues() => values;
}