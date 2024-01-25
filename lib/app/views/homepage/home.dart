import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model/json/model.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "lib/app/assets/home.png",
            ),
          ),
        ),
        child: Scaffold(
          backgroundColor: const Color(0x00000000),
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.red,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 15,
                child: FutureBuilder(
                  future: rootBundle.loadString("planet.json"),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text("${snapshot.error}"),
                      );
                    } else if (snapshot.hasData) {
                      List decodedData = jsonDecode(snapshot.data!);
                      List<AllData> allData = decodedData
                          .map((e) => AllData.fromjson(data: e))
                          .toList();
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: allData.length,
                        itemBuilder: (context, i) => Column(
                          children: [
                            SizedBox(
                              height: 120,
                            ),
                            Container(
                              padding: EdgeInsets.zero,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 600,
                                    width: 500,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              const Alignment(-0.6, -0.5),
                                          child: Container(
                                            alignment: Alignment.bottomCenter,
                                            height: 400,
                                            width: 400,
                                            child: Container(
                                              height: 300,
                                              width: 400,
                                              color: Color(
                                                  int.parse(allData[i].color)),
                                              child: Column(
                                                children: [
                                                  const SizedBox(
                                                    height: 100,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment(-0.8, 0),
                                                    child: Text(
                                                      allData[i].name,
                                                      style: GoogleFonts
                                                          .albertSans(
                                                              fontSize: 30),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text(
                                                    allData[i].home,
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 15,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(-1.15, -0.8),
                                          child: Container(
                                            height: 250,
                                            width: 250,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    "${allData[i].image}"),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(-0.05, 0.55),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 4),
                                                color: Color(int.parse(
                                                    allData[i].color)),
                                              ),
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 35,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
