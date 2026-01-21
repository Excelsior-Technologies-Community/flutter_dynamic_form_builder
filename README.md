## flutter_dynamic_form
```
A dynamic form builder for Flutter that generates form UI at runtime using JSON / Map configuration.

This package helps you build flexible, backend‑driven forms without hard‑coding UI fields.
```
## ✨ Features

📄 Build forms from JSON / Map

🔁 No hard‑coded UI

🧩 Supports multiple field types

✅ Built‑in validation support

🎨 Respects app theme (Material / Material 3)

♻️ Reusable & production‑ready

📦 Clean public‑library architecture

## Preview

https://github.com/user-attachments/assets/edbdb5fa-82e9-4285-b375-521e4594a7b9



## 📦 Installation
Add this to your pubspec.yaml:
```
dependencies:
flutter_dynamic_form: ^0.0.1
```
Then run:
```
flutter pub get
```
## 🚀 Basic Usage
Import package
```
import 'package:flutter_dynamic_form/flutter_dynamic_form.dart';
```
Define JSON / Map configuration
```
final List<Map<String, dynamic>> formJson = [
{
"type": "text",
"label": "Full Name",
"key": "name",
"required": true
},
{
"type": "email",
"label": "Email Address",
"key": "email",
"required": true
},
{
"type": "dropdown",
"label": "Gender",
"key": "gender",
"options": ["Male", "Female", "Other"]
}
];
```
Create controller
```
final DynamicFormController controller = DynamicFormController();
```
Build the form
```
DynamicForm(
json: formJson,
controller: controller,
onSubmit: () {
final data = controller.getAllValues();
print(data);
},
);
```

## 📁 Package Structure
```
flutter_dynamic_form/
├── lib/
│ ├── flutter_dynamic_form.dart
│ └── src/
│ ├── dynamic_form.dart
│ ├── form_controller.dart
│ ├── form_models.dart
│ └── form_field_factory.dart
├── example/
│ └── lib/main.dart
├── README.md
├── LICENSE
└── pubspec.yaml
```
## 📄 License
```
MIT License

Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
