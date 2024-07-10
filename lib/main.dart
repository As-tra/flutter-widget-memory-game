import 'package:flutter/material.dart';
import 'package:flutter_widgets_memory_test/constants.dart';
import 'package:flutter_widgets_memory_test/views/home_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FlutterWidgetsMemoryGame());
}

class FlutterWidgetsMemoryGame extends StatelessWidget {
  const FlutterWidgetsMemoryGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
      theme: ThemeData(fontFamily: kfontFamily),
    );
  }
}
