import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widgets_memory_test/constants.dart';
import 'package:flutter_widgets_memory_test/cubits/cubit/widgets_cubit.dart';
import 'package:flutter_widgets_memory_test/widgets/custom_button.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .6,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              focusNode: _focusNode,
              onSubmitted: (value) {
                BlocProvider.of<WidgetsCubit>(context).addWidget(
                  value: value,
                );
                _controller.clear();
                _focusNode.requestFocus();
              },
              autofocus: true,
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Widget...',
                fillColor: kSecondayColor,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          CustomButton(
            controller: _controller,
          )
        ],
      ),
    );
  }
}
