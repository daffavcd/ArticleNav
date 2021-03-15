import 'dart:js';

import 'package:flutter/material.dart';
import 'package:jobsheet6/pages/homePages.dart';
import 'package:jobsheet6/pages/itemPages.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePages(),
      '/item': (context) => ItemPages(),
    },
  ));
}
