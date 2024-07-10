import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widgets_memory_test/constants.dart';
import 'package:flutter_widgets_memory_test/cubits/cubit/widgets_cubit.dart';

class CustomButton extends StatelessWidget {
  final TextEditingController controller;
  const CustomButton({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<WidgetsCubit>(context).addWidget(
          value: controller.text,
        );
        controller.clear();
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: kSecondayColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(),
        ),
        child: const Text(
          'Guess',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
