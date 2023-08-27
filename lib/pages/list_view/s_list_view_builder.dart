import 'package:flutter/material.dart';

class ListViewBuilderApp extends StatefulWidget {
  const ListViewBuilderApp({super.key});

  @override
  State<ListViewBuilderApp> createState() => _ListViewBuilderAppState();
}

class _ListViewBuilderAppState extends State<ListViewBuilderApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return const Card(
            child: Text('테스트'),
          );
        },
      ),
    );
  }
}
