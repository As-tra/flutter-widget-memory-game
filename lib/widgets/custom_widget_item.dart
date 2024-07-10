import 'package:flutter/material.dart';
import 'package:flutter_widgets_memory_test/constants.dart';

class CustomWidgetItem extends StatelessWidget {
  final int index;
  final String widgetName;
  const CustomWidgetItem(
      {super.key, required this.index, required this.widgetName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: kSecondayColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        '$index. $widgetName',
      ),
    );
  }
}
