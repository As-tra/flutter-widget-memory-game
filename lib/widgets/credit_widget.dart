
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CreditWidget extends StatelessWidget {
  const CreditWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Flutter Memory Widgets Game by ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        GestureDetector(
          onTap: () async {
            final Uri url = Uri.parse('https://github.com/As-tra');
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          child: const Text(
            'M.Assil',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
