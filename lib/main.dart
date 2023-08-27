import 'package:flutter/material.dart';

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

class WidgetLibraryApp extends StatelessWidget {
  const WidgetLibraryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text('WidgetLibraryApp'),
          ),
        ],
      ),
    );
  }
}
