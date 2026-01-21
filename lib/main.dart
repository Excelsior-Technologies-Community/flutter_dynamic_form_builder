import 'package:flutter/material.dart';
import 'flutter_dynamic_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dynamic Form Demo',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const DynamicFormDemo(),
    );
  }
}

class DynamicFormDemo extends StatefulWidget {
  const DynamicFormDemo({super.key});

  @override
  State<DynamicFormDemo> createState() => _DynamicFormDemoState();
}

class _DynamicFormDemoState extends State<DynamicFormDemo> {
  final DynamicFormController _controller = DynamicFormController();

  final List<Map<String, dynamic>> formJson = [
    {"type": "text", "label": "Full Name", "key": "name", "required": true},
    {
      "type": "email",
      "label": "Email Address",
      "key": "email",
      "required": true,
    },
    {
      "type": "dropdown",
      "label": "Gender",
      "key": "gender",
      "options": ["Male", "Female", "Other"],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic Form Builder"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: DynamicForm(
            json: formJson,
            controller: _controller,
            onSubmit: () {
              final data = _controller.getAllValues();

              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: const Text("Form Data"),
                  content: Text(data.toString()),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("OK"),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
