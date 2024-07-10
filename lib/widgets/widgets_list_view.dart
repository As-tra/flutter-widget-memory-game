import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widgets_memory_test/cubits/cubit/widgets_cubit.dart';
import 'package:flutter_widgets_memory_test/utils/get_width.dart';
import 'package:flutter_widgets_memory_test/widgets/custom_widget_item.dart';

class WidgetListView extends StatelessWidget {
  const WidgetListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WidgetsCubit, WidgetsState>(
      builder: (context, state) {
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal:
                    (MediaQuery.of(context).size.width - getWidth(context)) /
                        2),
            child: ListView.builder(
              itemCount:
                  BlocProvider.of<WidgetsCubit>(context).guessedWidgets.length,
              itemBuilder: (context, index) {
                return CustomWidgetItem(
                  index: index + 1,
                  widgetName: BlocProvider.of<WidgetsCubit>(context)
                      .guessedWidgets[index],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
