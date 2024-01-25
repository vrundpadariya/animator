import 'package:flutter/material.dart';

import 'app/views/homepage/home.dart';

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
