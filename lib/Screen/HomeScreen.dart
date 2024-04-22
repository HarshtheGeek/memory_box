import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:memory_box/Screen/GamifiedTraining.dart';
import 'package:memory_box/Screen/ToDolist.dart';
import 'package:memory_box/Screen/dosagetracker.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key); // Fix the syntax here

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
                          'Hey Rhea!',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 135,),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.black,
                          backgroundImage: AssetImage("assets/rhea.png"),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2,),
                      child: Align( // Align the text to the left
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Welcome Back',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
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
                            Color(0xFF432C81),
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
                                  "Welcome to Memory Box",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Image.asset('assets/Homepagegirl.png')),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFFFF1679),
                                  Color(0xFFFF770B),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Column(
                                children: [
                                  Image.asset('assets/brain.png'),
                                  SizedBox(height: 3,),
                                  TextButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GamifiedTraining()));
                                  }, child: Text("Gamified memory",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF16FF6A),
                                  Color(0xFF0090A5),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Column(
                                children: [
                                  Image.asset('assets/track.png'),
                                  SizedBox(height: 3,),
                                  TextButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DosageTracker()));
                                  }, child: Text("Dosage Tracker",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF0674F0),
                                  Color(0xFF24F3D2),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 9.0),
                              child: Column(
                                children: [
                                  Image.asset('assets/rocket.png'),
                                  TextButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Todolist()));
                                  }, child: Text("Task Scheduler",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF8E2BD1),
                                  Color(0xFFFF0070),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                children: [
                                  Image.asset('assets/person.png'),
                                  SizedBox(height: 3,),
                                  TextButton(onPressed: (){}, child: Text("Your Profile",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFFFAFF00),
                                  Color(0xFFFC0389),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 13.0),
                              child: Column(
                                children: [
                                  Image.asset('assets/local.png'),
                                  SizedBox(height: 1,),
                                  TextButton(onPressed: (){}, child: Text("My location",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF000428),
                                  Color(0xFF0090A5),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 9.0),
                              child: Column(
                                children: [
                                  Image.asset('assets/rocket.png'),
                                  TextButton(onPressed: (){}, child: Text("Video call",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Recommended Games",style: TextStyle(color: Colors.black),),
                    SizedBox(height: 10,),
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
                            Color(0xFF432C81),
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
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Image.asset('assets/brainsaga.png')),
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
                            Color(0xFF432C81),
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
                                  "Add location",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Image.asset('assets/googlemap.png',scale: 3,)),
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
