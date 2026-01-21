class DynamicFormField {
  final String type;
  final String label;
  final String keyName;
  final bool required;
  final List<dynamic>? options;


  DynamicFormField({
    required this.type,
    required this.label,
    required this.keyName,
    this.required = false,
    this.options,
  });


  factory DynamicFormField.fromMap(Map<String, dynamic> map) {
    return DynamicFormField(
      type: map['type'],
      label: map['label'],
      keyName: map['key'],
      required: map['required'] ?? false,
      options: map['options'],
    );
  }
}