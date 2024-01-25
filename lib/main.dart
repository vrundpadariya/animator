import 'package:flutter/material.dart';

import 'app/views/detail/detail.dart';
import 'app/views/homepage/home.dart';
import 'app/views/one_time_intro screen/intro page.dart';
import 'app/views/splash_screen/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => SplashScreen(),
        'intr': (ctx) => intro(),
        'home': (ctx) => home(),
        'Detail': (ctx) => detail(),
      },
    ),
  );
}
