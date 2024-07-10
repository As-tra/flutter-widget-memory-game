import 'package:flutter/material.dart';
import 'package:flutter_widgets_memory_test/widgets/credit_widget.dart';
import 'package:flutter_widgets_memory_test/widgets/custom_text_count.dart';
import 'package:flutter_widgets_memory_test/widgets/custom_text_field.dart';
import 'package:flutter_widgets_memory_test/widgets/custom_text_widget.dart';
import 'package:flutter_widgets_memory_test/widgets/widgets_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 50,
        ),
        CustomTextWidget(
          text: 'Flutter Memory Widgets Game 🤍',
          size: 32,
        ),
        SizedBox(
          height: 25,
        ),
        CustomTextWidget(
          text: 'How many Flutter widgets you could remember ?',
          size: 22,
        ),
        CustomCountText(),
        SizedBox(
          height: 10,
        ),
        CustomTextField(),
        SizedBox(
          height: 15,
        ),
        WidgetListView(),
        CreditWidget(),
      ],
    );
  }
}
