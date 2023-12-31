import 'package:flutter/material.dart';
import 'package:widget_library_app/s_widget_library_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'widget_library_app',
      home: WidgetLibraryApp(),
    );
  }
}
