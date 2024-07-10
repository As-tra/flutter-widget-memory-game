import 'package:flutter/material.dart';

double getWidth(BuildContext context) {
    if (MediaQuery.of(context).size.width < 690) {
      return MediaQuery.of(context).size.width * .8;
    } else {
      return MediaQuery.of(context).size.width * .6;
    }
  }