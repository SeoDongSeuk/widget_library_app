import 'package:flutter/material.dart';

class WidgetList extends StatelessWidget {
  const WidgetList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Center(
            child: Text(
              '테스트',
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