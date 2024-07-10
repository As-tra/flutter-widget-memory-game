import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widgets_memory_test/cubits/cubit/widgets_cubit.dart';

class CustomCountText extends StatelessWidget {
  const CustomCountText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WidgetsCubit, WidgetsState>(
      builder: (context, state) {
        return Text(
          'There are ${BlocProvider.of<WidgetsCubit>(context).widgetsNames.length} in rest',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        );
      },
    );
  }
}
