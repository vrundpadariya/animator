import 'package:animator/app/views/homepage/model/json/model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class detail extends StatelessWidget {
  const detail({super.key});

  @override
  Widget build(BuildContext context) {
    AllData alldata = ModalRoute.of(context)?.settings.arguments as AllData;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "lib/app/assets/home.png",
            ),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          height: 100,
                          width: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white, width: 3.5),
                              color: Colors.black,
                            ),
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(alldata.image),
                      )),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        alldata.name,
                        style: const TextStyle(
                          fontFamily: "appbar",
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("lib/app/assets/moon.png"),
                              ),
                            ),
                          ),
                          Text(
                            alldata.moon,
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: "content",
                              fontSize: 25,
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("lib/app/assets/sky.png"),
                              ),
                            ),
                          ),
                          Text(
                            alldata.revolution,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "content",
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "lib/app/assets/thermometer.png"),
                              ),
                            ),
                          ),
                          Text(
                            alldata.temperature,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "content",
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        alldata.content,
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "content",
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 175,
                        decoration: BoxDecoration(
                            color: Color(
                              int.parse(
                                alldata.color,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        child: GestureDetector(
                          onTap: () {
                            launchUrl(
                              Uri.parse('${alldata.source}'),
                            );
                          },
                          child: Text(
                            "Explore more",
                            style: TextStyle(
                                fontFamily: "content",
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ],
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
