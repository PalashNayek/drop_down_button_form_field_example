import 'package:drop_down_button_form_field_example/di/setup_locator.dart';
import 'package:drop_down_button_form_field_example/screens/dropdown_screen.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DropdownScreen(),
    );
  }
}
