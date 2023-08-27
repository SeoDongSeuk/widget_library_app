import 'package:flutter/material.dart';
import 'package:widget_library_app/pages/list_view/s_list_view_builder.dart';

class WidgetList extends StatelessWidget {
  const WidgetList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ListViewBuilderApp(),
              ),
            );
          },
          child: const Center(
            child: Text(
              'ListView.builder 화면',
              style: TextStyle(
                fontSize: 20,
                color: Colors.amber,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
