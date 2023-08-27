import 'package:flutter/material.dart';
import 'package:widget_library_app/w_widget_list.dart';

class WidgetLibraryApp extends StatelessWidget {
  const WidgetLibraryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const WidgetList(),
    );
  }
}
