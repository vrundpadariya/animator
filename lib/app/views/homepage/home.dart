import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'model/json/model.dart';

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
          body: FutureBuilder(
            future: rootBundle.loadString("planet.json"),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text("${snapshot.error}"),
                );
              } else if (snapshot.hasData) {
                var decodedData = jsonDecode(snapshot.data!);
                List allData =
                    decodedData.map((e) => AllData.fromjson(data: e)).toList();
                return ListView.builder(
                  itemCount: allData.length,
                  itemBuilder: (context, i) => Stack(
                    children: [
                      SizedBox(
                        height: 600,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment(-0.6, -0.5),
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                height: 400,
                                width: 400,
                                color: Colors.white,
                                child: Container(
                                  height: 300,
                                  width: 400,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.9, -0.7),
                              child: Container(
                                height: 150,
                                width: 150,
                                color: Colors.blue,
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, 0.55),
                              child: Container(
                                height: 60,
                                width: 60,
                                color: Colors.blue,
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
      ),
    );
  }
}
//Container(
//                 alignment: Alignment.center,
//                 height: 600,
//                 width: double.infinity,
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                     fit: BoxFit.contain,
//                     image: AssetImage("lib/app/assets/planet.png"),
//                   ),
//                 ),
//                 child: Align(
//                   alignment: const Alignment(0.1, 0),
//                   child: Container(
//                     height: 150,
//                     width: 150,
//                     decoration: const BoxDecoration(
//                       image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: AssetImage(
//                           "lib/app/assets/Sun.png",
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//second
// Container(
//                 height: 600,
//                 width: double.infinity,
//                 color: Colors.red,
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 80,
//                     ),
//                     Container(
//                       height: 60,
//                       width: 60,
//                       color: Colors.blue,
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Container(
//                           height: 60,
//                           width: 60,
//                           color: Colors.blue,
//                         ),
//                         Container(
//                           height: 60,
//                           width: 60,
//                           color: Colors.blue,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//final
// Column(
//             children: [
//               Container(
//                 height: 100,
//                 width: double.infinity,
//                 child: Row(
//                   children: [
//                     const SizedBox(
//                       width: 5,
//                     ),
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: const BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage("lib/app/assets/drawer.png"),
//                         ),
//                       ),
//                     ),
//                     const Text(
//                       "Solar System",
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               Stack(
//                 children: [
//                   Container(
//                     height: 600,
//                     width: double.infinity,
//                     child: Stack(
//                       children: [
//                         Align(
//                           alignment: Alignment(0, -0.8),
//                           child: Container(
//                             height: 60,
//                             width: 60,
//                             color: Colors.blue,
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment(-0.6, -0.5),
//                           child: Container(
//                             height: 60,
//                             width: 60,
//                             color: Colors.white,
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment(0.6, -0.5),
//                           child: Container(
//                             height: 60,
//                             width: 60,
//                             color: Colors.grey,
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment(-0.9, -0.1),
//                           child: Container(
//                             height: 60,
//                             width: 60,
//                             color: Colors.yellowAccent,
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment(0, -0.1),
//                           child: Container(
//                             height: 100,
//                             width: 100,
//                             color: Colors.blue,
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment(0.9, -0.1),
//                           child: Container(
//                             height: 60,
//                             width: 60,
//                             color: Colors.green,
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment(0.6, 0.3),
//                           child: Container(
//                             height: 60,
//                             width: 60,
//                             color: Colors.tealAccent,
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment(-0.6, 0.3),
//                           child: Container(
//                             height: 60,
//                             width: 60,
//                             color: Colors.purple,
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment(0, 0.6),
//                           child: Container(
//                             height: 60,
//                             width: 60,
//                             color: Colors.blue,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
