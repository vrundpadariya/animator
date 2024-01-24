import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff890048),
              Color(0xff540048),
              Color(0xff000027),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Color(0x00000000),
          body: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/app/assets/drawer.png"),
                        ),
                      ),
                    ),
                    Text(
                      "Solar System",
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.center,
                height: 600,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("lib/app/assets/planet.png"),
                  ),
                ),
                child: Align(
                  alignment: const Alignment(0.1, 0),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "lib/app/assets/Sun.png",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
