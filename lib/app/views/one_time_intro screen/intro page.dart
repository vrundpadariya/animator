import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slider_button/slider_button.dart';

class intro extends StatelessWidget {
  const intro({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            Text(
              "Explore the Universe",
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 50),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Journey through the cosmos with\nour space app",
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            SliderButton(
              action: () async {
                Navigator.pushReplacementNamed(context, 'home');
                return false;
              },
              label: const Text("swiple to home"),
              icon: Image.asset("lib/app/assets/ds.png"),
              width: 200,
              radius: 50,
            ),
            Expanded(
              child: Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("lib/app/assets/intro.png"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
