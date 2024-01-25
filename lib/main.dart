import 'package:flutter/material.dart';

import 'app/views/homepage/home.dart';
import 'app/views/homepage/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => home(),
      },
    ),
  );
}
