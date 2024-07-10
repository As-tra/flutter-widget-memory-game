import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widgets_memory_test/constants.dart';
import 'package:flutter_widgets_memory_test/cubits/cubit/widgets_cubit.dart';
import 'package:flutter_widgets_memory_test/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kbgColor,
      body: BlocProvider(
        create: (context) => WidgetsCubit(),
        child:const  HomeViewBody(),
      ),
    );
  }
}
