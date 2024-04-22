import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GamifiedTraining extends StatefulWidget {
  const GamifiedTraining({super.key});

  @override
  State<GamifiedTraining> createState() => _GamifiedTrainingState();
}

class _GamifiedTrainingState extends State<GamifiedTraining> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900,
        width: 800,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFCE9FFC),
              Color(0xFF7367F0),
            ],
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 50),
              child: Align( // Align the text to the left
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Gamified Training',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 110,),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.black,
                          backgroundImage: AssetImage("assets/rhea.png"),
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 200,
                      width: 400,
                      margin: EdgeInsets.only(right: 15,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFFDB4437),
                            Color(0xFF0E091B),
                          ],
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  "Personalized",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Image.asset('assets/Brainp.png',scale: 5,)),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 200,
                      width: 400,
                      margin: EdgeInsets.only(right: 15,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFFF4B400),
                            Color(0xFF0E091B),
                          ],
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  "Concentration saga",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Image.asset('assets/targetp.png',scale: 5,)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 200,
                      width: 400,
                      margin: EdgeInsets.only(right: 15,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF0F9D58),
                            Color(0xFF0E091B),
                          ],
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  "Memory master",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Image.asset('assets/shotp.png',scale: 5,)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 200,
                      width: 400,
                      margin: EdgeInsets.only(right: 15,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF4285F4),
                            Color(0xFF0E091B),
                          ],
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  "Brain Buster",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Image.asset('assets/bulbbuster.png',scale: 5,)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF432C81), // Change this to your desired start color
              Color(0xFF0E091B), // Change this to your desired end color
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 1),
          child: GNav(
            backgroundColor: Colors.transparent,
            gap: 8,
            tabs: [
              GButton(
                icon: Icons.home,
                iconColor: Colors.white,
                iconActiveColor: Colors.white,
                text: "Home",
                textStyle: TextStyle(color: Colors.white),
              ),
              GButton(
                icon: Icons.location_city,
                iconColor: Colors.white,
                iconActiveColor: Colors.white,
                text: "Location",
                textStyle: TextStyle(color: Colors.white),
              ),
              GButton(
                icon: Icons.person,
                iconColor: Colors.white,
                iconActiveColor: Colors.white,
                text: "Profile",
                textStyle: TextStyle(color: Colors.white),
              ),
              GButton(
                icon: Icons.settings,
                iconColor: Colors.white,
                iconActiveColor: Colors.white,
                text: "Settings",
                textStyle: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
