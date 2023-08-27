import 'package:flutter/material.dart';

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
